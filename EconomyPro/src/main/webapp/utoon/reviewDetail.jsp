<%@page import="dao.MemberVO"%>
<%@page import="dao.ReviewVO"%>
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
</head>
<body>
<button onclick="history.back()">Back</button> <br>
리뷰 상세 페이지
<!-- 에이잭스로 내려보기 기능 구현할 예정이기 때문에 안쓰게 될 수도 있음 -->


<table>
			<tr>
				<!-- 리뷰ID(번호)  -->
				<td>${rv.rv_num}</td>
								
				<!-- 게시글작성자ID -->
				<td>작성자 ${rv.mem_id}</td>
				
				<!-- 작성일 -->
				<td>작성일 ${rv.rv_date}</td>
								
				<!-- 내용  -->
				<td>내용 ${rv.rv_ctnt}</td>

				<!-- 좋아요  -->
				<td>조회수 ${rv.rv_like}</td>

				<!-- 평점 -->				
				<td>조회수 ${rv.rv_score}점</td>
				
				<!-- 웹툰태그(링크로 상세페이지연결) -->
				<td><a href="${cpath}/toonDetail.do?wt_id=${post.wt_id}">연결된웹툰 ${post.wt_id} </a></td>
			</tr>
		</table>






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