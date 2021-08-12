package cn.kgc.servlet;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.beanutils.BeanUtils;

import cn.kgc.bean.Manager;
import cn.kgc.service.ManagerService;
import cn.kgc.service.impl.ManagerServiceImpl;

/**
 * Servlet implementation class ManagerServlet
 */
@WebServlet("/ManagerServlet")
public class ManagerServlet extends BaseServlet {
	private static final long serialVersionUID = 1L;

	ManagerService managerservice = new ManagerServiceImpl();

	protected void login(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Manager manager = new Manager();
		try {
			BeanUtils.populate(manager, request.getParameterMap());
		} catch (Exception e) {
			e.printStackTrace();
		}

		Manager m = managerservice.FindManagerBymanagernameandpassword(manager);
		if (m != null) {
			// 登录失败
			HttpSession session = request.getSession();
			session.setAttribute("managerName", request.getParameter("managerName"));

			request.getRequestDispatcher("/huaweihoutai/index.jsp").forward(request, response);
		} else {
			request.getRequestDispatcher("/huaweihoutai/login.jsp").forward(request, response);
		}
	}

	//  新添加的查询方法
	protected void selectAll(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<Manager> manager = managerservice.selectAll();
		request.setAttribute("managers", manager);
		request.getRequestDispatcher("/huaweihoutai/admin-list.jsp").forward(request, response);

	}

	// 新添加的增加方法
	protected void add(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Manager manager = new Manager();

		try {
			BeanUtils.populate(manager, request.getParameterMap());
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		int i = managerservice.add(manager);
		System.out.println(manager);
		System.out.println(i);
		if (i > 0) {
			request.getRequestDispatcher("/ManagerServlet?action=selectAll").forward(request, response);
			// response.sendRedirect(request.getContextPath() +
			// "/huaweihoutai/NewFile2.jsp");
		} else {

			request.setAttribute("adderrorMsg", "添加失败,请联系管理员");
			response.sendRedirect(request.getContextPath() + "/huaweihoutai/admin-add.jsp");
		}

	}

	// 通过id
	protected void getManager(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int managerId = 0;
		String managerIdString = request.getParameter("managerId");
		if (managerIdString != null) {
			managerId = Integer.parseInt(managerIdString);
		}
		Manager manager = managerservice.queryById(managerId);
		request.setAttribute("managers", manager);
		request.getRequestDispatcher("/huaweihoutai/admin-edit.jsp").forward(request, response);

	}

	// 新添加的更改方法	
	protected void update(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Manager manager = new Manager();
		try {
			BeanUtils.populate(manager, request.getParameterMap());
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		int a = managerservice.update(manager);
		if (a > 0) {
			request.getRequestDispatcher("/ManagerServlet?action=selectAll").forward(request, response);
		} else {
			request.getRequestDispatcher("/huaweihoutai/admin-edit.jsp").forward(request, response);
		}

	}

	// 新添加的删除方法
	protected void delete(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int managerId = 0;
		String managerIdString = request.getParameter("managerId");
		if (managerIdString != null) {
			managerId = Integer.parseInt(managerIdString);
		}
		managerservice.delete(managerId);
		request.getRequestDispatcher("/ManagerServlet?action=selectAll").forward(request, response);

	}

}
