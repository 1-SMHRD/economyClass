package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MemberVO;
import dao.RCommentVO;
import dao.ReviewVO;
import dao.UtoonDAO;
import dao.WebtoonVO;

public class toonDetailController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		UtoonDAO dao = new UtoonDAO();
		MemberVO vo = (MemberVO) session.getAttribute("lvo");
		request.setAttribute("vo", vo);
		
		int wt_id = Integer.parseInt(request.getParameter("wt_id"));
		
		WebtoonVO wt = dao.wtGet(wt_id);
		request.setAttribute("wt", wt);
		
		List<ReviewVO> rv = dao.reviewAllList(wt_id);
		request.setAttribute("rv", rv);
		
		
		System.out.println("웹툰 정보 ");
		
		return "toonDetail";
	}

}
