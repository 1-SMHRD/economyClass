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

public class myPostController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		
		UtoonDAO dao = new UtoonDAO();
		MemberVO vo = (MemberVO)session.getAttribute("lvo");
		String mem_id = vo.getMem_id();
		
		List<PostVO> myPost = dao.myPost(mem_id);
		request.setAttribute("myPost", myPost);
		
		return "myPost";
	}

}
