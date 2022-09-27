<%@page import="dao.MemberVO"%>
<%@page import="dao.PostVO"%>
<%@page import="dao.PCommentVO"%>
<%@page import="java.util.List"%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<form action="${cpath}/postUpdateForm.do">
			<h1>UToon</h1>
			<!-- <div class="social-container">
				<a href="#" class="social"><i class="fab fa-facebook-f"></i></a>
				<a href="#" class="social"><i class="fab fa-google-plus-g"></i></a>
				<a href="#" class="social"><i class="fab fa-linkedin-in"></i></a>
			</div> -->
			<!-- <span>or use your email for registration</span> -->
			 <!-- 아이디 -->
			<input type="text" name="mem_id" placeholder="" />
			<!-- 비밀번호 -->
			<input type="password" name="mem_pw" placeholder="비밀번호" />
			<!-- 이름 -->
			<input type="text" name="mem_nick" placeholder="이름" />
			
			<button>가입하기</button>
		</form>
</body>
</html>