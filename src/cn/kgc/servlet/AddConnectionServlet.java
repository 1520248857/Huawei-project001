package cn.kgc.servlet;


import java.io.File;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import cn.kgc.bean.Args;
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
 * Servlet implementation class AddConnectionServlet
 */
@WebServlet("/AddConnectionServlet")
public class AddConnectionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AddConnectionServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("Utf-8");
		response.setContentType("text/html; charset = UTF-8");

		ProductItemService itemService = new ProductItemServiceImpl();
		ArgsService argsService = new ArgsServiceImpl();
		SeriesService seriesService = new SeriesServiceImpl();
		ColorService colorService = new ColorServiceImpl();
		ConnectionService connectionService = new ConnectionServiceImpl();

		ProductItem item = new ProductItem();
		Args args = new Args();
		Color co = new Color();
		Series series = new Series();
		Connection connection = new Connection();


		boolean multipartContent = ServletFileUpload.isMultipartContent(request);
		if (multipartContent) {
			FileItemFactory factory = new DiskFileItemFactory();
			ServletFileUpload fileUpload = new ServletFileUpload(factory);
			try {
				List<FileItem> parseRequest = fileUpload.parseRequest(request);
				System.out.println(parseRequest.toString());
				for (FileItem fileItem : parseRequest) {
					if (fileItem.isFormField()) {
						// 获取普通表单的数据
						if (fileItem.getFieldName().equals("productName")) {
							String productName = fileItem.getString("UTF-8");
							item.setProductName(productName);
							System.out.println(productName);
						}
						if (fileItem.getFieldName().equals("stock")) {
							int stock = Integer.parseInt(fileItem.getString("UTF-8"));
							item.setStock(stock);
							System.out.println(stock);
						}
						if (fileItem.getFieldName().equals("ram")) {
							String ram = fileItem.getString("UTF-8");
							args.setRam(ram);
							System.out.println(ram);
						}
						if (fileItem.getFieldName().equals("price")) {
							BigDecimal price = new BigDecimal(fileItem.getString("UTF-8"));
							args.setPrice(price);
							System.out.println(price);
						}
						if (fileItem.getFieldName().equals("color")) {
							String color = fileItem.getString("UTF-8");
							co.setColor(color);
							System.out.println(color);
						}
						if (fileItem.getFieldName().equals("seriesName")) {
							String seriesName = fileItem.getString("UTF-8");
							series.setSeriesName(seriesName);
							System.out.println(seriesName);
						}
						if (fileItem.getFieldName().equals("codeId")) {
							int codeId = Integer.parseInt(fileItem.getString("UTF-8"));
							connection.setCodeId(codeId);
							args.setCodeId(codeId);
							co.setCodeId(codeId);
							series.setCodeId(codeId);
							item.setCodeId(codeId);
							System.out.println(codeId);
						}

					} else {
						// 获取表单中的图片并添加到upload中
						if (fileItem.getFieldName().equals("image")) {
							String realPath = request.getServletContext().getRealPath("/upload");
							String filename = fileItem.getName();
							String uuid = UUID.randomUUID().toString().replaceAll("-", "");
							String image = uuid + "_" + filename;
							item.setImage(image);
							File file = new File(realPath + "/" + image);
							fileItem.write(file);

							System.out.println(image);
						}
						if (fileItem.getFieldName().equals("image1")) {
							String realPath = request.getServletContext().getRealPath("/upload");
							String filename = fileItem.getName();
							String uuid = UUID.randomUUID().toString().replaceAll("-", "");
							String image1 = uuid + "_" + filename;
							co.setImage1(image1);
							File file = new File(realPath + "/" + image1);
							fileItem.write(file);

							System.out.println(image1);
						}
						if (fileItem.getFieldName().equals("image2")) {
							String realPath = request.getServletContext().getRealPath("/upload");
							String filename = fileItem.getName();
							String uuid = UUID.randomUUID().toString().replaceAll("-", "");
							String image2 = uuid + "_" + filename;
							co.setImage2(image2);
							File file = new File(realPath + "/" + image2);
							fileItem.write(file);

							System.out.println(image2);
						}
						if (fileItem.getFieldName().equals("image3")) {
							String realPath = request.getServletContext().getRealPath("/upload");
							String filename = fileItem.getName();
							String uuid = UUID.randomUUID().toString().replaceAll("-", "");
							String image3 = uuid + "_" + filename;
							co.setImage3(image3);
							File file = new File(realPath + "/" + image3);
							fileItem.write(file);

							System.out.println(image3);
						}
						if (fileItem.getFieldName().equals("image4")) {
							String realPath = request.getServletContext().getRealPath("/upload");
							String filename = fileItem.getName();
							String uuid = UUID.randomUUID().toString().replaceAll("-", "");
							String image4 = uuid + "_" + filename;
							co.setImage4(image4);
							File file = new File(realPath + "/" + image4);
							fileItem.write(file);

							System.out.println(image4);
						}
					}
				}
				// 四张属性表的存值
				itemService.add(item);
				argsService.add(args);
				seriesService.save(series);
				colorService.add(co);

				ProductItem productItem = itemService.selectBycodeId(item.getCodeId());
				Args ar = argsService.selectByCodeId(args.getCodeId());
				Color color = colorService.queryByCodeId(co.getCodeId());
				Series series2 = seriesService.selectByCodeId(series.getCodeId());
				// 关系表的存值
				connection.setArgsId(ar.getArgsId());
				connection.setColorId(color.getColorId());
				connection.setProductId(productItem.getProductId());
				connection.setSeriesId(series2.getSeriesId());
				boolean add4 = connectionService.add(connection);

				request.getRequestDispatcher("/ConnectionServlet?action=selectAll").forward(request, response);
			} catch (FileUploadException e) {
				e.printStackTrace();
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else {
			request.setAttribute("result", "上传失败！！！");
			request.getRequestDispatcher("").forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
