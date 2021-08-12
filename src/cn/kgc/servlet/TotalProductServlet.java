package cn.kgc.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.kgc.bean.Page;
import cn.kgc.bean.ProductItem;
import cn.kgc.bean.TotalProduct;
import cn.kgc.service.ProductItemService;
import cn.kgc.service.TotalProductService;
import cn.kgc.service.impl.ProductItemServiceImpl;
import cn.kgc.service.impl.TotalProductServiceImpl;

/**
 * Servlet implementation class TotalProductServlet
 */
@WebServlet("/TotalProductServlet")
public class TotalProductServlet extends BaseServlet {
	private static final long serialVersionUID = 1L;

	private TotalProductService productService = new TotalProductServiceImpl();

	protected void page(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int pageNo = 1;
		String pageNoString = request.getParameter("pageNo");
		if (pageNoString != null) {
			pageNo = Integer.parseInt(pageNoString);
		}
		int pagesize = 20;
		Page<TotalProduct> page = productService.page(pageNo, pagesize);
		request.getSession().setAttribute("page", page);
		request.getRequestDispatcher("/vmall/pages/list.jsp").forward(request, response);
	}

	protected void like(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String productString = request.getParameter("productString");
		int pageNo = 1;
		String pageNoString = request.getParameter("pageNo");
		if (pageNoString != null) {
			pageNo = Integer.parseInt(pageNoString);
		}
		int pagesize = 20;
		Page<TotalProduct> page = productService.like(productString, pageNo, pagesize);
		if (page == null) {
			request.setAttribute("totalMsg", "未找到相应商品！！！");
		} else {
			request.getSession().setAttribute("page", page);
			request.getRequestDispatcher("/vmall/pages/list.jsp?value="+pageNoString).forward(request, response);
		}
	}

	protected void pageByPrice(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 获取分页的当前页码
		int pageNo = 1;
		String pageNoString = request.getParameter("pageNo");
		if (pageNoString != null) {
			pageNo = Integer.parseInt(pageNoString);
		}
		int pagesize = 20;
		// 获取参数中最小价格和最大价格
		double min = 0;
		String minString = request.getParameter("min");
		if (minString != null && !minString.equals("")) {
			min = Double.parseDouble(minString);
		}
		double max = Double.MAX_VALUE;
		String maxString = request.getParameter("max");
		if (maxString != null && !maxString.equals("")) {
			max = Double.parseDouble(maxString);
		}

		Page<TotalProduct> page = productService.pageByPrice(pageNo, pagesize, min, max);
		request.getSession().setAttribute("page", page);

		if (min != 0) {
			request.setAttribute("min", min);
		}
		if (max != Double.MAX_VALUE) {
			request.setAttribute("max", max);
		}
		request.getRequestDispatcher("/vmall/pages/list.jsp").forward(request, response);
	}
	
	protected void pageAsc(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int pageNo = 1;
		String pageNoString = request.getParameter("pageNo");
		if (pageNoString != null) {
			pageNo = Integer.parseInt(pageNoString);
		}
		int pagesize = 20;
				double min = 0;
				String minString = request.getParameter("min");
				if (minString != null && !minString.equals("")) {
					min = Double.parseDouble(minString);
				}
				double max = Double.MAX_VALUE;
				String maxString = request.getParameter("max");
				if (maxString != null && !maxString.equals("")) {
					max = Double.parseDouble(maxString);
				}
		Page<TotalProduct> page = productService.pageAsc(pageNo, pagesize, min, max);
		request.setAttribute("page", page);
		request.getRequestDispatcher("/vmall/pages/list.jsp").forward(request, response);
	}
	

	protected void pageDesc(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int pageNo = 1;
		String pageNoString = request.getParameter("pageNo");
		if (pageNoString != null) {
			pageNo = Integer.parseInt(pageNoString);
		}
		int pagesize = 20;
				double min = 0;
				String minString = request.getParameter("min");
				if (minString != null && !minString.equals("")) {
					min = Double.parseDouble(minString);
				}
				double max = Double.MAX_VALUE;
				String maxString = request.getParameter("max");
				if (maxString != null && !maxString.equals("")) {
					max = Double.parseDouble(maxString);
				}
		Page<TotalProduct> page = productService.pageDesc(pageNo, pagesize, min, max);
		request.setAttribute("page", page);
		request.getRequestDispatcher("/vmall/pages/list.jsp").forward(request, response);
	}
	

	protected void selectByCodeId(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int codeId1 = 0;
		String codeId1String = request.getParameter("codeId1");
		if(codeId1String!=null) {
			codeId1 = Integer.parseInt(codeId1String);
		}
		TotalProduct totalProduct1 = productService.selectByCodeId(codeId1);
		request.setAttribute("totalProduct1", totalProduct1);
		
		
		request.getRequestDispatcher("/huawei-project/vmall/phone.jsp").forward(request, response);
		
	}

}
