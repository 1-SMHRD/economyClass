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
<meta charset="UTF-8">
<title>Utoon - 웹툰 보기 전 필수 앱</title>




 <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <!-- bootstrap css -->
    <link rel="stylesheet" type="text/css" href="${cpath}/utoon/css/bootstrap.min.css">
    <!-- style css -->
    <link rel="stylesheet" type="text/css" href="${cpath}/utoon/css/style.css">

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
    <br><br><br><br>

    <div class="container">

       <div class="hm_watching">
        
        <h3><a href="${cpath}/mainPage.do">마이페이지</a> > 내 댓글 </h3>
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
    <c:forEach var="rc" items="${myRComment}">
        <div class="review_text">
            <span class="rv_1">
                <h6 class="rv_name"><a href="${cpath}/reviewDetail.do?post_num=${rv.rv_num}">${rv.rv_num}</a></h6>
                <h6 class="rv_data">${rv.cmt_date}</h6>
                ${rv.cmt_ctnt}
            </span>
        </div>
	</c:forEach>
	
    </section>

 <!--   하단 페이지 버튼                 이거 에이잭스 각인데!!
    <form class="page_btn">
        <a>-</a>
        <a href="box2_댓글_p1.html">1</a>
        <a href="box2_댓글_p2.html">2</a>
        <a>-</a>
    </form> 
    </div> -->
    




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