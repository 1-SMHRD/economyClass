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
		<!-- header top section end-->
	</div>
	<!-- banner bg main end -->

	<!-- fashion section start -->

	<div class="fashion_section">
		<div id="main_slider" class="carousel slide" data-ride="carousel">
			<div class="container">
				<h1 class="community_taital" style="color: #303952">커뮤니티 인기글🔥</h1>
			</div>

			<div class="carousel-inner">
				<div class="carousel-item active">
					<div class="container">
						<div class="fashion_section_2">
							<div class="row">

								<c:forEach var="post" items="${list}" begin="0" end="2" step="1"
									varStatus="status">
									<div class="col-md-4 col-sm-4">
										<div class="box_main container"
											onclick="location.href='${cpath}/postDetail.do?post_num=${post.post_num}'">
											<h4 class="communitybox_text">${status.index+1}번째글</h4>
											<p class="community_text">
												<a href="${cpath}/postDetail.do?post_num=${post.post_num}">${post.post_title}</a>
											</p>
											<div class="btn_main">
												<div class="write_bt">
													<p>${post.mem_id}</p>
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
						<div class="fashion_section_2">
							<div class="row">

								<c:forEach var="post" items="${list}" begin="3" end="5" step="1"
									varStatus="status">
									<div class="col-md-4 col-sm-4">
										<div class="box_main container"
											onclick="location.href='${cpath}/postDetail.do?post_num=${post.post_num}'">
											<h4 class="communitybox_text">${status.index+1}번째글</h4>
											<p class="community_text">
												<a href="${cpath}/postDetail.do?post_num=${post.post_num}">${post.post_title}</a>
											</p>

											<div class="btn_main">
												<div class="write_bt">
													<p>${post.mem_id}</p>
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
						<div class="fashion_section_2">
							<div class="row">

								<c:forEach var="post" items="${list}" begin="6" end="8" step="1"
									varStatus="status">
									<div class="col-md-4 col-sm-4">
										<div class="box_main container"
											onclick="location.href='${cpath}/postDetail.do?post_num=${post.post_num}'">
											<h4 class="communitybox_text">${status.index+1}번째글</h4>
											<p class="community_text">
												<a href="${cpath}/postDetail.do?post_num=${post.post_num}">${post.post_title}</a>
											</p>

											<div class="btn_main">
												<div class="write_bt">
													<p>${post.mem_id}</p>
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

	<div class="container">
		<div class="text-center">
			<div class="communitywrite" >
					<button type="button" class="btn btn-secondary disabled" onclick="location.href='${cpath}/postWrite.do'" >글쓰기</button>
			</div>
		</div>
	</div>
	<%-- <div class="container">
		<div id="c_box">
			<table id="c_box_table">
				<tr id="c_box_tr1">
					<th id="c_box_rv">내 댓글</th>
					<th id="c_box_th"><a href="${cpath}/myPComment.do">${myPCC}개</a></th>
				</tr>
				<tr id="c_box_tr2">
					<th id="c_box_rv">내 게시글</th>
					<th id="c_box_th"><a href="${cpath}/myPost.do">${myPC}개</a></th>
				</tr>
			</table>
		</div>

		<div id="write2" onclick="location.href='${cpath}/postWrite.do'">
			<input id="write3" type="text" placeholder="짧게라도좋으니글을작성해주세요!">
			<a href="${cpath}/postWrite.do" type="button" class="btn33">글쓰기</a>
		</div>

		<div class="text-center">
			<div class="communitywrite">
				<a href="community_write.html"> <!-- <button type="button" class="btn_c_box">글쓰기</button></div> -->

					<a class="carousel-control-next" href="#main_slider" role="button"
					data-slide="next"> <i class="fa fa-angle-left"></i>
				</a>
			</div>
		</div>


	</div> --%>





	<!-- Page section -->
	<section class="page-section community-page set-bg"
		data-setbg="${cpath}/utoon/images/community-bg.jpg"
		style="border-top: 1px solid #d3d3d3; border-top: 1px solid #d3d3d3; margin-top:25px">
		<div class="community-warp spad">
			<div class="container">
				<!-- <div class="row">
					<div class="col-md-6">
						<h3 class="community-top-title">All Members (100)</h3>
					</div>
					<div class="col-md-6 text-lg-right">
						<form class="community-filter">
							<label for="fdf5">Show</label> <select id="fdf5">
								<option value="#">Everything</option>
								<option value="#">Everything</option>
							</select>
						</form>
					</div>
				</div> -->
				<ul class="community-post-list">
					<c:forEach var="list" items="${list}">
						<li>
							<div class="community-post">
								<div class="author-avator set-bg">
									<img src="${cpath}/utoon/images/authors/8.jpg">
								</div>
								<div class="post-content"
									onclick="location.href='${cpath}/postDetail.do?post_num=${list.post_num}'">
									<h5>
										<span>${list.mem_id}</span>
									</h5>
									<div class="post-date">${list.post_date}</div>
									<div class="attachment-file">
										<p>${list.post_title}</p>
										<img src="${cpath}/utoon/images/attachment.jpg" alt="">
									</div>
								</div>
							</div>
						</li>
					</c:forEach>

				</ul>
				<!-- 	<div class="site-pagination sp-style-2">
								<span class="active">01.</span> <a href="#">02.</a> <a href="#">03.</a>
							</div> -->
			</div>
		</div>
	</section>
	<!-- Page section end -->


	<!-- footer section start -->
	<!-- <div class="footer_section layout_padding">
      <div class="container">
         <div class="footer_logo"><a href="index.html"><img src="images/footer-top-bg.png"></a></div>
         <div class="input_bt">
            <input type="text" class="mail_bt" placeholder="Your Email" name="Your Email">
            <span class="subscribe_bt" id="basic-addon2"><a href="#">Subscribe</a></span>
         </div>
         <div class="footer_menu">
            <ul>
               <li><a href="#">Best Sellers</a></li>
               <li><a href="#">Gift Ideas</a></li>
               <li><a href="#">New Releases</a></li>
               <li><a href="#">Today's Deals</a></li>
               <li><a href="#">Customer Service</a></li>
            </ul>
         </div>
         <div class="location_main">Help Line Number : <a href="#">+1 1800 1200 1200</a></div>
      </div>
   </div> -->
	<!-- footer section end -->
	<!-- copyright section start -->
	<!-- <div class="copyright_section">
      <div class="container">
         <p class="copyright_text">© 2020 All Rights Reserved. Design by <a href="https://html.design">Free html
               Templates</a></p>
      </div>
   </div> -->
	<!-- copyright section end -->
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