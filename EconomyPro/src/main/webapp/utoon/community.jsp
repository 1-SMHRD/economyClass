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
								src="${cpath}/utoon/images/logo.png" alt="">
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
			<div class="carousel-inner">
				<div class="carousel-item active">
					<div class="container">
						<h1 class="community_taital" style="color: #303952">커뮤니티
							인기글🔥</h1>



						<div class="fashion_section_2">
							<div class="row">
								<c:forEach var="post" items="${list}">
									<!-- 여기서부터 반복 -->
									<div class="col-lg-6 col-sm-6">
										<div class="box_main">
											<h4 class="communitybox_text">${post.post_num}번째글</h4>
											<p class="community_text">${post.post_ctnt}</p>

											<div class="btn_main">
												<div class="write_bt">
													<a href="#">${post.mem_id}</a>
												</div>
												<div class="seemore_bt">
													<a href="#">See More</a>
												</div>
											</div>
										</div>
									</div>
									<!-- 끝 -->
								</c:forEach>


		<!-- 						<div class="col-lg-6 col-sm-6">
									<div class="box_main">
										<h4 class="communitybox_text">2번째 글</h4>
										<p class="community_text">커뮤니티 2</p>

										<div class="btn_main">
											<div class="write_bt">
												<a href="#">글쓴이2</a>
											</div>
											<div class="seemore_bt">
												<a href="#">See More</a>
											</div>
										</div>
									</div>
								</div>
								<div class="col-lg-6 col-sm-6">
									<div class="box_main">
										<h4 class="communitybox_text">3번째 글</h4>
										<p class="community_text">커뮤니티 3</p>

										<div class="btn_main">
											<div class="write_bt">
												<a href="#">글쓴이3</a>
											</div>
											<div class="seemore_bt">
												<a href="#">See More</a>
											</div>
										</div>
									</div>
								</div>
								<div class="col-lg-6 col-sm-6">
									<div class="box_main">
										<h4 class="communitybox_text">4번째 글</h4>
										<p class="community_text">커뮤니티 4</p>

										<div class="btn_main">
											<div class="write_bt">
												<a href="#">글쓴이3</a>
											</div>
											<div class="seemore_bt">
												<a href="#">See More</a>
											</div>
										</div>
									</div>
								</div> -->
								
								
								
							</div>
						</div>
						
					</div>
				</div>
			</div>
			<div class="carousel-item">
				<div class="container">
					<h1 class="community_taital" style="color: #303952">커뮤니티 인기글
						🔥</h1>
					<div class="fashion_section_2">
						<div class="row">
							<div class="col-lg-6 col-sm-6">
								<div class="box_main">
									<h4 class="communitybox_text">4번째 글</h4>
									<p class="community_text">커뮤니티 4</p>

									<div class="btn_main">
										<div class="write_bt">
											<a href="#">글쓴이4</a>
										</div>
										<div class="seemore_bt">
											<a href="#">See More</a>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-6 col-sm-6">
								<div class="box_main">
									<h4 class="communitybox_text">5번째 글</h4>
									<p class="community_text">커뮤니티 5</p>

									<div class="btn_main">
										<div class="write_bt">
											<a href="#">글쓴이5</a>
										</div>
										<div class="seemore_bt">
											<a href="#">See More</a>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-6 col-sm-6">
								<div class="box_main">
									<h4 class="communitybox_text">6번째 글</h4>
									<p class="community_text">커뮤니티 6</p>

									<div class="btn_main">
										<div class="write_bt">
											<a href="#">글쓴이6</a>
										</div>
										<div class="seemore_bt">
											<a href="#">See More</a>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-6 col-sm-6">
								<div class="box_main">
									<h4 class="communitybox_text">6번째 글</h4>
									<p class="community_text">커뮤니티 6</p>

									<div class="btn_main">
										<div class="write_bt">
											<a href="#">글쓴이6</a>
										</div>
										<div class="seemore_bt">
											<a href="#">See More</a>
										</div>
									</div>
								</div>
							</div>

						</div>
					</div>


				</div>
			</div>
		</div>

      <a class="carousel-control-prev" href="#main_slider" role="button" data-slide="prev">
         <i class="fa fa-angle-right"></i>
      </a>
      <br>
      <div class="container">
         <div id="c_box">
            <table id="c_box_table">
               <tr id="c_box_tr1">
                  <th id="c_box_rv"> 내 댓글</th>
                  <th id="c_box_th"><a href="box2_댓글_p1.html">0개</a></th>
               </tr>
               <tr id="c_box_tr2">
                  <th id="c_box_rv"> 내 게시글</th>
                  <th id="c_box_th"><a href="0개">0개</a></th>
               </tr>
            </table>
         </div>

         <div id="write2">
            <input id="write3" type="text" placeholder="짧게라도좋으니글을작성해주세요!">
            <a href="#" type="button" class="btn33">글쓰기</a>
         </div>

         <div class="text-center">
            <div class="communitywrite"><a href="community_write.html">
                  <!-- <button type="button" class="btn_c_box">글쓰기</button></div> -->

                  <a class="carousel-control-next" href="#main_slider" role="button" data-slide="next">
                     <i class="fa fa-angle-left"></i>
                  </a>
            </div>
         </div>


      </div>
	<!-- fashion section end -->





	<!-- Page section -->
	<section class="page-section community-page set-bg"
		data-setbg="images/community-bg.jpg">
		<div class="community-warp spad">
			<div class="container">
				<div class="row">
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
				</div>
				<ul class="community-post-list">
					<li>
						<div class="community-post">
							<div class="author-avator set-bg">
								<img src="images/authors/1.jpg">
							</div>
							<div class="post-content">
								<h5>
									James Smith<span>posted an update</span>
								</h5>
								<div class="post-date">June 21, 2018</div>
								<p>${post.post_ctnt}</p>
							</div>
						</div>
					</li>
					<li>
						<div class="community-post">
							<div class="author-avator set-bg">
								<img src="images/authors/8.jpg">
							</div>
							<div class="post-content">
								<h5>
									Partik Williams<span>posted an update</span>
								</h5>
								<div class="post-date">June 21, 2018</div>
								<p>Lorem ipsum dolor sit amet, cdictum nisl onsectetur
									adipisc ing ipsum dolor sit ame. Lorem ipsum dolor sit amet,
									consectetur adipisc ing ipsum dolor sit ame.Donec venenatis at
									eros sit amet aliquam. Donec vel orci efficitur, dictum nisl
									vitae, scelerisque nibh. Curabitur eget ipsum pulvinar nunc
									gravida interdum.</p>
								<div class="attachment-file">
									<img src="images/attachment.jpg" alt="">
								</div>
							</div>
						</div>
					</li>
					<li>
						<div class="community-post">
							<div class="author-avator set-bg">
								<img src="images/authors/5.jpg">
							</div>
							<div class="post-content">
								<h5>
									Cris The Man<span>posted an update</span>
								</h5>
								<div class="post-date">June 21, 2018</div>
								<p>Lorem ipsum dolor sit amet, cdictum nisl onsectetur
									adipisc ing ipsum dolor sit ame. Lorem ipsum dolor sit amet,
									consectetur adipisc ing ipsum dolor sit ame.Donec venenatis at
									eros sit amet aliquam. Donec vel orci efficitur, dictum nisl
									vitae, scelerisque nibh. Curabitur eget ipsum pulvinar nunc
									gravida interdum.</p>
							</div>
						</div>
					</li>
					<li>
						<div class="community-post">
							<div class="author-avator set-bg">
								<img src="images/authors/1.jpg">
							</div>
							<div class="post-content">
								<h5>
									James Smith<span>posted an update</span>
								</h5>
								<div class="post-date">June 21, 2018</div>
								<p>Lorem ipsum dolor sit amet, cdictum nisl onsectetur
									adipisc ing ipsum dolor sit ame. Lorem ipsum dolor sit amet,
									consectetur adipisc ing ipsum dolor sit ame.Donec venenatis at
									eros sit amet aliquam. Donec vel orci efficitur, dictum nisl
									vitae, scelerisque nibh. Curabitur eget ipsum pulvinar nunc
									gravida interdum.</p>
							</div>
						</div>
					</li>
					<li>
						<div class="community-post">
							<div class="author-avator set-bg">
								<img src="images/authors/4.jpg">
							</div>
							<div class="post-content">
								<h5>
									Cris The Man<span>posted an update</span>
								</h5>
								<div class="post-date">June 21, 2018</div>
								<p>Lorem ipsum dolor sit amet, cdictum nisl onsectetur
									adipisc ing ipsum dolor sit ame. Lorem ipsum dolor sit amet,
									consectetur adipisc ing ipsum dolor sit ame.Donec venenatis at
									eros sit amet aliquam. Donec vel orci efficitur, dictum nisl
									vitae, scelerisque nibh. Curabitur eget ipsum pulvinar nunc
									gravida interdum.</p>
							</div>
						</div>
					</li>
					<li>
						<div class="community-post">
							<div class="author-avator set-bg">
								<img src="images/authors/6.jpg">
							</div>
							<div class="post-content">
								<h5>
									James Smith<span>posted an update</span>
								</h5>
								<div class="post-date">June 21, 2018</div>
								<p>Lorem ipsum dolor sit amet, cdictum nisl onsectetur
									adipisc ing ipsum dolor sit ame. Lorem ipsum dolor sit amet,
									consectetur adipisc ing ipsum dolor sit ame.Donec venenatis at
									eros sit amet aliquam. Donec vel orci efficitur, dictum nisl
									vitae, scelerisque nibh. Curabitur eget ipsum pulvinar nunc
									gravida interdum.</p>
							</div>
						</div>
					</li>
					<li>
						<div class="community-post">
							<div class="author-avator set-bg">
								<img src="images/authors/7.jpg">
							</div>
							<div class="post-content">
								<h5>
									Maria Doe<span>posted an update</span>
								</h5>
								<div class="post-date">June 21, 2018</div>
								<p>Lorem ipsum dolor sit amet, cdictum nisl onsectetur
									adipisc ing ipsum dolor sit ame. Lorem ipsum dolor sit amet,
									consectetur adipisc ing ipsum dolor sit ame.Donec venenatis at
									eros sit amet aliquam. Donec vel orci efficitur, dictum nisl
									vitae, scelerisque nibh. Curabitur eget ipsum pulvinar nunc
									gravida interdum.</p>
							</div>
						</div>
					</li>
				</ul>
				<div class="site-pagination sp-style-2">
					<span class="active">01.</span> <a href="#">02.</a> <a href="#">03.</a>
				</div>
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