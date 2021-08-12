package cn.kgc.servlet;

import java.io.IOException;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.kgc.bean.Args;
import cn.kgc.bean.Color;
import cn.kgc.bean.Connection;
import cn.kgc.bean.Page;
import cn.kgc.bean.ProductItem;
import cn.kgc.bean.Series;
import cn.kgc.bean.TotalProduct;
import cn.kgc.service.ArgsService;
import cn.kgc.service.ColorService;
import cn.kgc.service.ConnectionService;
import cn.kgc.service.ProductItemService;
import cn.kgc.service.SeriesService;
import cn.kgc.service.impl.ArgsServiceImpl;
import cn.kgc.service.impl.ColorServiceImpl;
import cn.kgc.service.impl.ConnectionServiceImpl;
import cn.kgc.service.impl.ProductItemServiceImpl;
import cn.kgc.service.impl.SeriesServiceImpl;

@WebServlet("/ConnectionServlet")
public class ConnectionServlet extends BaseServlet {

	private static final long serialVersionUID = 1L;
	private ConnectionService connectionService = new ConnectionServiceImpl();
	private ProductItemService itemService = new ProductItemServiceImpl();
	private ArgsService argsService = new ArgsServiceImpl();
	private ColorService colorService = new ColorServiceImpl();
	private SeriesService seriesService = new SeriesServiceImpl();

	protected void getProductId(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int argsId = 0;
		String argsIdString = request.getParameter("argsId");
		if (argsIdString != null) {
			argsId = Integer.parseInt(argsIdString);
		}
		int seriesId = 0;
		String seriesIdString = request.getParameter("seriesId");
		if (seriesIdString != null) {
			seriesId = Integer.parseInt(seriesIdString);
		}
		int colorId = 0;
		String colorIdString = request.getParameter("colorId");
		if (colorIdString != null) {
			colorId = Integer.parseInt(colorIdString);
		}
		int productId = connectionService.selectProductIdByArgsIdAndSeriesId(argsId, seriesId, colorId);
		request.setAttribute("productId", productId);
		request.getRequestDispatcher("").forward(request, response);
	}

	protected void selectAll(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<Connection> list = connectionService.selectAll();
		TotalProduct totalProduct = null;
		List<TotalProduct> listTotal = new ArrayList<TotalProduct>();
		for (Connection connection : list) {
			System.out.println(connection.getConnectionId());
			ProductItem productItem = itemService.selectById(connection.getProductId());
			Args args = argsService.selectById(connection.getArgsId());
			Series series = seriesService.queryById(connection.getSeriesId());
			Color color = colorService.queryById(connection.getColorId());
			System.out.println(productItem);

			totalProduct = new TotalProduct(connection.getConnectionId(), productItem.getProductName(),
					productItem.getImage(), productItem.getSales(), productItem.getStock(), args.getRam(),
					args.getPrice(), color.getColor(), color.getImage1(), color.getImage2(), color.getImage3(),
					color.getImage4(), series.getSeriesName(), connection.getCodeId());

			listTotal.add(totalProduct);
		}
		System.out.println(listTotal.toString());
		request.setAttribute("totalProduct", listTotal);
		request.getRequestDispatcher("/huaweihoutai/product-list.jsp").forward(request, response);
	}

	protected void delete(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 获取connectionId
		int connectionId = 0;
		String connectionIdString = request.getParameter("connectionId");
		if (connectionIdString != null) {
			connectionId = Integer.parseInt(connectionIdString);
		}
		// 通过connectionId获取其余id值
		Connection connection = connectionService.selectByConnectionId(connectionId);
		int productId = connection.getProductId();
		int argsId = connection.getArgsId();
		int seriesId = connection.getSeriesId();
		int colorId = connection.getColorId();
		// 根据各自id进行删除
		connectionService.delete(connectionId);
		boolean delete = itemService.delete(productId);
		boolean delete2 = argsService.delete(argsId);
		int deleteById = seriesService.deleteById(seriesId);
		int delete3 = colorService.delete(colorId);

		if (delete && delete2 && deleteById > 0 && delete3 > 0) {
			// 成功
			request.getRequestDispatcher("/ConnectionServlet?action=selectAll").forward(request, response);
		} else {
			// 失败
			request.getRequestDispatcher("").forward(request, response);
		}
	}

	protected void getConnection(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 获取connectionId
		int connectionId = 0;
		String connectionIdString = request.getParameter("connectionId");
		if (connectionIdString != null) {
			connectionId = Integer.parseInt(connectionIdString);
		}
		// 通过connectionId获取其余id值
		Connection connection = connectionService.selectByConnectionId(connectionId);
		int productId = connection.getProductId();
		int argsId = connection.getArgsId();
		int seriesId = connection.getSeriesId();
		int colorId = connection.getColorId();
		// 根据各自id查找
		ProductItem item = itemService.selectById(productId);
		Args args = argsService.selectById(argsId);
		Series series = seriesService.queryById(seriesId);
		Color color = colorService.queryById(colorId);
		// 存值
		request.setAttribute("item", item);
		request.setAttribute("args", args);
		request.setAttribute("series", series);
		request.setAttribute("color", color);
		request.setAttribute("connectionId", connectionId);
		// 跳转
		request.getRequestDispatcher("/huaweihoutai/product-edit.jsp").forward(request, response);
	}

	protected void update(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 获取文本框的值
		int connectionId = 0;
		String connectionIdString = request.getParameter("connectionId");
		if (connectionIdString != null) {
			connectionId = Integer.parseInt(connectionIdString);
		}
		System.out.println(connectionId);
		// 通过connectionId获取其余id值
		Connection connection = connectionService.selectByConnectionId(connectionId);
		System.out.println(connection);
		int productId = connection.getProductId();
		int argsId = connection.getArgsId();
		int seriesId = connection.getSeriesId();
		int colorId = connection.getColorId();

		// 根据各自id查找
		ProductItem item = itemService.selectById(productId);
		Args args = argsService.selectById(argsId);
		Series series = seriesService.queryById(seriesId);
		Color color = colorService.queryById(colorId);
		// 没有改变前名字，库存，价格的值
		String productName = item.getProductName();
		int stock = item.getStock();
		BigDecimal price = args.getPrice();
		// 获取有可能修改的值
		String pro = request.getParameter("productName");
		int sto = Integer.parseInt(request.getParameter("stock"));
		BigDecimal pri = new BigDecimal(request.getParameter("price"));
		// 判断文本框的值是否改变
		if (!productName.equals(pro) || stock != sto) {
			item.setProductName(pro);
			item.setStock(sto);
			boolean update = itemService.update(item);
		}
		if (price != pri) {
			args.setPrice(pri);
			boolean update = argsService.update(args);
		}
		request.getRequestDispatcher("/ConnectionServlet?action=selectAll").forward(request, response);
	}

	protected void selectConnectionIdByCodeId(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int codeId = 0;
		String codeIdString = request.getParameter("codeId");
		if (codeIdString != null) {
			codeId = Integer.parseInt(codeIdString);
		}
		Connection connection = connectionService.selectByCodeId(codeId);
		int connectionId = connection.getConnectionId();
		request.setAttribute("connectionId", connectionId);
		request.getRequestDispatcher("").forward(request, response);
	}

}
