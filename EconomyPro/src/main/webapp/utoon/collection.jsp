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
</head>
<body>
컬렉션

<!-- 누르면 에이잭스로 하단에 상세 카테고리나오게 하기 -->

<button>신작</button> <br>
<br>
<button>드라마로 만들어진 웹툰</button> <br>
<button onclick="location.href='${cpath}/toonDetail.do'">우영우</button> <br>
슬의생 <br>
원피스 <br>
<br>
<button>무료 완결 작품</button> <br>
<button>취향별 웹툰</button> <br>


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
 

 <br>
- 사용자는 컬렉션을 클릭한다. <br>
- 사용자는 테마(신작 추천, 드라마로 만들어진 웹툰, 완결 작품 중 무료 웹툰 구분, 취향별 웹툰 추천)중 하나를 선택한다. <br>
- 사용자가 선택한 테마에서 상세 카테고리를 선택한다. <br>
- 사용자가 필터 설정(웹툰 사이트 선택[중복 가능], 평점 순, 장르 별)을 하면 해당 웹툰 리스트를 생성한다. <br>
- 사용자가 원하는 웹툰을 선택하면 웹툰에 대한 정보와 해당 웹툰을 제공하는 플랫폼으로 연결해준다. <br>
- 사용자는 해당 웹툰에 대한 평점 작성, 리뷰 보기, 리뷰 쓰기를 할 수 있다. <br>
</body>
</html>