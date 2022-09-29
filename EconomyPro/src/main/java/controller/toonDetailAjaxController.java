package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import dao.MemberVO;
import dao.ReviewVO;
import dao.UtoonDAO;

public class toonDetailAjaxController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		UtoonDAO dao = new UtoonDAO();
		MemberVO vo = (MemberVO) session.getAttribute("lvo");
		request.setAttribute("vo", vo);
		
		int wt_id = Integer.parseInt(request.getParameter("wt_id"));
		
				
		List<ReviewVO> rv = dao.reviewAllList(wt_id);
//		List<BoardVO> --> String(JSON)
		Gson g = new Gson();
		String json = g.toJson(rv);
		response.setContentType("text/json;charset=utf-8");
		PrintWriter out =response.getWriter();
		out.println(json);
		
		return null;
	}

}
