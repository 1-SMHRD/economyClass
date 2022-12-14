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


   <!-- basic -->
   <meta charset="utf-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <!-- mobile metas -->
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <meta name="viewport" content="initial-scale=1, maximum-scale=1">
   <!-- site metas -->
   <title>Electronic</title>
   <meta name="keywords" content="">
   <meta name="description" content="">
   <meta name="author" content="">
   <!-- bootstrap css -->
   <link rel="stylesheet" type="text/css" href="${cpath}/utoon/css/bootstrap.min.css">
   <!-- style css -->
   <link rel="stylesheet" type="text/css" href="${cpath}/utoon/css/style.css">
   <!-- Responsive-->
   <link rel="stylesheet" href="${cpath}/utoon/css/responsive.css">
   <!-- fevicon -->
   <link rel="icon" href="images/fevicon.png" type="image/gif" />
   <!-- Scrollbar Custom CSS -->
   <link rel="stylesheet" href="${cpath}/utoon/css/jquery.mCustomScrollbar.min.css">
   <!-- Tweaks for older IEs-->
   <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
   <!-- fonts -->
   <link href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap" rel="stylesheet">
   <!-- font awesome -->
   <link rel="stylesheet" type="text/css"
      href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
   <!--  -->
   <!-- owl stylesheets -->
   <link href="https://fonts.googleapis.com/css?family=Great+Vibes|Poppins:400,700&display=swap&subset=latin-ext"
      rel="stylesheet">
   <link rel="stylesheet" href="${cpath}/utoon/css/owl.carousel.min.css">
   <link rel="stylesoeet" href="${cpath}/utoon/css/owl.theme.default.min.css">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css"
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
                      <img src="${cpath}/utoon/images/logo2.png"
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
<br>


<div class="new_section container"><br>
    <h1 class="new_title">최신 연재 웹툰 ❗❗</h1><br>
 <!-- 타임라인 시작 -->
 <div class="tl">
   <div class="timeline">
      <div class="outer">
         <div class="dot"></div>
         <!-- 상단 업데이트 된 날짜 -->
         <h3 class="title_date"></h3>
         <div class="card">
            <div class="info">
               <!-- 업데이트 된 만화 플렛폼 -->
               <h3 class="title_site">네이버웹툰</h3>
               <!-- 업데이트 된 갯수 -->
               <h3 class="title">> 최신 연재 웹툰</h3>
            </div>
            <div class="up_webtoon">
               <div>
               <c:forEach var="NewNVWT" items="${NewNVWT}" begin="0" end="9" step="1" varStatus="status">
                <div class="new_box">   
                  <a href="${cpath}/toonDetail.do?wt_id=${NewNVWT.wt_id}"><img src="${NewNVWT.wt_thum}"/></a>
                  <div class="new_box_title" style="overflow: hidden; white-space: nowrap;text-overflow: ellipsis;">${NewNVWT.wt_title}</div>
               </div>
               </c:forEach>
               </div>
            </div>
            </div>
         </div>
         <div class="outer">
         <div class="dot"></div>
         <h3 class="title_date"></h3>
         <div class="card">
            <div class="info">
               <h3 class="title_site">카카오웹툰</h3>
               <h3 class="title">> 최신 연재 웹툰</h3>
            </div>
            <div>
               <c:forEach var="NewKKWT" items="${NewKKWT}" begin="0" end="9" step="1" varStatus="status">
                <div class="new_box">   
                  <a href="${cpath}/toonDetail.do?wt_id=${NewKKWT.wt_id}"><img src="${NewKKWT.wt_thum}"/></a>
                  <div class="new_box_title" style="overflow: hidden; white-space: nowrap;text-overflow: ellipsis;">${NewKKWT.wt_title}</div>
               </div>
               </c:forEach>
            </div>
         </div>
         </div>
         
         <div class="outer">
         <div class="dot"></div>
         <h3 class="title_date"></h3>
         <div class="card">
            <div class="info">
               <h3 class="title_site">레진코믹스</h3>
               <h3 class="title">> 최신 연재 웹툰</h3>
            </div>
            <div>
               <c:forEach var="NewLZWT" items="${NewLZWT}" begin="0" end="9" step="1" varStatus="status">
                <div class="new_box">   
                  <a href="${cpath}/toonDetail.do?wt_id=${NewLZWT.wt_id}"><img src="${NewLZWT.wt_thum}"/></a>
                  <div class="new_box_title" style="overflow: hidden; white-space: nowrap;text-overflow: ellipsis;">${NewLZWT.wt_title}</div>
               </div>
               </c:forEach>
            </div>
         </div>
         </div>
         
         <div class="outer">
         <div class="dot"></div>
         <h3 class="title_date"></h3>
         <div class="card">
            <div class="info">
               <h3 class="title_site">탑툰</h3>
               <h3 class="title">> 최신 연재 웹툰</h3>
            </div>
            <div>
               <c:forEach var="NewTTWT" items="${NewTTWT}" begin="0" end="9" step="1" varStatus="status">
                <div class="new_box">   
                  <a href="${cpath}/toonDetail.do?wt_id=${NewTTWT.wt_id}"><img src="${NewTTWT.wt_thum}"/></a>
                  <div class="new_box_title" style="overflow: hidden; white-space: nowrap;text-overflow: ellipsis;">${NewTTWT.wt_title}</div>
               </div>
               </c:forEach>
            </div>
         </div>
         </div>
         
         <div class="outer">
         <div class="dot"></div>
         <h3 class="title_date"></h3>
         <div class="card">
            <div class="info">
               <h3 class="title_site">투믹스</h3>
               <h3 class="title">> 최신 연재 웹툰</h3>
            </div>
            <div>
               <c:forEach var="NewTMWT" items="${NewTMWT}" begin="0" end="9" step="1" varStatus="status">
                <div class="new_box">   
                  <a href="${cpath}/toonDetail.do?wt_id=${NewTMWT.wt_id}"><img src="${NewTMWT.wt_thum}"/></a>
                  <div class="new_box_title" style="overflow: hidden; white-space: nowrap;text-overflow: ellipsis;">${NewTMWT.wt_title}</div>
               </div>
               </c:forEach>
            </div>
         </div>
      </div>
      </div>
   </div>
<!-- 타임라인 종료 -->



   

    <script src="${cpath}/utoon/js/jquery.min.js"></script>
    <script src="${cpath}/utoon/js/popper.min.js"></script>
    <script src="${cpath}/utoon/js/bootstrap.bundle.min.js"></script>
    <script src="${cpath}/utoon/js/jquery-3.0.0.min.js"></script>
    <script src="${cpath}/utoon/js/plugin.js"></script>
    <!-- sidebar -->
    <script src="${cpath}/utoon/js/jquery.mCustomScrollbar.concat.min.js"></script>
    <script src="${cpath}/utoon/js/custom.js"></script>


  <br>
  
- 사용자가 원하는 신작 작품을 선택하면 웹툰에 대한 정보와 해당 웹툰을 제공하는 플랫폼으로 연결해준다. 

</body>
</html>