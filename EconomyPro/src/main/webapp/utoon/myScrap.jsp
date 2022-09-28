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
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <!-- style css -->
    <link rel="stylesheet" type="text/css" href="css/style.css">

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

  </div>
  </div>
  </div>
  </div>

<br>
<br>
<br>
<br>
<br>

    <div class="container" id="script_box1_line">

        <div>
            <h3 class="hm_comment"><a href="${cpath}/mypage.do">마이페이지</a> > 내 스크랩리스트 </h3>
        </div>

        <h3 class="head_comment"> ✔내 스크랩리스트 </h3>


        <!-- 타임라인 시작 -->


        <div class="script">
            <div class="script_box1">
                <div class="new_box">
                    <a href="#"><img src="./images/독립일기.PNG"></a>
                    <span class="new_box_title">독립일기</span>
                </div>
            </div>
            <div class="script_box1">
                <div class="new_box">
                    <a href="#"><img src="./images/여신강림.PNG"></a>
                    <div class="new_box_title">여신강림</div>
                </div>
            </div>
            <div class="script_box1">
                <div class="new_box">
                    <a href="#"><img src="./images/싸움독학.PNG"></a>
                    <div class="new_box_title">싸움독학</div>
                </div>
            </div>
            <div class="script_box1">
                <div class="new_box">
                    <a href="#"><img src="./images/속도위반로맨스.PNG"></a>
                    <div class="new_box_title">속도위반로맨스</div>
                </div>
            </div>
            <div class="script_box1">
                <div class="new_box">
                    <a href="#"><img src="./images/별이삼샵.PNG"></a>
                    <div class="new_box_title">별이삼샵</div>
                </div>
            </div>

        </div>
        <!-- 타임라인 종료 -->



        <!-- 웹툰 홈으로 이동 -->
        <button class="rv_btn"><a href="${cpath}/explore.do">더 스크랩하러가기 👀</a></button><br><br>
    

</body>
</html>