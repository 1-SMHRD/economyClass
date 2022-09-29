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

public class postDetailController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();
		UtoonDAO dao = new UtoonDAO();
		MemberVO vo = (MemberVO) session.getAttribute("lvo");
		request.setAttribute("vo", vo);
		int post_num = Integer.parseInt(request.getParameter("post_num"));
		dao.postView(post_num); // 조회수 누적
		PostVO post = dao.postGet(post_num);
		request.setAttribute("post", post);
		List<PCommentVO> pc = dao.pcAllList(post_num);
		request.setAttribute("pc", pc);
		System.out.println("게시글 정보 " + post);

		return "postDetail";
	}

}
