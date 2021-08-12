package cn.kgc.servlet;

import java.io.IOException;
import java.math.BigDecimal;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import cn.kgc.bean.Args;
import cn.kgc.bean.Cart;
import cn.kgc.bean.CartItems;
import cn.kgc.bean.Color;
import cn.kgc.bean.Connection;
import cn.kgc.bean.ProductItem;
import cn.kgc.bean.Series;
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


/**
 * Servlet implementation class CartServlet
 */
@WebServlet("/CartServlet")
public class CartServlet extends BaseServlet {
	
	
	private static final long serialVersionUID = 1L;
	ConnectionService connectionService = new ConnectionServiceImpl();
	ProductItemService productItemService = new ProductItemServiceImpl();
	ArgsService argsService = new ArgsServiceImpl();
	SeriesService seriesService = new SeriesServiceImpl();
	ColorService colorService = new ColorServiceImpl();

	protected void AddItems(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Cart cart = (Cart) request.getSession().getAttribute("cart");
		if(cart==null) {
			cart = new Cart();
			
			request.getSession().setAttribute("cart",cart);
		}
		String parameter = request.getParameter("codeId");
		
		
			int code= Integer.parseInt(parameter);
		
		ProductItemService ProductItemService=new ProductItemServiceImpl();
		ProductItem productId = ProductItemService.selectBycodeId(code);
		
		ColorService   colorservice=new ColorServiceImpl();
		Color queryByCodeId = colorservice.queryByCodeId(code);
		
		ArgsService   argsservice=new ArgsServiceImpl();
		Args selectByCodeId = argsservice.selectByCodeId(code);
		
		SeriesService   seriesService=new SeriesServiceImpl();
		Series selectByCodeId2 = seriesService.selectByCodeId(code);
		
		Connection con = connectionService.selectConnectionByArgsIdAndSeriesId(productId.getProductId(), selectByCodeId.getArgsId(), selectByCodeId2.getSeriesId(),queryByCodeId.getColorId());
		ProductItem productItem = productItemService.selectById(con.getProductId());
		Args args = argsService.selectById(con.getColorId());
		Series series = seriesService.queryById(con.getSeriesId());
		Color color = colorService.queryById(con.getColorId());
		CartItems cartItems = new CartItems(productItem.getProductId(),productItem.getImage(),productItem.getProductName(),args.getPrice(),1,args.getPrice());
		cart.addItems(cartItems);
		System.out.println(cart);
		request.getRequestDispatcher("/vmall/cart.jsp").forward(request, response);
	
	}
	

	protected void delete(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Cart cart = (Cart) request.getSession().getAttribute("cart");
		if(cart==null) {
			cart = new Cart();
			request.getSession().setAttribute("cart",cart);
		}
		int id = 0;
		String idString = request.getParameter("id");
		if(idString!=null) {
			id = Integer.parseInt(idString);
		}
		cart.deleteCartItems(id);
		request.getRequestDispatcher("/vmall/cart.jsp").forward(request, response);
	}
	

	protected void clean(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Cart cart = (Cart) request.getSession().getAttribute("cart");
		if(cart==null) {
			cart = new Cart();
			request.getSession().setAttribute("cart",cart);
		}
		cart.clean();
		request.getRequestDispatcher("/vmall/cart.jsp").forward(request, response);
	}
	

	protected void ajaxUpdateCount(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		int id = 0;
		String idString = request.getParameter("id");
		if(idString!=null) {
			id = Integer.parseInt(idString);
		}
		int count = 0;
		String countString = request.getParameter("count");
		if(countString!=null) {
			count = Integer.parseInt(countString);
		}
		Cart cart = (Cart) request.getSession().getAttribute("cart");
		if(cart==null) {
			cart = new Cart();
			request.getSession().setAttribute("cart",cart);
		}
		BigDecimal item_totalMoney = cart.updateCount(id, count);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("item_totalMoney", ""+item_totalMoney);
		map.put("cart_totalMoney", cart.getTotalMoney());
		map.put("cart_totalCount", cart.getTotalCount());
		
		Gson gson = new Gson();
		response.getWriter().write(gson.toJson(map));
	}
}
