<%@page import="dao.MemberVO"%>

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
    <title>Utoon - 웹툰 보기 전 필수 앱</title>
    
</head>
<body>
  <input onclick="location.href='${cpath}/search.do'"> <br>
  <button onclick="location.href='${cpath}/totalRanking.do'">웹툰 랭킹</button><br>
  <button onclick="location.href='${cpath}/toonDetail.do'">1</button> <br>
  2 <br>
  3 <br>
  4 <br>
  5 <br>
  <button onclick="location.href='${cpath}/community.do'">커뮤니티</button><br>
 <button onclick="location.href='${cpath}/postDetail.do'">1</button><br>
  2 <br>
  3 <br>
  4 <br>
  5 <br>
  <button onclick="location.href='${cpath}/explore.do'">추천리스트</button><br>
  1 <br>
  2 <br>
  3 <br>
  4 <br>
  5 <br>
  <button onclick="location.href='https://m.kinolights.com/'">키노라이츠(배너)</button><br>
  네이버 <br>
  카카오 <br>

  
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
 
 
- 사용자는 웹서비스 접속 후 아이디 비밀번호 입력하여 로그인 또는 회원가입 후 로그인 한다. <br>
- 로그인 후 작품 검색바와 간략화한 웹툰랭킹{(1~5)위 플랫폼별 필터링으로 좌우 슬라이드}을 제공받는다. <br>
- 그 아래에 커뮤니티 인기글 내용을 상기와 동일하게 제공받는다. <br>  
- 그 아래에 추천리스트 타이틀과 작품 목록을 상기와 동일하게 제공받는다. <br>
- 그 아래에 플랫폼별이벤트 배너 목록을 상기와 동일하게 제공 받는다. <br> 
- 최하단에 고정으로 컬렉션 기능/ 커뮤니티 기능/ 탐색 기능/ 신작 기능/ 마이페이지 기능 버튼을 제공 받는다. <br> 
  
  
</body>
</html>