package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MemberVO;
import dao.UtoonDAO;

public class editProfileFormController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		
		String mem_nick = request.getParameter("mem_nick");
		String mem_pw = request.getParameter("mem_pw");
		String mem_img = request.getParameter("mem_img");
		String mem_sns = request.getParameter("mem_sns");
		String mem_cmt = request.getParameter("mem_cmt");
		
		UtoonDAO dao = new UtoonDAO();
		MemberVO vo = (MemberVO)session.getAttribute("lvo");
		String mem_id = vo.getMem_id();
		
//		vo.setMem_id(mem_id);
		vo.setMem_nick(mem_nick);
		vo.setMem_pw(mem_pw);
		vo.setMem_img(mem_img);
		vo.setMem_sns(mem_sns);
		vo.setMem_cmt(mem_cmt);
		dao.editProfile(vo);
		
		System.out.println("프로필수정폼 세션정보 " + session.getAttribute("lvo"));
		
		return "redirect:/myPage.do";
		
		
		
	}

}
