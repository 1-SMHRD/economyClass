package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MemberVO;
import dao.ReviewVO;
import dao.UtoonDAO;

public class reviewWriteController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		UtoonDAO dao = new UtoonDAO();
		MemberVO vo = (MemberVO) session.getAttribute("lvo");
		request.setAttribute("vo", vo);
		
		int wt_id = Integer.parseInt(request.getParameter("wt_id"));
		String rv_ctnt = request.getParameter("rv_ctnt");		
		String mem_id = vo.getMem_id();
		ReviewVO rvw = new ReviewVO();
		rvw.setWt_id(wt_id);
		rvw.setMem_id(mem_id);
		rvw.setRv_ctnt(rv_ctnt);
		dao.reviewInsert(rvw);
		System.out.println("리뷰쓰기"+wt_id);
		return null;
	}

}
