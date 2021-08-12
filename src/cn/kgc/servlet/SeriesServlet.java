package cn.kgc.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.kgc.bean.Series;
import cn.kgc.service.SeriesService;
import cn.kgc.service.impl.SeriesServiceImpl;

/**
 * Servlet implementation class SeriesServlet
 */
@WebServlet("/SeriesServlet")
public class SeriesServlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
	SeriesService seriesService = new SeriesServiceImpl();

	protected void selectAll(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<Series> servletAll = seriesService.servletAll();
		request.setAttribute("list", servletAll);
		request.getRequestDispatcher("").forward(request, response);

	}

	protected void add(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Series series = new Series(0,"",1);
		int save = seriesService.save(series);
		if (save > 0) {
			System.out.println("添加成功");
		}
	}

	protected void delete(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String parameter = request.getParameter("id");
		int id = Integer.parseInt(parameter);
		int deleteById = seriesService.deleteById(id);
		if (deleteById > 0) {
			System.out.println("删除成功");
		}
	}

	// 回显
	protected void getSeries(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String parameter = request.getParameter("id");
		int id = Integer.parseInt(parameter);
		Series queryById = seriesService.queryById(id);
		request.setAttribute("queryById", queryById);
		request.getRequestDispatcher("").forward(request, response);

	}

	// 修改
	protected void update(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String parameter = request.getParameter("id");
		int id = Integer.parseInt(parameter);
		Series series = new Series();
		series.setSeriesName("");
		series.setSeriesId(id);
		seriesService.update(series);
		request.getRequestDispatcher("").forward(request, response);
	}
	protected void selectByCodeId(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String parameter = request.getParameter("selectByCodeId");
		int id = Integer.parseInt(parameter);
		Series codeId = seriesService.selectByCodeId(id);
		request.setAttribute("codeId", codeId);
		request.getRequestDispatcher("").forward(request, response);
	}

}
