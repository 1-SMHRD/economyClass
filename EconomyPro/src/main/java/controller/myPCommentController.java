package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MemberVO;
import dao.PCommentVO;
import dao.UtoonDAO;

public class myPCommentController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();

		UtoonDAO dao = new UtoonDAO();
		MemberVO vo = (MemberVO) session.getAttribute("lvo");
		String mem_id = vo.getMem_id();

		List<PCommentVO> myPC = dao.myPComment(mem_id);
		request.setAttribute("myPC", myPC);

		return "myPComment";
	}

}
