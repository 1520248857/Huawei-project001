package cn.kgc.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.aliyuncs.CommonRequest;
import com.aliyuncs.CommonResponse;
import com.aliyuncs.DefaultAcsClient;
import com.aliyuncs.IAcsClient;
import com.aliyuncs.exceptions.ClientException;
import com.aliyuncs.exceptions.ServerException;
import com.aliyuncs.http.MethodType;
import com.aliyuncs.profile.DefaultProfile;

import cn.kgc.service.UserService;
import cn.kgc.service.impl.UserServiceImpl;

/**
 * Servlet implementation class SendServlet
 */
@WebServlet("/SendServlet")
public class SendServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SendServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");

		UserService userService = new UserServiceImpl();
		java.io.PrintWriter out = response.getWriter();
		String phone = request.getParameter("phone");
//		if (userService.existsUserPhone(phone)) {
			DefaultProfile profile = DefaultProfile.getProfile("cn-hangzhou", "LTAI4GJFpGYLCHJLjs5be1qM",
					"ntWEdApgaJRQXOpdM1vqqh2PQ0jY6K");
			IAcsClient client = new DefaultAcsClient(profile);
			CommonRequest commonRequest = new CommonRequest();
			// request.setProtocol(ProtocolType.HTTPS);
			commonRequest.setMethod(MethodType.POST);
			commonRequest.setDomain("dysmsapi.aliyuncs.com");
			commonRequest.setVersion("2017-05-25");
			commonRequest.setAction("SendSms");
			commonRequest.putQueryParameter("RegionId", "cn-hangzhou");
			commonRequest.putQueryParameter("PhoneNumbers", phone);// 前台数据传过来
			commonRequest.putQueryParameter("SignName", "个人项目");
			commonRequest.putQueryParameter("TemplateCode", "SMS_126335206");
			// 生成随机六位验证码
			int code = (int) ((Math.random() * 9 + 1) * 100000);
			commonRequest.putQueryParameter("TemplateParam", "{\"code\":\"" + code + "\"}");
			request.getSession().setAttribute("code", code + "");
			try {
				CommonResponse commonResponse = client.getCommonResponse(commonRequest);
				System.out.println(commonResponse.getData());
				out.print(commonResponse.getData());
			} catch (ServerException e) {
				e.printStackTrace();
			} catch (ClientException e) {
				e.printStackTrace();
			}
//		} else {
//			request.getRequestDispatcher("/pages/user/rejist.jsp").forward(request, response);
		
	
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
