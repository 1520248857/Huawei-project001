package cn.kgc.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import cn.kgc.bean.Address;
import cn.kgc.service.AddressService;
import cn.kgc.service.impl.AddressServiceImpl;

/**
 * Servlet implementation class AddressServlet
 */
@WebServlet("/AddressServlet")
public class AddressServlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
	AddressService addressService = new AddressServiceImpl();

	protected void selectAll(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<Address> list = addressService.selectAll();
		request.setAttribute("list", list);
		request.getRequestDispatcher("").forward(request, response);
	}

	protected void add(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Address address = new Address();
		try {
			BeanUtils.populate(address, request.getParameterMap());
		} catch (Exception e) {
			e.printStackTrace();
		}
		boolean a = addressService.add(address);
		if (a) {
			request.getRequestDispatcher("/AddressServlet?action=selectAll").forward(request, response);
		} else {
			request.setAttribute("errormsg", "添加失败");
			request.getRequestDispatcher("").forward(request, response);
		}
	}

	protected void findByuserid(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int userid = 0;
		String idStr = request.getParameter("userid");
		userid = Integer.parseInt(idStr);
		Address address = addressService.findByuserid(userid);
		if (address != null) {
			request.setAttribute("address", address);
			request.getRequestDispatcher("").forward(request, response);
		} else {
			request.setAttribute("errormsg", "删除失败");
			request.getRequestDispatcher("").forward(request, response);
		}
	}

	protected void deleteByaddressid(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int addressid = 0;
		String idStr = request.getParameter("addressid");
		addressid = Integer.parseInt(idStr);
		boolean a = addressService.deleteByaddressid(addressid);
		if (a) {
			request.getRequestDispatcher("").forward(request, response);
		} else {
			request.setAttribute("errormsg", "没找到");
			request.getRequestDispatcher("").forward(request, response);
		}
	}

	protected void update(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int addressid = 0;
		Address address = new Address();
		String str = request.getParameter("addressid");
		addressid = Integer.parseInt(str);
		address = addressService.findByaddressid(addressid);
		if (address != null) {
			try {
				BeanUtils.populate(address, request.getParameterMap());
			} catch (Exception e) {
				e.printStackTrace();
			}
			boolean update = addressService.update(address);
			if(update) {
				request.getRequestDispatcher("").forward(request, response);
			}else {
				request.getRequestDispatcher("").forward(request, response);
			}
		} else {
			request.setAttribute("errormsg", "没找到");
			request.getRequestDispatcher("").forward(request, response);
		}

	}

}
