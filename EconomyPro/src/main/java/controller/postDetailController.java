package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MemberVO;
import dao.PostVO;
import dao.UtoonDAO;

public class postDetailController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();
		UtoonDAO dao = new UtoonDAO();
		MemberVO vo = (MemberVO) session.getAttribute("lvo");

		int post_num = Integer.parseInt(request.getParameter("post_num"));
		PostVO post = dao.postGet(post_num);
		request.setAttribute("post", post);

		return "postDetail";
	}

}
