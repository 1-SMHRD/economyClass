package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MemberVO;
import dao.PostVO;
import dao.UtoonDAO;



public class myPageController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		
//		session.getAttribute("lvo");
		
		UtoonDAO dao = new UtoonDAO();
		MemberVO vo = (MemberVO)session.getAttribute("lvo");
		List<PostVO> list = dao.postAllList();
		request.setAttribute("list", list);
		String mem_id = vo.getMem_id();
		int myPC = dao.myPC(mem_id);
		int myPCC = dao.myPCC(mem_id);
		int myRC = dao.myRC(mem_id);
		int myRCC = dao.myRCC(mem_id);
		request.setAttribute("myPC", myPC);
		request.setAttribute("myPCC", myPCC);
		request.setAttribute("myRC", myRC);
		request.setAttribute("myRCC", myRCC);

		System.out.println("마이페이지 세션정보 "+session.getAttribute("lvo"));
		System.out.println("마이페이지 게시글정보 "+list);
		System.out.printf("마이페이지 myPC %d, myPCC %d, myRC %d, myRCC %d " ,myPC,myPCC,myRC,myRCC);
		return "myPage";
	}

}
