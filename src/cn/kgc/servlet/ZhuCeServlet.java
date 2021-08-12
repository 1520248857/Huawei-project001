package cn.kgc.servlet;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import cn.kgc.service.UserService;
import cn.kgc.service.impl.UserServiceImpl;


/**
 * Servlet implementation class ZhuCeServlet
 */
@WebServlet("/ZhuCeServlet")
public class ZhuCeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ZhuCeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 获取手机号
				String userphone = request.getParameter("userphone");
				UserService userService = new UserServiceImpl();
				// 判断手机号是否存在
				boolean existsUserPhone = userService.existsUserPhone(userphone);
				Map<String, Integer> result = new HashMap<String,Integer>();
				// 返回手机号是否存在
				if (existsUserPhone) {
					// 如果用户存在，返回result 为1,如果用户不存在。result 返回0
					result.put("res", 1);
				}else {
					result.put("res", 0);
				}
				// 生成Gson对象，用于把map转换成为json字符串返回
				Gson gson = new Gson();
				String json=gson.toJson(result);
				response.getWriter().write(json);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
