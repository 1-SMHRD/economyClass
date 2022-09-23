package frontcontroller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.Controller;
import frontcontroller.HandlerMapping;
import frontcontroller.ViewResolver;

@WebServlet("*.do")
public class UtoonFrontController extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");

//		1. 어떤 요청인지 파악하는 것 ( command 구하기 )
		String reqPath = request.getRequestURI();
//		System.out.println(reqPath);
		String cpath = request.getContextPath();
//		System.out.println(cpath);
		String command = reqPath.substring(cpath.length());
//		System.out.println(command);
//		2. command에 따른 처리(if~ else)
		Controller ctr = null;
		String nextpath = null;
//		HandlerMapping
		HandlerMapping mappings = new HandlerMapping();
		ctr = mappings.getController(command);
		nextpath = ctr.requestHandler(request, response);

//		3. 다음페이지로 이동하기()
		if (nextpath != null) {
			if (nextpath.indexOf("redirect:") == -1) {
				// forward				
				RequestDispatcher rd = request.getRequestDispatcher(ViewResolver.makeView(nextpath));
				rd.forward(request, response);
			} else {
				// redirect				
				response.sendRedirect(cpath + nextpath.split(":")[1]);
			}
		}
	}

}
