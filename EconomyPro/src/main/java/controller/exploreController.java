package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UtoonDAO;
import dao.WebtoonVO;

public class exploreController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
UtoonDAO dao = new UtoonDAO(); //dao 선언
		
		//탐색 페이지 처음 들어왔을 때 기본적으로 필터링 되지 않은 모든 웹툰 인스턴스들을 담아 주는 list이다
		List<WebtoonVO> list = dao.allListWT();
		request.setAttribute("allList", list);
		System.out.println(list.size());
		return "explore";
	}

}
