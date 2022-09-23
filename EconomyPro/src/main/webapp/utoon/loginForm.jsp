<%@page import="dao.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>

<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Utoon - 웹툰 보기 전 필수 앱</title>

<link href="${cpath}/utoon/css/login.css" rel="stylesheet" />
<script src="${cpath}/utoon/js/login.js"></script>
</head>
<body>
	<!-- <h2>Weekly Coding Challenge #1: Sign in/up Form</h2> -->
	<h2></h2>
<div class="container" id="container">
	<div class="form-container sign-up-container">
		<form action="${cpath}/newProfile.do">
			<h1>UToon</h1>
			<!-- <div class="social-container">
				<a href="#" class="social"><i class="fab fa-facebook-f"></i></a>
				<a href="#" class="social"><i class="fab fa-google-plus-g"></i></a>
				<a href="#" class="social"><i class="fab fa-linkedin-in"></i></a>
			</div> -->
			<!-- <span>or use your email for registration</span> -->
			 <!-- 아이디 -->
			<input type="text" name="mem_id" placeholder="아이디" />
			<!-- 비밀번호 -->
			<input type="password" name="mem_pw" placeholder="비밀번호" />
			<!-- 이름 -->
			<input type="text" name="mem_nick" placeholder="이름" />
			
			<button>가입하기</button>
		</form>
	</div>
	<div class="form-container sign-in-container">
		<form action="${cpath}/login.do">
			<h1>Utoon</h1>
			<!-- <div class="social-container">
				<a href="#" class="social"><i class="fab fa-facebook-f"></i></a>
				<a href="#" class="social"><i class="fab fa-google-plus-g"></i></a>
				<a href="#" class="social"><i class="fab fa-linkedin-in"></i></a>
			</div> -->
			<!-- <span>or use your account</span> -->
			<input type="text" name="mem_id" placeholder="아이디" />
			<input type="password" name="mem_pw" placeholder="비밀번호" />

			<button>로그인</button>
		</form>
	</div>
	<div class="overlay-container">
		<div class="overlay">
			<div class="overlay-panel overlay-left">
				<h1>Welcome UToon!</h1>
				<!-- <p>To keep connected with us please login with your personal info</p> -->
				<button class="ghost" id="signIn">로그인</button>
			</div>
			<div class="overlay-panel overlay-right">
				<h1>Hello, Friend!</h1>
				<!-- <p>Enter your personal details and start journey with us</p> -->
				<button class="ghost" id="signUp">회원가입</button>
			</div>
		</div>
	</div>
</div>

<!-- <footer>
	<p>
		Created with <i class="fa fa-heart"></i> by
		<a target="_blank" href="https://florin-pop.com">Florin Pop</a>
		- Read how I created this and how you can join the challenge
		<a target="_blank" href="https://www.florin-pop.com/blog/2019/03/double-slider-sign-in-up-form/">here</a>.
	</p>
</footer> -->
	
	<!-- Javascipt -->
	<!-- <script src="login.js"></script> -->
</body>
</html>
