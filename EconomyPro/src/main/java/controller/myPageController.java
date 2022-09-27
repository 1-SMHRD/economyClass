package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MemberVO;
import dao.ScrapVO;
import dao.UtoonDAO;



public class myPageController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession session = request.getSession();
				
		UtoonDAO dao = new UtoonDAO();
		MemberVO vo = (MemberVO)session.getAttribute("lvo");
		String mem_id = vo.getMem_id();
		
		int myPC = dao.myPC(mem_id);
		request.setAttribute("myPC", myPC);
		
		int myPCC = dao.myPCC(mem_id);
		request.setAttribute("myPCC", myPCC);
		
		int myRC = dao.myRC(mem_id);
		request.setAttribute("myRC", myRC);
		
		int myRCC = dao.myRCC(mem_id);
		request.setAttribute("myRCC", myRCC);
		
		List<ScrapVO> list = dao.myScrap(mem_id);
		request.setAttribute("list", list);
		
		System.out.println("마이페이지 세션정보 "+session.getAttribute("lvo"));
		System.out.printf("마이페이지 myPC %d, myPCC %d, myRC %d, myRCC %d %n" ,myPC,myPCC,myRC,myRCC);
		System.out.println("마이페이지 스크랩정보 "+list);
		return "myPage";
	}

}
