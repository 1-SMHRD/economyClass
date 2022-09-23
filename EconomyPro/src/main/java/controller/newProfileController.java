package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MemberVO;
import dao.UtoonDAO;


public class newProfileController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		UtoonDAO dao = new UtoonDAO();
		String mem_id = request.getParameter("mem_id");
		String mem_pw = request.getParameter("mem_pw");
		String mem_nick = request.getParameter("mem_nick");
	
		MemberVO vo = new MemberVO();

		vo.setMem_id(mem_id);
		vo.setMem_pw(mem_pw);
		vo.setMem_nick(mem_nick);
		dao.newProfile(vo);
		
		return "redirect:/loginForm.do";
	}

}
