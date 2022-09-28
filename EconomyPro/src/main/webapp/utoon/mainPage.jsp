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




<!-- basic -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- mobile metas -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport" content="initial-scale=1, maximum-scale=1">
<!-- site metas -->
<title>UTOON</title>
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
			<div class="header_section_top">
				<div class="row">
					<div class="col-sm-12">
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
		<!-- header top section start -->
		<!-- logo section start -->
		<div class="logo_section">
			<div class="container">
				<div class="row">
					<div class="col-sm-12">
						<div class="logo">
							<a href="Home.html"><img src="${cpath}/utoon/images/logo.png"></a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- logo section end -->
		<!-- header section start -->
		<div class="header_section">
			<div class="container">
				<div class="containt_main">
					<div class="main">
						<!-- Another variation with a button -->
						<div class="input-group">
							<input type="text" class="form-control"
								placeholder="작품명 / 작가 검색하기">
							<div class="input-group-append">
								<button class="btn btn-secondary" type="button"
									style="background-color: #6e3ecd; border-color: #6e3ecd">
									<i class="fa fa-search"></i>
								</button>
							</div>
						</div>
					</div>
					<div class="header_box">
						<div class="login_menu">
							<ul>
								<li><a href="#"> <i class="fa fa-user"
										aria-hidden="true"></i> <span class="padding_10">로그아웃</span></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- header section end -->

		<br> <br>


		<!-- banner bg main end -->
		<!-- 1. WEBTOON RANK section start 5개 플랫폼 10개씩 인기작품-->


		<div class="fashion_section"
			style="border-bottom: 1px solid #d3d3d3; border-top: 1px solid #d3d3d3; height: 850px">
			<div id="electronic_main_slider" class="carousel slide"
				data-ride="carousel">
				<div class="carousel-inner">
					<div class="carousel-item active">
						<div class="container" style="border-radius: 30px;">
							<h1 class="community_taital" style="color: #303952">오늘의
								'통합웹툰' 랭킹 🏆</h1>
							<div class="fashion_section_2">
								<div class="row">
									<div class="col-lg-4 col-md-4">
										<div class="box_main_lank">
											<ul class="shirt_text">
												<c:forEach var="rankAllWT" items="${rankAllWT}" begin="0"
													end="9" step="1" varStatus="status" >
													<li><span>${status.index+1} 위</span><a href="${cpath}/toonDetail.do?wt_id=${rankAllWT.wt_id}">${rankAllWT.wt_title}</a></li>
												</c:forEach>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="carousel-item">
						<div class="container">
							<h1 class="community_taital" style="color: #303952">오늘의
								'네이버웹툰' 랭킹 🏆</h1>
							<div class="fashion_section_2">
								<div class="row">
									<div class="col-lg-4 col-sm-4">
										<div class="box_main_lank">
											<ul class="shirt_text">
												<c:forEach var="rankNVWT" items="${rankNVWT}" begin="0"
													end="9" step="1" varStatus="status">
													<li><span>${status.index+1} 위</span><a
														href="https://comic.naver.com/webtoon/weekday">${rankNVWT.wt_title}</a></li>
												</c:forEach>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="carousel-item">
						<div class="container">
							<h1 class="community_taital" style="color: #303952">오늘의
								'카카오웹툰' 랭킹 🏆</h1>
							<div class="fashion_section_2">
								<div class="row">
									<div class="col-lg-4 col-sm-4">
										<div class="box_main_lank">
											<ul class="shirt_text">
												<c:forEach var="rankKKWT" items="${rankKKWT}" begin="0"
													end="9" step="1" varStatus="status">
													<li><span>${status.index+1} 위</span><a
														href="https://page.kakao.com/menu/10/screen/5">${rankKKWT.wt_title}</a></li>
												</c:forEach>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="carousel-item">
						<div class="container">
							<h1 class="community_taital" style="color: #303952">오늘의
								'레진코믹스' 랭킹 🏆</h1>
							<div class="fashion_section_2">
								<div class="row">
									<div class="col-lg-4 col-sm-4">
										<div class="box_main_lank">
											<ul class="shirt_text">
												<c:forEach var="rankLZWT" items="${rankLZWT}" begin="0"
													end="9" step="1" varStatus="status">
													<li><span>${status.index+1} 위</span><a
														href="https://www.lezhin.com/ko/ranking/detail?genre=_all&type=realtime">${rankLZWT.wt_title}</a></li>
												</c:forEach>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="carousel-item">
						<div class="container">
							<h1 class="community_taital" style="color: #303952">오늘의 '탑툰'
								랭킹 🏆</h1>
							<div class="fashion_section_2">
								<div class="row">
									<div class="col-lg-4 col-sm-4">
										<div class="box_main_lank">
											<ul class="shirt_text">
												<c:forEach var="rankTTWT" items="${rankTTWT}" begin="0"
													end="9" step="1" varStatus="status">
													<li><span>${status.index+1} 위</span><a
														href="https://toptoon.com/ranking">${rankTTWT.wt_title}</a></li>
												</c:forEach>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="carousel-item">
						<div class="container">
							<h1 class="community_taital" style="color: #303952">오늘의
								'투믹스' 랭킹 🏆</h1>
							<div class="fashion_section_2">
								<div class="row">
									<div class="col-lg-4 col-sm-4">
										<div class="box_main_lank">
											<ul class="shirt_text">
												<c:forEach var="rankTMWT" items="${rankTMWT}" begin="0"
													end="9" step="1" varStatus="status">
													<li><span>${status.index+1} 위</span><a
														href="https://www.toomics.com/webtoon/weekly">${rankTMWT.wt_title}</a></li>
												</c:forEach>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<a class="carousel-control-next" href="#electronic_main_slider"
					role="button" data-slide="next"> <i class="fa fa-angle-right"></i>
				</a> <a class="carousel-control-prev" href="#electronic_main_slider"
					role="button" data-slide="prev"> <i class="fa fa-angle-left"></i>
				</a>
			</div>
		</div>
		<!-- 1. WEBTOON RANK section start 5개 플랫폼 10개씩 인기작품 END-->

		<!--2. popular post section start 1~9개-->
		<div class="fashion_section" style="border-bottom: 1px solid #d3d3d3;">
			<div id="main_slider" class="carousel slide" data-ride="carousel">
				<div class="container">
					<h1 class="community_taital" style="color: #303952">커뮤니티 인기글🔥</h1>
				</div>
				<div class="carousel-inner">
					<div class="carousel-item active">
						<div class="container">
							<div class="fashion_section_2">
								<div class="row">

									<c:forEach var="popPost" items="${popPost}" begin="0" end="2"
										step="1" varStatus="status">
										<div class="col-md-4 col-sm-4">
											<div class="box_main container">
												<h4 class="communitybox_text">${status.index+1}번째글</h4>
												<p class="community_text">${popPost.post_title}</p>

												<div class="btn_main">
													<div class="write_bt">
														<a href="#">${popPost.mem_id}</a>
													</div>
													<div class="seemore_bt">
														<a href="#">See More</a>
													</div>
												</div>
											</div>
										</div>
									</c:forEach>

								</div>
							</div>
						</div>
					</div>
					<div class="carousel-item">
						<div class="container">
							<!-- 							<h1 class="community_taital" style="color: #303952">커뮤니티 인기글
								🔥</h1> -->
							<div class="fashion_section_2">
								<div class="row">

									<c:forEach var="popPost" items="${popPost}" begin="3" end="5"
										step="1" varStatus="status">
										<div class="col-md-4 col-sm-4">
											<div class="box_main container">
												<h4 class="communitybox_text">${status.index+1}번째글</h4>
												<p class="community_text">${popPost.post_title}</p>

												<div class="btn_main">
													<div class="write_bt">
														<a href="#">${popPost.mem_id}</a>
													</div>
													<div class="seemore_bt">
														<a href="#">See More</a>
													</div>
												</div>
											</div>
										</div>
									</c:forEach>

								</div>
							</div>
						</div>
					</div>
					<div class="carousel-item">
						<div class="container">
							<!-- 							<h1 class="community_taital" style="color: #303952">커뮤니티 인기글
								🔥</h1> -->
							<div class="fashion_section_2">
								<div class="row">

									<c:forEach var="popPost" items="${popPost}" begin="6" end="8"
										step="1" varStatus="status">
										<div class="col-md-4 col-sm-4">
											<div class="box_main container">
												<h4 class="communitybox_text">${status.index+1}번째글</h4>
												<p class="community_text">${popPost.post_title}</p>

												<div class="btn_main">
													<div class="write_bt">
														<a href="#">${popPost.mem_id}</a>
													</div>
													<div class="seemore_bt">
														<a href="#">See More</a>
													</div>
												</div>
											</div>
										</div>
									</c:forEach>

								</div>
							</div>
						</div>
					</div>
				</div>


				<a class="carousel-control-next" href="#main_slider" role="button"
					data-slide="next"> <i class="fa fa-angle-right"></i>
				</a> <a class="carousel-control-prev" href="#main_slider" role="button"
					data-slide="prev"> <i class="fa fa-angle-left"></i>
				</a>
			</div>
		</div>
		<!-- 2. popular post section start 1~9개 END -->

		<!-- 3. 광고배너입니다 start-->
		<div class="fashion_section5"
			style="border-bottom: 1px solid #d3d3d3;">
			<div id="electronic_main_slider2" class="carousel slide"
				data-ride="carousel">
				<div class="container">
					<h1 class="community_taital" style="color: #303952">광고 배너 👀</h1>
				</div>
				<div class="carousel-inner">
					<div class="carousel-item active">
						<c:forEach var="platEvent" items="${platEvent}" begin="0" end="1"
							step="2" varStatus="status">
							<div class="container">
								<div class="fashion_section_2">
									<div class="row">
										<div class="col-lg-4 col-sm-4">
											<div class="advertisement_box">
												<p></p>
												<div class="electronic_img">
													<a href="${platEvent.event_link}"><img
														src="${platEvent.event_banner}"></a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</c:forEach>

					</div>
					<c:forEach var="platEvent" items="${platEvent}" begin="1" end="4"
						step="1" varStatus="status">
						<div class="carousel-item">
							<div class="container">
								<div class="fashion_section_2">
									<div class="row">
										<div class="col-lg-4 col-sm-4">
											<div class="advertisement_box">
												<p></p>
												<div class="electronic_img">
													<a href="${platEvent.event_link}"><img
														src="${platEvent.event_banner}"></a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</c:forEach>

					<a class="carousel-control-next" href="#electronic_main_slider2"
						role="button" data-slide="next"> <i class="fa fa-angle-right"></i>
					</a> <a class="carousel-control-prev" href="#electronic_main_slider2"
						role="button" data-slide="prev"> <i class="fa fa-angle-left"></i>
					</a>
				</div>

				<a class="carousel-control-next" href="#electronic_main_slider2" role="button"
					data-slide="next"> <i class="fa fa-angle-right"></i>
				</a> <a class="carousel-control-prev" href="#electronic_main_slider2" role="button"
					data-slide="prev"> <i class="fa fa-angle-left"></i>
				</a>

			</div>
		</div>


		<!-- 3. 광고배너입니다 end-->

		<!-- 4. 추천 컬렉션 리스트 section start -->
		<div class="jewellery_section">
			<div id="jewellery_main_slider" class="carousel slide"
				data-ride="carousel">
				<div class="container">
					<h1 class="community_taital" style="color: #303952">추천 리스트💖</h1>
				</div>
				<div class="carousel-inner">
					<div class="carousel-item active">
						<div class="container">
							<div class="fashion_section_2">
								<div class="row">
									<c:forEach var="colList" items="${colList}" begin="0" end="2"
										step="1" varStatus="status">
										<div class="col-lg-4 col-sm-4">
											<div class="box_main">
												<h4 class="shirt_text">${colList.col_name}</h4>
												<p class="price_text">
													<span style="color: #262626;">${colList.col_content}</span>
												</p>
												<div class="electronic_img">
													<a href="#"><img src="${colList.col_banner}"></a>
												</div>
											</div>
										</div>
									</c:forEach>
								</div>
							</div>
						</div>
					</div>
					<div class="carousel-item">
						<div class="container">
							<!-- 							<h1 class="community_taital" style="color: #303952">추천 리스트
								💖</h1> -->
							<div class="fashion_section_2">
								<div class="row">
									<c:forEach var="colList" items="${colList}" begin="3" end="5"
										step="1" varStatus="status">
										<div class="col-lg-4 col-sm-4">
											<div class="box_main">
												<h4 class="shirt_text">${colList.col_name}</h4>
												<p class="price_text">
													<span style="color: #262626;">${colList.col_content}</span>
												</p>
												<div class="electronic_img">
													<a href="#"><img src="${colList.col_banner}"></a>
												</div>
											</div>
										</div>
									</c:forEach>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="carousel-item">
					<div class="container">
						<!-- 						<h1 class="community_taital" style="color: #303952">추천 리스트 💖</h1> -->
						<div class="fashion_section_2">
							<div class="row">
								<c:forEach var="colList" items="${colList}" begin="6" end="8"
									step="1" varStatus="status">
									<div class="col-lg-4 col-sm-4">
										<div class="box_main">
											<h4 class="shirt_text">${colList.col_name}</h4>
											<p class="price_text">
												<span style="color: #262626;">${colList.col_content}</span>
											</p>
											<div class="electronic_img">
												<a href="#"><img src="${colList.col_banner}"></a>
											</div>
										</div>
									</div>
								</c:forEach>
							</div>
						</div>
					</div>
				</div>

				<a class="carousel-control-next" href="#jewellery_main_slider"
					role="button" data-slide="next"> <i class="fa fa-angle-right"></i>
				</a> <a class="carousel-control-prev" href="#jewellery_main_slider"
					role="button" data-slide="prev"> <i class="fa fa-angle-left"></i>
				</a>
			</div>
		</div>
		<!-- 4. 추천 컬렉션 리스트 section end -->

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
</body>
</html>