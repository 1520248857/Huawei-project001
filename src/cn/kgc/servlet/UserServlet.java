package cn.kgc.servlet;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import cn.kgc.bean.User;
import cn.kgc.service.UserService;
import cn.kgc.service.impl.UserServiceImpl;

@WebServlet("/UserServlet")
public class UserServlet extends BaseServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see BaseServlet#BaseServlet()
	 */
	public UserServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	UserService userService = new UserServiceImpl();

	protected void login(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		User user = new User();
		String url = request.getParameter("url");
		try {
			BeanUtils.populate(user, request.getParameterMap());
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		User u = userService.findUserByuserPhoneAndPassword(user);
		if (u == null) {
			request.setAttribute("lomsg", "用户名或密码输入不正确!!!");
			request.getRequestDispatcher("/vmall/pages/user/login.jsp").forward(request, response);
		} else {
			request.getSession().setAttribute("user",u );
			request.setAttribute("lophone", user.getUserphone());
			request.getRequestDispatcher("/vmall/index.jsp").forward(request, response);
		}
	}

	protected void rejister(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		String userphone = request.getParameter("userphone");
		String password = request.getParameter("password");
		String emil = request.getParameter("emil");

		User user = new User(0, userphone, password, emil);
		boolean exis = userService.existsUserPhone(userphone);
		if (exis) {
			request.setAttribute("lomsg", "用户名已存在，请重新输入");
			request.setAttribute("userphone", userphone);
			request.setAttribute("emil", emil);
			request.getRequestDispatcher("/pages/user/rejist.jsp").forward(request, response);
		} else {
			boolean result = userService.saveUser(user);
			if (result) {
				request.getRequestDispatcher("/vmall/pages/user/login.jsp").forward(request, response);
				;
			} else {
				request.setAttribute("lomag", "注册失败，请联系管理员");
				request.setAttribute("userphone", userphone);
				request.setAttribute("emil", emil);
				request.getRequestDispatcher("/pages/user/rejist.jsp").forward(request, response);
			}
		}
	}
	// 添加的查询方法
	protected void selectAll(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<User> user = userService.all();
		request.setAttribute("users", user);
		request.getRequestDispatcher("/huaweihoutai/member-list.jsp").forward(request, response);
	}
	// 添加的删除方法
	protected void delete(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int userId = 0;
		String userIdString = request.getParameter("userId");
		if (userIdString != null) {
			userId = Integer.parseInt(userIdString);
		}
		userService.delete(userId);
		request.getRequestDispatcher("/UserServlet?action=selectAll").forward(request, response);

	}

}
