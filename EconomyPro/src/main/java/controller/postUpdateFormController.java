package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MemberVO;
import dao.PCommentVO;
import dao.PostVO;
import dao.UtoonDAO;

public class postUpdateFormController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		UtoonDAO dao = new UtoonDAO();
		MemberVO vo = (MemberVO) session.getAttribute("lvo");
		request.setAttribute("vo", vo);
		int post_num = Integer.parseInt(request.getParameter("post_num"));
		PostVO post = dao.postGet(post_num);
		request.setAttribute("post", post);
		System.out.println("게시글업데이트 정보 " + post);
		return "postUpdate";
	}

}
