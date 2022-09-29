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
		<!-- 1. 탐색용 카테고리 선택 창 START-->
		<form action="${cpath}/exploreFilter.do">
			<div class="filter container">
				<label for="platform-select">플랫폼 : </label> <input type="checkbox"
					value="NV01" name="PLAT">네이버웹툰 <input type="checkbox"
					value="KK01" name="PLAT">카카오웹툰 <input type="checkbox"
					value="LZ01" name="PLAT">레진코믹스 <input type="checkbox"
					value="TT01" name="PLAT">탑툰 <input type="checkbox"
					value="TM01" name="PLAT">투믹스 <br> <label
					for="point-select">UToon평점 </label> <select name="points"
					id="point-select"
					style="background-color: #5e27cd2a; border-radius: 30px;">
					<option disabled selected>--선택해주세요--</option>
					<option value="90">90점 이상</option>
					<option value="80">80점 이상</option>
					<option value="60">60점 이상</option>
					<option value="40">40점 이상</option>
					<option value="20">20점 이상</option>
				</select> <label for="theme-select">장르/테마 </label> <select name="themes"
					id="theme-select"
					style="background-color: #5e27cd2a; border-radius: 30px;">
					<option value="" disabled selected>--선택해주세요--</option>
					<option value="공포">공포</option>
					<option value="액션">액션</option>
					<option value="코믹">코믹</option>
					<option value="순정_멜로">순정_멜로</option>
					<option value="판타지">판타지</option>
					<option value="일상">일상</option>
				</select>
				<button type="submit">검색</button>
			</div>

		</form>
		<!-- 1. 탐색용 카테고리 선택 창 END-->

		<!-- 2. 탐색 필터링된 작품 선택 창 START-->
		<br> <br>
		<h1 class="new_title">작품 탐색 🔍</h1>
		<br>

		<!-- exploreFilterController 를 거치지 않은 기본 전체 작품 나열/ 필터링된 상황 두가지로 else if 문임 -->
		<c:choose>
			<c:when test="${!empty list}">
				<c:forEach varStatus="stat" begin="0"
					end="${ list.size() % 5 == 0 ? list.size() / 5 : list.size() / 5}">
					<div class="card">
						<div class="up_webtoon">
							<c:forEach varStatus="j" begin="${ stat.index * 5 }"
								end="${ stat.index*5+4 >= list.size() ? list.size()-1 : stat.index * 5 + 4 }">

								<div class="new_box">
									<a href="Home.html"><img src="${list[j.index].wt_thum}"></a>
									<span class="new_box_title">${list[j.index].wt_title}</span>
								</div>
							</c:forEach>
						</div>
					</div>
				</c:forEach>
			</c:when>
			<c:otherwise>
				<c:forEach varStatus="stat" begin="0"
					end="${allList.size() % 5 == 0 ? allList.size() / 5 : allList.size() / 5}">
					<div class="card">
						<div class="up_webtoon">
							<c:forEach varStatus="j" begin="${stat.index * 5 }"
								end="${stat.index*5+4 >= allList.size() ? allList.size()-1 : stat.index * 5 + 4 }">

								<div class="new_box">
									<a href="Home.html"><img src="${allList[j.index].wt_thum}"></a>
									<span class="new_box_title">${allList[j.index].wt_title}</span>
								</div>
							</c:forEach>
						</div>
					</div>
				</c:forEach>
			</c:otherwise>
		</c:choose>
	</div>


	<!-- 2. 탐색 필터링된 작품 선택 창 END-->

	
	<script src="js/jquery.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.bundle.min.js"></script>
	<script src="js/jquery-3.0.0.min.js"></script>
	<script src="js/plugin.js"></script>
	<!-- sidebar -->
	<script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
	<script src="js/custom.js"></script>


</body>
</html>