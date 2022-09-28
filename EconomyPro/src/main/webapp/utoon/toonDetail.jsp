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
						<div class="header__logo">
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
		<!-- header top section end -->
	</div>
	<!-- header section end -->

	<!-- banner bg main end -->

	<!-- Breadcrumb section (분류 표기)-->
	<div class="breadcrumb-option">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="breadcrumb__links">
						<a href="${cpath}/mainPage.do"><i class="fa fa-home"></i> 홈</a> <a
							href="${cpath}/collection.do">컬렉션</a> <span>소년</span>

					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Breadcrumb End -->

	<!---------------------------
        collection section start 
    ------------------------------>
	<section class="collection-details spad">
		<div class="container">
			<div class="collection__details__content">
				<div class="row">
					<div class="col-lg-3">
						<div class="collection__details__pic set-bg">
							<img src="${cpath}/utoon/images/anime/details-pic.jpg">
							<div class="comment">
								<i class="fa fa-comments">16</i>
							</div>
							<div class="view">
								<i class="fa fa-eye">조회수</i>
							</div>
						</div>
					</div>
					<div class="col-lg-9">
						<div class="collection__details__text">
							<div class="collection__details__title">
								<h3>${wt.wt_title}제목</h3>

							</div>
							<!--레이팅넣는곳  -->
							<div class="collection__details__rating">
								<div class="rating">
									<a href="#"><i class="fa fa-star"></i></a> <a href="#"><i
										class="fa fa-star"></i></a> <a href="#"><i class="fa fa-star"></i></a>
									<a href="#"><i class="fa fa-star"></i></a> <a href="#"><i
										class="fa fa-star-half-o"></i></a>
								</div>
								<span>1.029 Votes</span>
							</div>
							<p>
								그것도 몇 장 나오지 않았던 엘리어스 가문의 다섯째 딸, 고도비반 히키코모리 영애인 테라
								엘리어스. 산넘어 산이라고 이 가문은 곧 역적으로 몰려 멸문하고, 직계가족은
								모두 단두대 행! 고로, 곧 테라도 죽는다.${wt.wt_detail}
							</p>
							<div class="collection__details__widget">
								<div class="row">
									<div class="col-lg-6 col-md-6">
										<ul>
											<li><span>분류:</span> ${wt.wt_gen}장르</li>
											<li><span>플랫폼:</span>${wt.wt_plat}플랫폼</li>
											<li><span>연재:</span> ${wt.up_date}월요일|독점</li>
											<li><span>글, 그림:</span>${wt.wt_auth}작가</li>
											<li><span>열람 등급:</span>${wt.wt_grd}등급</li>

										</ul>
									</div>			
								</div>
							</div>
							<div class="collection__details__btn">
								<a href="#" class="follow-btn"> &#128544; ${wt.wt_d_cnt} 별로에요</a>
								<a href="#"	class="follow-btn"> &#128522; ${wt.wt_l_cnt} 좋아요</a>
								<a href="에이잭스로 값만보내주고 리다이렉트"	class="follow-btn"><i class="fa fa-heart-o"></i> 스크랩하기</a>
								<a href="플랫폼링크" target="_blank" class="follow-btn"><span>Watch Now</span></a>
							</div>
							<br>	
							<br>
						</div>
					</div>
				</div>
				<!-- 리뷰 글 작성 START-->
				<div class="collection__details__form">
					<div class="section-title">
						<h5>Your Comment</h5>
					</div>
					<form action="에이잭스로 밑에 쓰기페이지 보여주기">
						<textarea placeholder="Your Comment"></textarea>
						<button type="submit">
							<i class="comment-btn"></i> Review
						</button>
					</form>
				</div>
				<br>
				<!-- 리뷰 글 작성 END-->
				<!-- 리뷰 글 내역 START-->
				<div class="row">
					<div class="col-lg-8 col-md-8">
						<div class="collection__details__review">
							<div class="section-title">
								<h5>Reviews</h5>
							</div>
							<c:forEach var="rv" items="${rv}">
							<div class="collection__review__item">
								<div class="collection__review__item__pic">
									<img src="images/anime/review-1.jpg" alt="">
								</div>
								<div class="collection__review__item__text">
									<h6>
										${rv.mem_id}<span>${rv.rv_date}작성일</span>
									</h6>
									<p>${rv.rv_ctnt}내용</p>
								</div>
							</div>
							</c:forEach>
							
						</div>

					</div>
					<!-- 리뷰 글 내역 END-->

					<!-- 작품 컬렉션 모듬 START-->
					<!-- <div class="col-lg-4 col-md-4">
						<div class="collection__details__sidebar">
							<div class="section-title">
								<h5>인기 Top 5 웹툰</h5>
							</div>
							<div class="product__sidebar__view__item set-bg">
								<img src="images/sidebar/tv-1.jpg">
								<div class="ep">18 / ?</div>
								<div class="view">
									<i class="fa fa-eye"></i> 9141
								</div>
								<h5>
									<a href="#">Boruto: Naruto next generations</a>
								</h5>
							</div>
							<div class="product__sidebar__view__item set-bg">
								<img src="images/sidebar/tv-2.jpg">
								<div class="ep">18 / ?</div>
								<div class="view">
									<i class="fa fa-eye"></i> 9141
								</div>
								<h5>
									<a href="#">The Seven Deadly Sins: Wrath of the Gods</a>
								</h5>
							</div>
							<div class="product__sidebar__view__item set-bg">
								<img src="images/sidebar/tv-3.jpg">
								<div class="ep">18 / ?</div>
								<div class="view">
									<i class="fa fa-eye"></i> 9141
								</div>
								<h5>
									<a href="#">Sword art online alicization war of underworld</a>
								</h5>
							</div>
							<div class="product__sidebar__view__item set-bg">
								<img src="images/sidebar/tv-4.jpg">
								<div class="ep">18 / ?</div>
								<div class="view">
									<i class="fa fa-eye"></i> 9141
								</div>
								<h5>
									<a href="#">Fate/stay night: Heaven's Feel I. presage
										flower</a>
								</h5>
							</div>
						</div>
					</div> -->
					<!-- 작품 컬렉션 모듬 END-->


				</div>

			</div>
		</div>
	</section>
	<!-- Anime Section End -->

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












상세페이지
<br>
<button onclick="history.back()">Back</button> <br>
리뷰 <br>
<button onclick="location.href='${cpath}/reviewDetail.do'">글1</button><br>
글2 <br>
글3 <br>

  <br>
  <br>
  <br>
  <br>
  <br>
  <button onclick="location.href='${cpath}/mainPage.do'">홈</button>
  <button onclick="location.href='${cpath}/collection.do'">컬렉션</button>
  <button onclick="location.href='${cpath}/community.do'">커뮤니티</button>
  <button onclick="location.href='${cpath}/explore.do'">탐색</button>
  <button onclick="location.href='${cpath}/newToon.do'">신작</button>
  <button onclick="location.href='${cpath}/myPage.do'">마이페이지</button>
  <br>
 
</body>
</html>