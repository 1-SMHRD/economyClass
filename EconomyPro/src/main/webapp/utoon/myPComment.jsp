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
                        <div class="custom_menu" style="font-size: 15;">
                            <ul>
                                <li><a href="#">홈</a></li>
                                <li><a href="#">컬렉션</a></li>
                                <li><a href="#">커뮤니티</a></li>
                                <li><a href="#">탐색</a></li>
                                <li><a href="#">신작</a></li>
                                <li><a href="#">마이페이지</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <br><br><br><br>

    <div class="container">

       <div class="hm_watching">
        
        <h3><a href="mypage.html">마이페이지</a> > 내 댓글 </h3>
    </div>

    <!-- 검색창 -->
    <!-- <div class="input-group">
        <input type="text" class="form-control" placeholder="검색어를 입력해주세요">
        <div class="input-group-append">
            <button class="btn btn-secondary" type="button" style="background-color: #faca57; border-color:#faca57 ">
                <i class="fa fa-search"></i>
            </button>
        </div>
    </div> -->
  
    <!-- <div class="page_num">
        <span>-현재 1페이지 입니다-</span>
    </div> -->
    <h3 class="hm_watching"> ⌨ 내가 작성한 댓글 </h3>
    
    <div class="page_ment">
        <span class="rv_1">
            <h6 class="rv_data"> -현재 1페이지 입니다-</h6>
        </span>
    </div>


    <!-- 찜한 작품 박스 시작 -->
    <section class="box_review">
        <div class="review_text">
            <span class="rv_1">
                <h6 class="rv_name"> 독립일기</h6>
                <h6 class="rv_data"> 2022-09-30</h6>
                시간도둑하나가빠졌잖아요!!!! 독립일기가빠졌잖아여!!! 😤
            </span>
        </div>
        <div class="review_text">
            <span class="rv_1">
                <h6 class="rv_name"> 백수세끼</h6>
                <h6 class="rv_data"> 2022-09-30</h6>
                라면이 2500원 되게 싸다
            </span>
        </div>
        <div class="review_text">
            <span class="rv_1">
                <h6 class="rv_name"> 독립일기</h6>
                <h6 class="rv_data"> 2022-09-29</h6>
                ㄹㅇㅋㅋㅋㅋ 공감된다
            </span>
        </div>
        <div class="review_text">
            <span class="rv_1">
                <h6 class="rv_name"> 먹는인생</h6>
                <h6 class="rv_data"> 2022-09-28</h6>
                아무래도 전투식량이다보니 열량이 높을수밖에....
            </span>
        </div>
        <div class="review_text">
            <span class="rv_1">
                <h6 class="rv_name"> 여신강림</h6>
                <h6 class="rv_data"> 2022-09-26</h6>
                몇년동안봤던주경이얘기보다 희경이얘기가더재밌넼ㅋㅋㅋㅋ
            </span>
        </div>
        <div class="review_text">
            <span class="rv_1">
                <h6 class="rv_name"> 팔이피플</h6>
                <h6 class="rv_data"> 2022-09-24</h6>
                ???? 예희 나왔던 건물로 들어가는 것 같은데 주연이 차미미 파티 가는거임...?
            </span>
        </div>
        <div class="review_text">
            <span class="rv_1">
                <h6 class="rv_name"> 팔이피플</h6>
                <h6 class="rv_data"> 2022-09-10</h6>
                차미미 채린맘 얘기해주면서 예희 반응 초롱초롱하게 살피는거 ㄹㅇ 걍 흥밋거리 같아서 소오름
            </span>
        </div>
        <div class="review_text">
            <span class="rv_1">
                <h6 class="rv_name"> 독립일기</h6>
                <h6 class="rv_data"> 2022-09-15</h6>
                자까님 짱ㅋㅋㅋㅋㅋㅋ
            </span>
        </div>
        <div class="review_text">
            <span class="rv_1">
                <h6 class="rv_name"> 독립일기</h6>
                <h6 class="rv_data"> 2022-09-13</h6>
                앜ㅋㅋㅋ 진짜 완전 공감툰 ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ
            </span>
        </div>
        <div class="review_text">
            <span class="rv_1">
                <h6 class="rv_name"> 조조코믹스</h6>
                <h6 class="rv_data"> 2022-09-11</h6>
                볼링공으로 가린 거 보소 ㅋㅋㅋㅋㅋㅋㅋㅋ
            </span>
        </div>
    </section>

    <!-- 하단 페이지 버튼 -->
    <form class="page_btn">
        <a>-</a>
        <a href="box2_댓글_p1.html">1</a>
        <a href="box2_댓글_p2.html">2</a>
        <a>-</a>
    </form> 
    </div>
    








<button onclick="history.back()">Back</button> <br>
내 댓글


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