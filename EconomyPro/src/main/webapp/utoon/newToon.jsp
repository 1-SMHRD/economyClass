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
신작

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
  <button onclick="location.href='${cpath}/myPage.do'">마이페이지</button>
  <br>
 




- 사용자는 신작을 클릭한다.
- 사용자는 다섯 개의 웹툰 사이트 중 원하는 플랫폼을 선택한다. [중복 가능]
- 신작 웹툰 작품을 등록일 기준 최신순으로 나열해서 사용자에게 보여준다.
- 사용자가 원하는 신작 작품을 선택하면 웹툰에 대한 정보와 해당 웹툰을 제공하는 플랫폼으로 연결해준다. 
</body>
</html>