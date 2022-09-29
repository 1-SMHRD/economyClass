<%@page import="dao.MemberVO"%>
<%@page import="dao.PostVO"%>
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
<title>Utoon - 웹툰 보기 전 필수 앱</title>

<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>

<!-- bootstrap css -->
<link rel="stylesheet" type="text/css"
	href="${cpath}/utoon/css/bootstrap.min.css">
<!-- style css -->
<link rel="stylesheet" type="text/css"
	href="${cpath}/utoon/css/style.css">

</head>

<body>

	<!-- banner bg main start -->
	<div class="banner_bg_main">
		<!-- header top section start -->
		<div class="container">
			<div class="header_section_top">
				<div class="row">
					<div class="col-sm-12">
						<div class="header__logo" style="margin-left: 30px;">
							<a href="${cpath}/mainPage.do"> <img
								src="${cpath}/utoon/images/logo2.png"
								style="height: 50px; width: 60px; border-radius: 50%;" alt="">
							</a>
						</div>
						<div class="custom_menu" style="font-size: 15;">
							<ul>
								<li><a href="${cpath}/mainPage.do">홈</a></li>
								<li><a href="${cpath}/collection.do">컬렉션</a></li>
								<li><a href="${cpath}/community.do">커뮤니티</a></li>
								<li><a href="${cpath}/explore.do">탐색</a></li>
								<li><a href="${cpath}/newToon.do">신작</a></li>
								<li><a href="${cpath}/myPage.do">마이페이지</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<br>
	<br>
	<br>
	<br>

	<br>

	<div class="container">
		<h3 class="hm_saw">
			<a href="mypage.html">마이페이지</a> > 글쓰기
		</h3>
		<!-- 글쓰기 시작 -->
		<form action="${cpath}/postWriteForm.do">
		<section class="box_saw" style="margin-bottom: 100px;">
			<h3 class="head_title_saw" style="margin-left: 30px;">📗글쓰기</h3>

			<!-- 제목  -->
			<div style="margin-left: 25px; float: left; font-size: 18px;">제목</div>
			<div style="float: left; width: 540px;">
				<input type="text" name="post_title"
					style="height: 40px; width: 90%; margin-left: 30px; border-radius: 20px; border: 1px solid white; margin-bottom: 10px;">
			</div>
			<!-- 링크  -->
			<div style="padding-left: 20px; float: left; font-size: 18px;">링크</div>
			<input type="text" name="wt_id"
				style="height: 40px; width: 280px; margin-left: 30px; border-radius: 20px; border: 1px solid white; margin-bottom: 10px;">

			<!-- 뒤에 흰색 배경 -->
			<input type="text" name="post_ctnt"
				style="height: 500px; width: 94%; margin-left: 30px; border-radius: 20px; border: 1px solid white;">
			<button 
				style="margin-left: 450px; margin-top: 25px; font-size: 15px; background-color:#5e27cdf3; color:white; padding:3px; border-radius:10px;">
				 저장 
			</button>
			<button type="reset" 
			style="font-size: 15px; margin-left:5px;background-color:#5e27cdf3; color:white; padding:3px; border-radius:10px;" >
			취소
			</button>
		</section>
	</form>

	</div>



</body>
</html>