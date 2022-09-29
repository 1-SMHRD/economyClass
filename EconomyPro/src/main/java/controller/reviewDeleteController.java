package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UtoonDAO;

public class reviewDeleteController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		int rv_num = Integer.parseInt(request.getParameter("rv_num"));
		UtoonDAO dao = new UtoonDAO();
		dao.reviewDelete(rv_num);
		return "redirect:/toonDetail.do";
	}

}
