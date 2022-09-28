package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.CollectionVO;
import dao.EventVO;
import dao.PostVO;
import dao.UtoonDAO;
import dao.WebtoonVO;

public class mainPageController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		System.out.println("[mainPageController]");
		HttpSession session = request.getSession();
		//session.getAttribute("lvo");
		
		UtoonDAO dao = new UtoonDAO();
		
		//1. 토탈랭킹 1~5 / 네이버웹툰 1~5/ 카카오 웹툰 /1~50.... 탑툰 1~5 wtoonVO - rank select 필요/ 
		List<WebtoonVO> rankAllWT = dao.rankAllWT();
		request.setAttribute("rankAllWT", rankAllWT);
		List<WebtoonVO> rankNVWT = dao.rankNVWT();
		request.setAttribute("rankNVWT", rankNVWT);
		List<WebtoonVO> rankKKWT = dao.rankKKWT();
		request.setAttribute("rankKKWT", rankKKWT);
		List<WebtoonVO> rankLZWT = dao.rankLZWT();
		request.setAttribute("rankLZWT", rankLZWT);
		List<WebtoonVO> rankTTWT = dao.rankTTWT();
		request.setAttribute("rankTTWT", rankTTWT);
		List<WebtoonVO> rankTMWT = dao.rankTMWT();
		request.setAttribute("rankTMWT", rankTMWT);
		//2. 커뮤니티 인기글 1~9
		List<PostVO> popPost = dao.popPost();
		request.setAttribute("popPost", popPost);
		//3. 광고 배너 1~5 플랫폼별
		List<EventVO> platEvent = dao.platEvent();
		request.setAttribute("platEvent", platEvent);
		//4. 컬렉션 리스트 1~6 
		List<CollectionVO> colList = dao.colList();
		request.setAttribute("colList", colList);
		
//		System.out.println("메인페이지 세션정보"+session.getAttribute("lvo"));
//		System.out.println("메인페이지 세션정보 "+session.getAttribute("lvo"));
//		System.out.println("메인페이지 게시글정보 "+list);
		
		return "mainPage";
	}

}

