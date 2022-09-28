package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UtoonDAO;
import dao.WebtoonVO;

public class newToonController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("[newToonController]");
		HttpSession session = request.getSession();
		UtoonDAO dao = new UtoonDAO();
		
		List<WebtoonVO> NewNVWT = dao.rankAllWT();
		request.setAttribute("NewNVWT", NewNVWT);
		
		List<WebtoonVO> NewKKWT = dao.rankNVWT();
		request.setAttribute("NewKKWT", NewKKWT);
		
		List<WebtoonVO> NewLZWT = dao.rankKKWT();
		request.setAttribute("NewLZWT", NewLZWT);
		
		List<WebtoonVO> NewTTWT = dao.rankLZWT();
		request.setAttribute("NewTTWT", NewTTWT);
		
		List<WebtoonVO> NewTMWT = dao.rankTTWT();
		request.setAttribute("NewTMWT", NewTMWT);

		
		return "newToon";
	}

}
