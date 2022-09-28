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
<link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
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
                  <a href="${cpath}/mainPage.do">
                      <img src="${cpath}/utoon/images/logo2.png" style="height: 50px; width: 60px; border-radius: 50%;" alt="">
                  </a>
               </div>
               <!-- 왼쪽 최상단 로고 END-->
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


	<div class="new_section container">
		<br>
		<!-- 필터 시작 -->
		<div class="filter container" style="font-size: 17px;">
   <label for="platform-select" style="font-weight: bold;">플랫폼  </label>
			<input type="checkbox"value="naver-webtoon">네이버웹툰
			<input type="checkbox" value="kakao-webtoon">카카오웹툰
			<input type="checkbox" value="lezin-webtoon">레진코믹스
			<input type="checkbox" value="top-webtoon">탑툰
			<input type="checkbox" value="toomics-webtoon">투믹스
			 <br> 
			<label for="point-select">UToon평점</label> 
			<select name="points" id="point-select" style="background-color: #5e27cd2a; border-radius: 30px;">
				<option value="" disabled selected>--선택해주세요--</option>
				<option value="5points">5점 이하</option>
				<option value="4points">4점 이하</option>
				<option value="3points">3점 이하</option>
				<option value="2points">2점 이하</option>
				<option value="1point">1점 이하</option>
			</select> <label for="theme-select">장르/테마</label> 
			<select name="themes" id="theme-select" style="background-color: #5e27cd2a; border-radius: 30px;">
				<option value="" disabled selected>--선택해주세요--</option>
				<option value="horror">공포</option>
				<option value="action">액션</option>
				<option value="comic">코믹</option>
				<option value="pure">순정</option>
				<option value="fantasy">판타지</option>
				<option value="bl/gl">BL/GL</option>
			</select> 
			<input type="button" value="검색" onclick="check()" style="background-color: #5e27cd2a; border-radius: 30px; border-color: #5e27cd2a;"/>
		</div>
		
		<!--필터 끝 -->


		<br> <br>
		<h1 class="new_title">작품 탐색 🔍</h1>
		<br>
		<div class="tl">
			<div class="card">
				<div class="up_webtoon">
					<div class="new_box">
						<a href="Home.html"><img src="./images/독립일기.PNG"></a> <span
							class="new_box_title">독립일기</span>
					</div>
					<div class="new_box">
						<a href="#"><img src="./images/여신강림.PNG"></a>
						<div class="new_box_title">여신강림</div>
					</div>
					<div class="new_box">
						<a href="#"><img src="./images/싸움독학.PNG"></a>
						<div class="new_box_title">싸움독학</div>
					</div>
					<div class="new_box">
						<a href="#"><img src="./images/이상한변호사 우영우.PNG"></a>
						<div class="new_box_title">이상한변호사우영우</div>
					</div>
					<div class="new_box">
						<a href="#"><img src="./images/별이삼샵.PNG"></a>
						<div class="new_box_title">별이삼샵</div>
					</div>
				</div>
			</div>
			<div class="card">
				<div class="up_webtoon">
					<div class="new_box">
						<a href="Home.html"><img src="./images/독립일기.PNG"></a> <span
							class="new_box_title">독립일기</span>
					</div>
					<div class="new_box">
						<a href="#"><img src="./images/여신강림.PNG"></a>
						<div class="new_box_title">여신강림</div>
					</div>
					<div class="new_box">
						<a href="#"><img src="./images/싸움독학.PNG"></a>
						<div class="new_box_title">싸움독학</div>
					</div>
					<div class="new_box">
						<a href="#"><img src="./images/이상한변호사 우영우.PNG"></a>
						<div class="new_box_title">이상한변호사우영우</div>
					</div>
					<div class="new_box">
						<a href="#"><img src="./images/별이삼샵.PNG"></a>
						<div class="new_box_title">별이삼샵</div>
					</div>
				</div>
			</div>
			<div class="card">
				<div class="up_webtoon">
					<div class="new_box">
						<a href="Home.html"><img src="./images/독립일기.PNG"></a> <span
							class="new_box_title">독립일기</span>
					</div>
					<div class="new_box">
						<a href="#"><img src="./images/여신강림.PNG"></a>
						<div class="new_box_title">여신강림</div>
					</div>
					<div class="new_box">
						<a href="#"><img src="./images/싸움독학.PNG"></a>
						<div class="new_box_title">싸움독학</div>
					</div>
					<div class="new_box">
						<a href="#"><img src="./images/이상한변호사 우영우.PNG"></a>
						<div class="new_box_title">이상한변호사우영우</div>
					</div>
					<div class="new_box">
						<a href="#"><img src="./images/별이삼샵.PNG"></a>
						<div class="new_box_title">별이삼샵</div>
					</div>
				</div>
			</div>
			<div class="card">
				<div class="up_webtoon">
					<div class="new_box">
						<a href="Home.html"><img src="./images/독립일기.PNG"></a> <span
							class="new_box_title">독립일기</span>
					</div>
					<div class="new_box">
						<a href="#"><img src="./images/여신강림.PNG"></a>
						<div class="new_box_title">여신강림</div>
					</div>
					<div class="new_box">
						<a href="#"><img src="./images/싸움독학.PNG"></a>
						<div class="new_box_title">싸움독학</div>
					</div>
					<div class="new_box">
						<a href="#"><img src="./images/이상한변호사 우영우.PNG"></a>
						<div class="new_box_title">이상한변호사우영우</div>
					</div>
					<div class="new_box">
						<a href="#"><img src="./images/별이삼샵.PNG"></a>
						<div class="new_box_title">별이삼샵</div>
					</div>
				</div>
			</div>
			<div class="card">
				<div class="up_webtoon">
					<div class="new_box">
						<a href="Home.html"><img src="./images/독립일기.PNG"></a> <span
							class="new_box_title">독립일기</span>
					</div>
					<div class="new_box">
						<a href="#"><img src="./images/여신강림.PNG"></a>
						<div class="new_box_title">여신강림</div>
					</div>
					<div class="new_box">
						<a href="#"><img src="./images/싸움독학.PNG"></a>
						<div class="new_box_title">싸움독학</div>
					</div>
					<div class="new_box">
						<a href="#"><img src="./images/이상한변호사 우영우.PNG"></a>
						<div class="new_box_title">이상한변호사우영우</div>
					</div>
					<div class="new_box">
						<a href="#"><img src="./images/별이삼샵.PNG"></a>
						<div class="new_box_title">별이삼샵</div>
					</div>
				</div>
			</div>
		</div>
		<!-- 타임라인 종료 -->

	</div>
	<script src="js/jquery.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.bundle.min.js"></script>
	<script src="js/jquery-3.0.0.min.js"></script>
	<script src="js/plugin.js"></script>
	<!-- sidebar -->
	<script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
	<script src="js/custom.js"></script>














	<input> 탐색 필터설정(평점, 장르) 플랫폼설정
	<br>

	<button onclick="location.href='${cpath}/toonDetail.do'">웹툰1</button>
	<br> 웹툰2
	<br> 웹툰3
	<br>

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
	<br> - 사용자는 탐색을 클릭한다. - 사용자는 필터설정을 한다. (기본 값은 모든 웹툰 출력) - 사용자는 웹툰
	플랫폼 선택한다. (중복가능) - 사용자는 평점 지수로 필터 설정한다. - 사용자는 장르로 필터 설정한다. - 사용자가 설정한
	필터를 기반으로 웹툰을 나열한다. - 사용자가 웹툰을 선택시 작품에 대한 정보를 조회한다.
</body>
</html>