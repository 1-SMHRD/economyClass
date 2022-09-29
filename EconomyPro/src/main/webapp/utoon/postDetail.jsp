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
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- mobile metas -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport" content="initial-scale=1, maximum-scale=1">
<!-- site metas -->
<title>Utoon - 웹툰 보기 전 필수 앱</title>
<meta name="keywords" content="">
<meta name="description" content="">
<meta name="author" content="">
<!-- bootstrap css -->
<link rel="stylesheet" type="text/css"
	href="${cpath}/utoon/css/bootstrap.min.css">
<!-- style css -->
<link rel="stylesheet" type="text/css"
	href="${cpath}/utoon/css/style.css">
<!-- Responsive-->
<link rel="stylesheet" href="${cpath}/utoon/css/responsive.css">
<!-- fevicon -->
<link rel="icon" href="${cpath}/utoon/images/fevicon.png"
	type="image/gif" />
<!-- Scrollbar Custom CSS -->
<link rel="stylesheet"
	href="${cpath}/utoon/css/jquery.mCustomScrollbar.min.css">
<!-- Tweaks for older IEs-->
<link rel="stylesheet"
	href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
<!-- fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap"
	rel="stylesheet">
<!-- font awesome -->
<link rel="stylesheet" type="text/css"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<!--  -->
<!-- owl stylesheets -->
<link
	href="https://fonts.googleapis.com/css?family=Great+Vibes|Poppins:400,700&display=swap&subset=latin-ext"
	rel="stylesheet">
<link rel="stylesheet" href="${cpath}/utoon/css/owl.carousel.min.css">
<link rel="stylesoeet"
	href="${cpath}/utoon/css/owl.theme.default.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css"
	media="screen">
<script type="text/javascript">
	function goDel(post_num){
		location.href="${cpath}/postDelete.do?post_num="+post_num;
	}
	function goUpdate(post_num){
		location.href="${cpath}/postUpdateForm.do?post_num="+post_num;
	}	 
</script>
</head>
<body>

<div class="banner_bg_main">
		<!-- header top section start -->
		<div class="container">
			<div class="header_section_top">
				<div class="row">
					<div class="col-sm-12">
						<!-- 왼쪽 최상단 로고 START-->
						<div class="header__logo" style="margin-left: 30px;">
							<a href="${cpath}/mainPage.do"> <img
								src="${cpath}/utoon/images/logo2.png"
								style="height: 50px; width: 60px; border-radius: 50%;" alt="">
							</a>
						</div>
						<!-- 왼쪽 최상단 로고 END-->
						<div class="custom_menu">
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
		<!-- header top section end -->
	</div>


	<div class="container">

		<div>
			<h3 class="hm_comment">
				<a href="${cpath}/myPost.do">내 게시글</a> > 게시글 상세보기
			</h3>
		</div>
		
		
		
	</div>

	
	
	
	
	
	
	<div class="container">
	<h3 class="head_comment">📰 내용</h3>
	
	<!-- 게시글제목(링크로 상세페이지연결) -->
	<section style="backgroud-color : #5e27cd2a;">
	
	<div class="container">
	<table>
		<tr>
			<td>내용 ${post.post_ctnt}</td>
		</tr>
	</table>
	</div>
	</section>
		<div class="spc">
	<!-- 게시글 상세 시작  -->
	<%-- <table>
		<tr>
			<td>제목 ${post.post_title}</td>
			
			<!-- 게시글작성자ID -->
			<td>작성자 ${post.mem_id}</td>

			<!-- 작성일 -->
			<td>작성일 ${post.post_date}</td>

			<!-- 내용  -->
			<td>내용 ${post.post_ctnt}</td>

			<!-- 조회수  -->
			<td>조회수 ${post.post_vcnt}명</td>

			<!-- 웹툰태그(링크로 상세페이지연결) -->
			<td><a href="${cpath}/toonDetail.do?wt_id=${post.wt_id}">연결된웹툰
					${post.wt_id} </a></td>

		</tr>
	</table> --%>
	<br></div>
	<!-- 게시글 상세 끝 -->
	</div>
	<hr>
	<!-- 댓글 시작  -->
	<div class="container">
	<h3 class="head_comment">📰 댓글</h3>
	<c:forEach var="pc" items="${pc}">
		<table>
			<tr>

				<!-- 게시글제목(링크로 상세페이지연결) -->
				<td>작성자 : ${pc.mem_id}</td>

				<!-- 작성일 -->
				<td>내용 : ${pc.cmt_ctnt}</td>

				<!-- 조회수  -->
				<td>작성일 : ${pc.cmt_date}</td>

			</tr>
		</table>
	</c:forEach>
	</div>
	<!-- 댓글 끝  -->




	<div class="container">
	<br>
	<c:if test="${vo.mem_id eq post.mem_id}">
		<button class="btn btn-sm btn-success" onclick="goUpdate(${post.post_num})">수정</button>
		<button class="btn btn-sm btn-warning" onclick="goDel(${post.post_num})">삭제</button>
	</c:if>
	<c:if test="${vo.mem_id ne post.mem_id}">
		<button class="btn btn-sm btn-success" disabled="disabled"
			onclick="goUpdate(${post.post_num})">수정</button>
		<button class="btn btn-sm btn-warning" disabled="disabled"
			onclick="goDel(${post.post_num})">삭제</button>
	</c:if>

	<button type="button" class="btn btn-sm btn-info"
		onclick="location.href='${cpath}/community.do'">리스트</button>
	</div>
	
	
</body>
</html>