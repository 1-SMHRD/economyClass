<%@page import="dao.MemberVO"%>
<%@page import="dao.PostVO"%>
<%@page import="dao.ReviewVO"%>
<%@page import="dao.PCommentVO"%>
<%@page import="dao.RCommentVO"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<!-- basic -->
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
</head>
<body>
	<!-- banner bg main start -->
	<div class="banner_bg_main">
		<!-- header top section start -->
		<div class="container">
			<div class="header_section_top container">
				<div class="row">
					<div class="col-sm-12">
						<!-- 왼쪽 최상단 로고 START-->
						<div class="header__logo" style="margin-left: 30px;">
							<a href="${cpath}/mainPage.do"> <img
								src="${cpath}/utoon/images/logo2.png" style="height: 50px; width: 60px; border-radius: 50%;" alt="">
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

		<!-- header top section start -->

		<!-- 내정보 시작 -->
		<div class="logo_section">
			<div class="container">
				<div class="row">
					<div class="col-sm-12"></div>
				</div>
			</div>
		</div>
	</div>

	<br>
	<br>
	<br>
	<br>
	<div>
		<h1 class="myinfo">내정보</h1>
	</div>
	<br>
	<div>
		<img class="logo_img" src="${cpath}/utoon/images/마이페이지로고.png">
	</div>
	<br>
	<!-- #마이페이지 설정# -->
	<div id="setting">
		<br>
		<!-- ✨정보수정 페이지로 이동✨ -->
		<a href="${cpath}/editProfile.do"><img id="set"
			src="${cpath}/utoon/images/설정.png"></a>
	</div>
	<div>
		<ul class="id_email">
			<li>${lvo.mem_nick}</li>
			<li>${lvo.mem_id}</li>
			<li>${lvo.mem_sns}</li>
			<li>${lvo.mem_cmt}</li>
		</ul>
	</div>
	<br><br>

	<!-- header section end -->
	<!-- banner section start -->



	<div class="banner_section layout_padding" style="border-top: 1px solid #d3d3d3; border-bottom: 1px solid #d3d3d3;">
		<div class="container">
			<div id="my_slider" class="carousel slide" data-ride="carousel">
				<div class="carousel-inner">
					<div class="carousel-item active">
						<div class="row">
							<div class="col-sm-12">

								<div id="box_2th">
									<table id="box_2th_table">
										<tr id="box_2th_tr_1">
											<th id="box_2th_th_review">내 게시글</th>
											<th id="box_2th_th_rn"><a href="${cpath}/myPost.do">${myPC}개</a></th>
										</tr>
										<tr id="box_2th_tr_1">
											<th id="box_2th_th_review">내 게시글 댓글</th>
											<th id="box_2th_th_rn"><a href="${cpath}/myPComment.do">${myPCC}개</a></th>
										</tr>
										<tr id="box_2th_tr_1">
											<th id="box_2th_th_service">내 리뷰</th>
											<th id="box_2th_th_sn"><a href="${cpath}/myReview.do">${myRC}개</a></th>
										</tr>
										<tr id="box_2th_tr_1">
											<th id="box_2th_th_service">내 리뷰 댓글</th>
											<th id="box_2th_th_sn"><a href="${cpath}/myRComment.do">${myRCC}개</a></th>
										</tr>
									</table>
								</div>


							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>
	
	<!-- 스크랩 리스트가 있을 때 -->
								
								
								<div style="margin-top: 40px; height: 200px;" >
								<div class="container">
								<c:if test="${!empty list}">
								<div id="id_email">
									<h4 id="wantlist_h">내 스크랩리스트</h4>
									<button id="wantlist_btn"
										onclick="location.href='${cpath}/myScrap.do'">버튼이 H4내
										스크랩리스트 오른쪽으로</button>
									<br>
									<ul id="wantlist_text">

										<c:forEach var="vo" items="${list}">

											<tr>
												<td>웹툰썸네일이 나와줘야되고</td>
												<td><a
													href="${cpath}/toonDetail.do?scr_num=${vo.scr_num}">웹툰제목이나와야함</a></td>																								
											</tr>

										</c:forEach>




										<li>여기에 스크랩 목록 최신 5개 썸네일 제목만 한줄로 쭉 뽑아주기 까지 하면 마이페이지 완성!</li>
									</ul>
								</div>
								</c:if>
								<!-- 스크랩 리스트가 없을 때 -->
								<c:if test="${empty list}">
								<div id="wantlist">
									<h4 id="wantlist_h">내 스크랩리스트</h4>
									<br>
									<ul id="wantlist_text">
										<li>찜한 리스트가 아직 없습니다.</li>
										<li><button id="wantlist_btn"
												onclick="location.href='${cpath}/explore.do'">찜하러
												가기</button></li>
									</ul>
								</div>
								</c:if>
								</div>
								</div>
								<br> <br>
	<!-- banner section end -->

	
	<!-- Javascript files-->
	<script src="${cpath}/utoon/js/jquery.min.js"></script>
	<script src="${cpath}/utoon/js/popper.min.js"></script>
	<script src="${cpath}/utoon/js/bootstrap.bundle.min.js"></script>
	<script src="${cpath}/utoon/js/jquery-3.0.0.min.js"></script>
	<script src="${cpath}/utoon/js/plugin.js"></script>
	<!-- sidebar -->
	<script src="${cpath}/utoon/js/jquery.mCustomScrollbar.concat.min.js"></script>
	<script src="${cpath}/utoon/js/custom.js"></script>
	<script>
		function openNav() {
			document.getElementById("mySidenav").style.width = "250px";
		}

		function closeNav() {
			document.getElementById("mySidenav").style.width = "0";
		}
	</script>







	<%-- 
	<c:forEach var="vo" items="${list}">

		<tr>
			<td>${vo.post_num}</td>
			<td><a href="${cpath}/postDetail.do?post_num=${vo.post_num}">${vo.post_title}</a></td>
			<td>${vo.mem_id}</td>
			<td>${fn:split(vo.post_date," ")[0]}</td>
			<td>${vo.post_vcnt}</td>
		</tr>

	</c:forEach> --%>
</body>
</html>