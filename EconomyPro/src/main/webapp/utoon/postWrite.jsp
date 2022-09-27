<%@page import="dao.MemberVO"%>
<%@page import="dao.PostVO"%>
<%@page import="dao.PCommentVO"%>
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
<title>Insert title here</title>
</head>
<body>
	<form action="${cpath}/postWriteForm.do">
		<h1>UToon</h1>

		<!-- 제목 -->
		<input type="text" name="post_title" placeholder="제목" />
		<!-- 내용 -->
		<input type="text" name="post_ctnt" placeholder="내용" />
		<!-- 웹툰태그 -->
		<input type="text" name="wt_id" placeholder="웹툰태그(숫자입력)" />

		<button type="submit" >등록</button>
		<button type="reset" >초기화</button>
		<button type="button" onclick="history.back()">취소</button>
	</form>
</body>
</html>