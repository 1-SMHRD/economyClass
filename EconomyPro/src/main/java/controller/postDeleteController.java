package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UtoonDAO;

public class postDeleteController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		int post_num = Integer.parseInt(request.getParameter("post_num"));
		UtoonDAO dao = new UtoonDAO();
		dao.postDelete(post_num);
		
		return "redirect:/community.do";
	}

}
