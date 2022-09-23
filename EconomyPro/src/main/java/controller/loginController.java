package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MemberVO;
import dao.UtoonDAO;

public class loginController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("로그인호출");
		
		// 패러미터 수집(memId,memPwd)
		String mem_id = request.getParameter("mem_id");
		String mem_pw = request.getParameter("mem_pw");
		
		System.out.println(mem_id);
		System.out.println(mem_pw);
		
		MemberVO vo = new MemberVO();
		vo.setMem_id(mem_id);
		vo.setMem_pw(mem_pw);
					
		UtoonDAO dao = new UtoonDAO();
		MemberVO lvo = dao.memberLogin(vo);
		
		
		
		if (lvo != null) { // 로그인 성공 => [세션을 만들어 준다]
			System.out.println("성공");
			HttpSession session = request.getSession();
			// 객체 바인딩
			session.setAttribute("lvo", lvo);
			return "mainPage";
		}
		else {
			System.out.println("실패");
			return "redirect:/loginForm.do";
		}

	}

}
