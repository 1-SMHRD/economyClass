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
<link rel="stylesheet" type="text/css" href="${cpath}/utoon/css/bootstrap.min.css">
<!-- style css -->
<link rel="stylesheet" type="text/css" href="${cpath}/utoon/css/style.css">

</head>

<body>

	<!-- banner bg main start -->
	<div class="banner_bg_main">
		<!-- header top section start -->
		<div class="container">
			<div class="header_section_top">
				<div class="row">
					<div class="col-sm-12">
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

	<div class="container">

		<div>
			<h3 class="hm_comment">
				<a href="mypage.html">마이페이지</a> > 내 게시글
			</h3>
		</div>

		<h3 class="head_comment">📰 내 게시글</h3>

		<button onclick="history.back()">뒤로가기</button>
		<br>
	</div>


	<!-- 내 게시글 시작 -->

	<div class="container">
		<div class="story_text_head">
			<div class="story_title">
				<div class="rv_name_t">게시글 제목</div>
				<div class="rv_view_t">조회수</div>
				<div class="rv_date_t">작성일자</div>
			</div>
		</div>
	</div>

	<c:forEach var="post" items="${myPost}">
		<div class="container">
			<div class="story_text_content">
				<div class="st">
					<h6 class="rv_name">
						<a href="${cpath}/postDetail.do?post_num=${post.post_num}">${post.post_title}</a>
					</h6>

					<h6 class="rv_view">작성일 ${post.post_date}</h6>
					<h6 class="rv_date">조회수 ${post.post_vcnt}명</h6>
				</div>
			</div>
		</div>

	</c:forEach>



</body>
</html>