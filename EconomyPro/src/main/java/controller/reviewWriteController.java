package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ReviewVO;
import dao.UtoonDAO;

public class reviewWriteController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		UtoonDAO dao = new UtoonDAO();
		String mem_id = request.getParameter("mem_id");
		String rv_ctnt = request.getParameter("rv_ctnt");		
		ReviewVO rv = new ReviewVO();

		rv.setMem_id(mem_id);
		rv.setRv_ctnt(rv_ctnt);
		dao.reviewInsert(rv);
		
		return null;
	}

}
