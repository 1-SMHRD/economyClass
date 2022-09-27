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
                  <a href="Home.html">
                      <img src="images/logo.png" alt="">
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

    <div class="logo_section">
        <div class="container">
           <div class="row">
              <div class="col-sm-12">
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
<br>


<div class="new_section container"><br>
   <div class="dropdown">
      <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton"
        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">플랫폼
     </button> 
     <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
        <a class="dropdown-item" href="#">네이버웹툰</a>
        <a class="dropdown-item" href="#">카카오웹툰</a>
        <a class="dropdown-item" href="#">레진코믹스</a>
        <a class="dropdown-item" href="#">탑툰</a>
        <a class="dropdown-item" href="#">코믹스</a>
     </div>
   </div>
    <h1 class="new_title">신작 업데이트 ❗❗</h1><br>
 <!-- 타임라인 시작 -->
 <div class="tl">
   <div class="timeline">
      <div class="outer">
         <div class="dot"></div>
         <!-- 상단 업데이트 된 날짜 -->
         <h3 class="title_date">2022-09-21</h3>
         <div class="card">
            <div class="info">
               <!-- 업데이트 된 만화 플렛폼 -->
               <h3 class="title_site">네이버</h3>
               <!-- 업데이트 된 갯수 -->
               <h3 class="title">> 5화 업데이트 됐습니다</h3>
            </div>
            <div class="up_webtoon">
               <div class="new_box">
                  <a href="Home.html"><img src="./images/독립일기.PNG"></a>
                  <span class="new_box_title">독립일기</span>
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
            <div class="info">
               <h3 class="title_site">봄툰</h3>
               <h3 class="title">> 3화 업데이트 됐습니다</h3>
            </div>
            <div>
               <div class="new_box">
                  <a href="#"><img src="./images/라온의남자.PNG"></a>
                  <div class="new_box_title">라온의남자</div>
               </div>
               <div class="new_box">
                  <a href="#"><img src="./images/속도위반로맨스.PNG"></a>
                  <div class="new_box_title">속도위반로맨스</div>
               </div>
               <div class="new_box">
                  <a href="#"> <img src="./images/햇빛은쨍쨍.PNG"></a>
                  <div class="new_box_title">햇빛은쨍쨍</div>
               </div>
            </div>
         </div>
         <div class="dot"></div>
         <h3 class="title_date">2022-09-20</h3>
         <div class="card">
            <div class="info">
               <h3 class="title_site">카카오</h3>
               <h3 class="title">> 1화 업데이트 됐습니다</h3>
            </div>
            <div>
               <div class="new_box">
                  <a href="#"><img src="./images/카카오1.PNG"></a>
                  <div class="new_box_title">우정으로결혼한소꿉친구</div>
               </div>
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















<%-- 신작

네이버 카카오 오마이걸 <br>

신작 웹툰~ <br>

<button onclick="location.href='${cpath}/toonDetail.do'">우엉우엉우</button> <br>
오마이걸 <br>
ac/dc <br>

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
  <button onclick="location.href='${cpath}/myPage.do'">마이페이지</button> --%>
  <br>
 




- 사용자는 신작을 클릭한다.
- 사용자는 다섯 개의 웹툰 사이트 중 원하는 플랫폼을 선택한다. [중복 가능]
- 신작 웹툰 작품을 등록일 기준 최신순으로 나열해서 사용자에게 보여준다.
- 사용자가 원하는 신작 작품을 선택하면 웹툰에 대한 정보와 해당 웹툰을 제공하는 플랫폼으로 연결해준다. 
</body>
</html>