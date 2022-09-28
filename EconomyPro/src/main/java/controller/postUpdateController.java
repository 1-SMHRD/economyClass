package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MemberVO;
import dao.PostVO;
import dao.UtoonDAO;

public class postUpdateController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		
		int post_num = Integer.parseInt(request.getParameter("post_num"));
		String post_title = request.getParameter("post_title");
		String post_ctnt = request.getParameter("post_ctnt");
		int wt_id = Integer.parseInt(request.getParameter("wt_id"));

		UtoonDAO dao = new UtoonDAO();
		MemberVO vo = (MemberVO) session.getAttribute("lvo");
		String mem_id = vo.getMem_id();
		PostVO post = new PostVO();
		post.setPost_num(post_num);
		post.setMem_id(mem_id);
		post.setPost_title(post_title);
		post.setPost_ctnt(post_ctnt);
		post.setWt_id(wt_id);
		dao.postUpdate(post);
		System.out.println("게시글업데이트완료 정보 " + post);
		return "redirect:/postDetail.do?post_num="+post_num;
	}

}

