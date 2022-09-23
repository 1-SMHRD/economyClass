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
<input> 탐색 필터설정(평점, 장르) 플랫폼설정<br>

<button onclick="location.href='${cpath}/toonDetail.do'">웹툰1</button> <br>
웹툰2 <br>
웹툰3 <br>

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
 



- 사용자는 탐색을 클릭한다.
- 사용자는 필터설정을 한다. (기본 값은 모든 웹툰 출력)
- 사용자는 웹툰 플랫폼 선택한다. (중복가능)
- 사용자는 평점 지수로 필터 설정한다.
- 사용자는 장르로 필터 설정한다.
- 사용자가 설정한 필터를 기반으로 웹툰을 나열한다.
- 사용자가 웹툰을 선택시 작품에 대한 정보를 조회한다.
</body>
</html>