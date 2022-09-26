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
                    <a href="Home.html">
                        <img src="images/logo.png" alt="">
                    </a>
                 </div>
                 <!-- 왼쪽 최상단 로고 END-->
                        <div class="custom_menu" style="font-size: 15;">
                            <ul>
                                <li><a href="Home.html">홈</a></li>
                                <li><a href="collection.html">컬렉션</a></li>
                                <li><a href="community.html">커뮤니티</a></li>
                                <li><a href="quest.html">탐색</a></li>
                                <li><a href="new.html">신작</a></li>
                                <li><a href="mypage.html">마이페이지</a></li>
                            </ul>
                        </div>
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

    <div class="container">
    <h3 class="hm_want"><a href="mypage.html">마이페이지</a> > 찜했어요 </h3>
    <!-- 찜한 작품 박스 시작 -->
    <section class="box_want">
        <h3 class="head_title_w">💎 내가 찜한 작품 </h3>
        <!-- 🧨🧨🧨기능구현 어떻게 해야 되는지 확인하기 🧨🧨🧨 -->
        <div class="want_text">찜한목록이 없습니다.ㅠㅠ</div>
    </section>

    </div>
    



















<button onclick="history.back()">Back</button> <br>
스크랩

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