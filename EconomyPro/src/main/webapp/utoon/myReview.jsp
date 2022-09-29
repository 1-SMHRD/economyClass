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

<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>

<!-- bootstrap css -->
<link rel="stylesheet" type="text/css"
	href="${cpath}/utoon/css/bootstrap.min.css">
<!-- style css -->
<link rel="stylesheet" type="text/css"
	href="${cpath}/utoon/css/style.css">
<script type="text/javascript">
	function contentView(idx){
		if($("#ct"+idx).css("display")!="none"){
			$("#ct"+idx).css("display", "none")
		}else{
			$("#ct"+idx).css("display", "table-row");
			$.ajax({
				url : "${cpath}/boardCountUpdate.do",
				type : "get",
				data : {"idx":idx},
				success : function(count){
					// 조회수 출력
					$("#c"+idx).text(count);
				},
				error : function(){ alert("error");}
			});
		}
		$("#ta"+idx).attr("readonly", true);
	}
	function goDel(idx){
		$.ajax({
			url : "${cpath}/boardDelete.do",
			type : "get",
			data : {"idx":idx},
			success : function(){
				// 메인페이지로 reflash
				location.href="${cpath}/boardList.do";
			},
			error : function(){ alert("error"); }
		});
		
	}
	function goUpdateForm(idx){
		$("#ta"+idx).attr("readonly", false);
		var tmpTitle=$("#t"+idx).text();
		var newTitle="<input type='text' id='nt"+idx+"' class='form-control' value='"+tmpTitle+"'/>";
		$("#t"+idx).html(newTitle);
		var newBtn="<button class='btn btn-sm btn-primary' onclick='goUpdate("+idx+")'>수정하기</button>";
		$("#b"+idx).html(newBtn);
		
	}
	function goUpdate(idx){
		var title=$("#nt"+idx).val();
		var content=$("#ta"+idx).val();
		$.ajax({
			url : "${cpath}/boardUpdate.do",
			type : "post",
			data : {"idx":idx, "title":title, "content":content},
			success : function(){
				location.href="${cpath}/boardList.do";
			},
			error : function() { alert("error");}
		});
	}
	function goWrite(){
		$("#vfrm").css("display", "none");
		$("#wfrm").css("display", "block");
	}
	function goInsert(){
		//frm->memId, title, content, writer
		var frmData=$("#frm").serialize();
		// alert(frmData);
		$.ajax({
			url : "${cpath}/boardWrite.do",
			type : "post",
			data : frmData,
			success : function(){
				location.href="${cpath}/boardList.do";
			},
			error : function() { alert("error");}
			
		});
	}
</script>




</head>

<body>

	<!-- banner bg main start -->
	<div class="banner_bg_main">
		<!-- header top section start -->
		<div class="container">
			<div class="header_section_top">
				<div class="row">
					<div class="col-sm-12">
						<div class="header__logo" style="margin-left: 30px;">
							<a href="${cpath}/mainPage.do"> <img
								src="${cpath}/utoon/images/logo2.png"
								style="height: 50px; width: 60px; border-radius: 50%;" alt="">
							</a>
						</div>
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
	<br>
	<br>
	<br>
	<br>
	
	<br>

	<div class="container">

		<div>
			<h3 class="hm_comment">
				<a onclick="history.back()">마이페이지</a> > 내 리뷰
			</h3>
		</div>

		<h3 class="head_comment"> 👍 내 리뷰</h3>
		<div class="spc"></div>

	</div>


	<!-- 내 게시글 시작 -->



	<div class="container" style="margin-top: 10px;">
		<div class="story_text_head">
			<div class="story_title">
				<div class="rv_name_t">리뷰 제목</div>
				<div class="rv_view_t">작성자</div>
				<div class="rv_date_t">작성일자</div>
			</div>
		</div>
	</div>

	<c:forEach var="rv" items="${myReview}">
		<div class="container">
			<div class="story_text_content">
				<div class="st">
					<a class="rv_name"  href="${cpath}/toonDetail.do">
						${rv.rv_ctnt}
					</a>

					<h6 class="rv_view">${rv.mem_id}</h6>
					
					<h6 class="rv_date">${fn:split(rv.rv_date," ")[0]} ${fn:split(rv.rv_date," ")[1]} ${fn:split(rv.rv_date," ")[2]}</h6>
				</div>
			</div>
		</div>

	</c:forEach>



</body>
</html>