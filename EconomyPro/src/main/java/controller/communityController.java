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

public class communityController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		
		UtoonDAO dao = new UtoonDAO();
		MemberVO vo = (MemberVO)session.getAttribute("lvo");
		String mem_id = vo.getMem_id();
			
		List<PostVO> list = dao.postAllList();
		request.setAttribute("list", list);
		
		int myPC = dao.myPC(mem_id);
		request.setAttribute("myPC", myPC);
		
		int myPCC = dao.myPCC(mem_id);
		request.setAttribute("myPCC", myPCC);
		
		System.out.println("마이페이지 세션정보 "+session.getAttribute("lvo"));
		System.out.println("마이페이지 게시글정보 "+list);
		
		return "community";
	}

}
