<%@page import="dao.MemberVO"%>
<%@page import="dao.ReviewVO"%>
<%@page import="java.util.List"%>

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
    <title>Document</title>

    <!-- bootstrap css -->
    <link rel="stylesheet" type="text/css" href="${cpath}/utoon/cpacss/bootstrap.min.css">
    <!-- style css -->
    <link rel="stylesheet" type="text/css" href="${cpath}/utoon/css/style.css">


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
     
     <br>
     <br>
    
     
     <br>
     
    </div>

    <br><br><br><br><br>

    <div class="container">
        <div>
            <h3 class="hm_comment"><a href="${cpath}/myPage.do">마이페이지</a> > 내 리뷰 </h3>
        </div>
        <br>

        <h3 class="head_comment"> 👍 내가 작성한 리뷰 </h3>

        <div class="page_ment">
            <span class="rv_1">
                <h6 class="rv_data"> -현재 1페이지 입니다-</h6>
            </span>
        </div>

        <!-- 찜한 작품 박스 시작 -->
        <section class="box_review container">
            <div class="review_text">
                <span class="rv_1">
                    <h6 class="rv_name"> 독립일기</h6><br>
                    <h6 class="rv_data"> 2022-09-30</h6>
                    매 회차마다 공감이 정말 잘 되는 만화
                </span>
            </div>
            <div class="review_text">
                <span class="rv_1">
                    <h6 class="rv_name"> 여신강림</h6><br>
                    <h6 class="rv_data"> 2022-09-30</h6>
                    초반에는 탄탄한 스토리와  빠른 전개로 재미있으나 후반에는 끄는 듯한 느낌
                </span>
            </div>

        </section>
         <button class="rv_btn"><a href="${cpath}/community.do">리뷰쓰러가기 👀</a></button>
       </div>



        <!-- 하단 페이지 버튼 -->
        <!-- <form class="page_btn">
            <a>-</a>
            <a href="box2_댓글_p1.html">1</a>
            <a href="box2_댓글_p2.html">2</a>
            <a>-</a>
        </form> -->



</body>

</html>