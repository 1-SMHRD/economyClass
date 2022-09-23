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

<!-- <script type="text/javascript">
function contentView(idx){
	if($("#ct"+idx).css("display")!="none"){
		$("#ct"+idx).css("display","none")	
	}else{
		$("#ct"+idx).css("display","table-row")
		$.ajax({
			url : "${cpath}/boardCountUpdate.do",
			type : "get",
			data : {"idx":idx},
			success : function(count){
				// 조회수를 출력
				$("#c"+idx).text(count);
			},
			error : function(){alert("error")}
		});
	}
	$("#ta"+idx).attr("readonly",true);
</script> -->
</head>
<body>
<input>검색<br>
<button onclick="history.back()">Back</button> <br>
<h1>추천 웹툰 출력</h1><br> 
<button onclick="location.href='${cpath}/toonDetail.do'">우엉우엉우</button> <br>

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
 

- 사용자는 검색창을 클릭한다. <br>
- 검색창 클릭시 추천웹툰을 사용자에 맞게 출력한다. <br>
- 사용자는 입력창에 찾고싶은 작품명 또는 작가명을 입력한다. <br>
- 유툰은 사용자가 입력한 작품명 또는 작가명과 관련된 웹툰을 데이터베이스에서 반환한다. <br>
- 사용자는 검색된 목록을 가나다순으로 정렬하여 콘텐츠를 확인한다. <br>

</body>
</html>