package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MemberVO;
import dao.RCommentVO;
import dao.UtoonDAO;

public class myRCommentController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession session = request.getSession();

		UtoonDAO dao = new UtoonDAO();
		MemberVO vo = (MemberVO) session.getAttribute("lvo");
		String mem_id = vo.getMem_id();

		List<RCommentVO> myRC = dao.myRComment(mem_id);
		request.setAttribute("myRC", myRC);
		
		return "myRComment";
	}

}
