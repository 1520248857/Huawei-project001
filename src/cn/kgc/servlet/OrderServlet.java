package cn.kgc.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import cn.kgc.bean.Cart;
import cn.kgc.bean.Order;
import cn.kgc.bean.User;
import cn.kgc.service.OrderService;
import cn.kgc.service.impl.OrderServiceImpl;

@WebServlet("/OrderServlet")
public class OrderServlet extends BaseServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private OrderService orderService = new OrderServiceImpl();

	protected void saveOrder(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 用户登录，需要登录
		User user = (User) request.getSession().getAttribute("user");
		if (user == null) {
			// 如果用户没有登录，重定向登录页面
			response.sendRedirect("/huawei-project/vmall/pages/user/login.jsp");
		} else {
			// 获取购物车
			Cart cart = (Cart) request.getSession().getAttribute("cart");
			System.out.println(cart);
			//  生成订单
			String orderId = orderService.saveOrder(cart, user.getUserid());
			// 把订单号保存到
			Order order = orderService.selectOrderById(orderId);
			request.getSession().setAttribute("order", order);
			request.getSession().setAttribute("cart", cart);
			// 重定向到生成订单成功页面
			request.getRequestDispatcher("/vmall/order.jsp").forward(request, response);
		}
	}

	protected void selectAll(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<Order> orders = new ArrayList<Order>();
		orders = orderService.selectAll();
		request.setAttribute("orders", orders);
		request.getRequestDispatcher("/huaweihoutai/order-list.jsp").forward(request, response);

	}

	protected void delete(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		// 1 获取请求的参数，编号
		String orderId = null;
		String orderIdString = request.getParameter("orderId");
		if (orderIdString != null) {
			orderId = orderIdString;
		}
		// 2 调用orderService.delete(编号);
		orderService.delete(orderId);
		// 3 重定向回列表管理页面
		response.sendRedirect(request.getContextPath() + "/OrderServlet?action=selectAll");
		

	}

}
