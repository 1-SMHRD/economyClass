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
커뮤니티

<button onclick="location.href='${cpath}/myPost.do'">내글보기</button><br>

<button onclick="location.href='${cpath}/postDetail.do'">글1</button><br>
글2 <br>
글3 <br>
글4 <br>
글5 <br>

<!-- 1,2,3,4,5페이지로 나눠서 볼 수 있도록 구현했으면 좋겠다-->


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
 

1. 
- 메뉴의 커뮤니티 클릭한다.
- 작성된 글이 나열된다.
- 사용자는 커뮤니티에 작성된 글을 읽을 수 있다.
- 게시된 글의 조회수가 높아지면 인기 글로 등록할 수 있다.
2. 
- 사용자는 글 작성하기를 클릭해 이미지와 글을 작성한다.
 : 글 작성할 때 첨부하고자 하는 작품을 첨부할 수 있다.
- 사용자는 작성한 글수와 내용을 조회할 수 있다.
- 사용자는 작성한 리뷰수와 내용을 조회 할 수 있다.
- 사용자가 작성한 글에 한해 수정 및 삭제할 수 있다.
- 작성된 모든 글에 댓글을 작성할 수 있다.
</body>
</html>