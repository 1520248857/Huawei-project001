package cn.kgc.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.kgc.bean.Args;
import cn.kgc.service.ArgsService;
import cn.kgc.service.impl.ArgsServiceImpl;

/**
 * Servlet implementation class ArgsServlet
 */
@WebServlet("/ArgsServlet")
public class ArgsServlet extends BaseServlet {
	private static final long serialVersionUID = 1L;

	private ArgsService argsService = new ArgsServiceImpl();

	protected void selectAll(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<Args> list = argsService.selectAll();
		request.setAttribute("argsList", list);
		request.getRequestDispatcher("").forward(request, response);
	}

	protected void selectById(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int argsId = 0;
		String argsIdString = request.getParameter("argsId");
		if (argsIdString != null) {
			argsId = Integer.parseInt(argsIdString);
		}
		Args args = argsService.selectById(argsId);
		request.setAttribute("args", args);
		request.getRequestDispatcher("").forward(request, response);
	}

	protected void add(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Args args = (Args) request.getAttribute("args");
		boolean add = argsService.add(args);
		if(add) {
			request.getRequestDispatcher("").forward(request, response);
		}else {
			request.getRequestDispatcher("").forward(request, response);
		}
	}

	protected void delete(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int argsId = (int) request.getAttribute("argsId");
		boolean delete = argsService.delete(argsId);
		if(delete) {
			request.getRequestDispatcher("").forward(request, response);
		}else {
			request.getRequestDispatcher("").forward(request, response);
		}
	}

	protected void update(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Args args = (Args) request.getAttribute("args");
		boolean update = argsService.update(args);
		if(update) {
			request.getRequestDispatcher("").forward(request, response);
		}else {
			request.getRequestDispatcher("").forward(request, response);
		}
	}
	protected void selectByCodeId(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int codeId = 0;
		String codeIdString = request.getParameter("codeId");
		if (codeIdString != null) {
			codeId = Integer.parseInt(codeIdString);
		}
		Args code = argsService.selectByCodeId(codeId);
		request.setAttribute("code", code);
		request.getRequestDispatcher("").forward(request, response);
	}


}
