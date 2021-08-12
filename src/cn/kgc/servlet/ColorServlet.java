package cn.kgc.servlet;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import cn.kgc.bean.Args;
import cn.kgc.bean.Color;
import cn.kgc.service.ColorService;
import cn.kgc.service.impl.ColorServiceImpl;


@WebServlet("/ColorServlet")
public class ColorServlet extends BaseServlet {
	private static final long serialVersionUID = 1L;

	ColorService colorservice = new ColorServiceImpl();
	
	protected void list(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Color> colors = colorservice.selectAll();
		request.setAttribute("colors", colors);
		request.getRequestDispatcher("/.jsp").forward(request, response);
	}

	protected void add(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Color color = (Color) request.getAttribute("color");
		int i = colorservice.add(color);
		if (i > 0) {
			response.sendRedirect(request.getContextPath() + "/.jsp");
		} else {

			request.setAttribute("adderrorMsg", "添加失败,请联系管理员");
			response.sendRedirect(request.getContextPath() + "/.jsp");
		}
	}

	protected void delete(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	    int colorId = (int) request.getAttribute("colorId");
		int delete = colorservice.delete(colorId);
		if(delete>0) {
			response.sendRedirect(request.getContextPath() + "/.jsp");
		}else {
			response.sendRedirect(request.getContextPath()+"/.jsp");
		}
		
	}

	protected void update(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Color color = (Color) request.getAttribute("color");
		int update = colorservice.update(color);
		if(update>0) {
			response.sendRedirect(request.getContextPath() + "/.jsp");
		}else {
			response.sendRedirect(request.getContextPath() + "/.jsp");
		}
		

	}

	protected void getColor(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int colorId = Integer.parseInt(request.getParameter("colorId"));
		request.setAttribute("color", colorservice.queryById(colorId));
		request.getRequestDispatcher("/.jsp").forward(request, response);
	}
	protected void getColorByCodeId(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int colorId = 0;
		String colorIdString = request.getParameter("colorId");
		if (colorIdString != null) {
			colorId = Integer.parseInt(colorIdString);
		}
		Color color = colorservice.queryByCodeId(colorId);
		request.setAttribute("color", color);
		request.getRequestDispatcher("").forward(request, response);
	}

}
