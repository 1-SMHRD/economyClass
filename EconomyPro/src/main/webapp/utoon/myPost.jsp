<%@page import="dao.MemberVO"%>
<%@page import="dao.PostVO"%>
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
</head>
<body>

	<button onclick="location.href='${cpath}/postWrite.do'">글쓰기</button>















	<button onclick="history.back()">뒤로가기</button> <br>
	내 게시글 보기 <br>
		<c:forEach var="post" items="${myPost}">
		<table>
			<tr>
				
				<!-- 게시글제목(링크로 상세페이지연결) -->
				<td><a href="${cpath}/postDetail.do?post_num=${post.post_num}">${post.post_title}</td>
								
				<!-- 작성일 -->
				<td>작성일 ${post.post_date}</td>
								
				<!-- 조회수  -->
				<td>조회수 ${post.post_vcnt}명</td>
				
			</tr>
		</table>
	</c:forEach>
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