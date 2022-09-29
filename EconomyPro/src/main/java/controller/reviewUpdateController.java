package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MemberVO;
import dao.ReviewVO;
import dao.UtoonDAO;

public class reviewUpdateController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();

		int rv_num = Integer.parseInt(request.getParameter("rv_num"));
		String rv_ctnt = request.getParameter("rv_ctnt");
		int wt_id = Integer.parseInt(request.getParameter("wt_id"));

		UtoonDAO dao = new UtoonDAO();
		MemberVO vo = (MemberVO) session.getAttribute("lvo");
		String mem_id = vo.getMem_id();
		ReviewVO rv = new ReviewVO();
		rv.setRv_num(rv_num);
		rv.setMem_id(mem_id);	
		rv.setRv_ctnt(rv_ctnt);
		rv.setWt_id(wt_id);
		dao.reviewUpdate(rv);
		System.out.println("게시글업데이트완료 정보 " + rv);
//		return "redirect:/postDetail.do?post_num=" + rv_num;

		return null;
	}

}
