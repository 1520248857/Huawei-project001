package cn.kgc.servlet;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import cn.kgc.bean.ProductItem;
import cn.kgc.service.ProductItemService;
import cn.kgc.service.impl.ProductItemServiceImpl;

/**
 * Servlet implementation class ProductsItemsServlet
 */
@WebServlet("/ProductItemServlet")
public class ProductItemServlet extends BaseServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private ProductItemService itemsService = new ProductItemServiceImpl();

	protected void add(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ProductItem items = new ProductItem();
		try {
			BeanUtils.populate(items, request.getParameterMap());
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			e.printStackTrace();
		}
		boolean a = itemsService.add(items);
		if (a) {
			request.getRequestDispatcher("").forward(request, response);
		} else {
			request.setAttribute("addMsg", "Ìí¼ÓÊ§°Ü£¡£¡£¡");
			request.getRequestDispatcher("").forward(request, response);
		}
	}

	protected void delete(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int id = 0;
		String idString = request.getParameter("id");
		if (idString != null) {
			id = Integer.parseInt(idString);
		}
		boolean a = itemsService.delete(id);
		if (a) {
			request.getRequestDispatcher("").forward(request, response);
		} else {
			request.setAttribute("deleteMsg", "É¾³ýÊ§°Ü£¡£¡£¡£¡");
			request.getRequestDispatcher("").forward(request, response);
		}
	}

	protected void update(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ProductItem items = new ProductItem();
		try {
			BeanUtils.populate(items, request.getParameterMap());
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			e.printStackTrace();
		}
		boolean a = itemsService.update(items);
		if (a) {
			request.getRequestDispatcher("").forward(request, response);
		} else {
			request.setAttribute("updateMsg", "ÐÞ¸Ä´íÎó£¡£¡£¡£¡£¡");
			request.getRequestDispatcher("").forward(request, response);
		}
	}

	protected void selectById(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int id = 0;
		String idString = request.getParameter("id");
		if (idString != null) {
			id = Integer.parseInt(idString);
		}
		ProductItem items = itemsService.selectById(id);
		request.setAttribute("ProductsItems", items);
		request.getRequestDispatcher("").forward(request, response);
	}

	protected void selectAll(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<ProductItem> list = itemsService.selectAll();
		request.setAttribute("list", list);
		request.getRequestDispatcher("").forward(request, response);
	}

	protected void selectBycodeId(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int codeId = 0;
		String codeIdString = request.getParameter("codeId");
		if (codeIdString != null) {
			codeId = Integer.parseInt(codeIdString);
		}
		ProductItem items = itemsService.selectBycodeId(codeId);
		request.setAttribute("items", items);
		request.getRequestDispatcher("").forward(request, response);

	}

}
