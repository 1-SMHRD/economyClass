<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<!-- basic -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- mobile metas -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport" content="initial-scale=1, maximum-scale=1">
<!-- site metas -->
<title>Utoon - 웹툰 보기 전 필수 앱</title>
<meta name="keywords" content="">
<meta name="description" content="">
<meta name="author" content="">
<!-- bootstrap css -->
<link rel="stylesheet" type="text/css"
	href="${cpath}/utoon/css/bootstrap.min.css">
<!-- style css -->
<link rel="stylesheet" type="text/css"
	href="${cpath}/utoon/css/style.css">
<!-- Responsive-->
<link rel="stylesheet" href="${cpath}/utoon/css/responsive.css">
<!-- fevicon -->
<link rel="icon" href="${cpath}/utoon/images/fevicon.png"
	type="image/gif" />
<!-- Scrollbar Custom CSS -->
<link rel="stylesheet"
	href="${cpath}/utoon/css/jquery.mCustomScrollbar.min.css">
<!-- Tweaks for older IEs-->
<link rel="stylesheet"
	href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
<!-- fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap"
	rel="stylesheet">
<!-- font awesome -->
<link rel="stylesheet" type="text/css"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<!--  -->
<!-- owl stylesheets -->
<link
	href="https://fonts.googleapis.com/css?family=Great+Vibes|Poppins:400,700&display=swap&subset=latin-ext"
	rel="stylesheet">
<link rel="stylesheet" href="${cpath}/utoon/css/owl.carousel.min.css">
<link rel="stylesoeet"
	href="${cpath}/utoon/css/owl.theme.default.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css"
	media="screen">
<script type="text/javascript">
function goDel(idx){
	$.ajax({
		url : "${cpath}/reviewDelete.do",
		type : "get",
		data : {"idx":idx},
		success : function(){
			// 메인페이지로 reflash
			location.href="${cpath}/toonDetail.do";
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
		url : "${cpath}/reviewUpdate.do",
		type : "post",
		data : {"idx":idx, "title":title, "content":content},
		success : function(){
			location.href="${cpath}/toonDetail.do";
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
		url : "${cpath}/reviewWrite.do",
		type : "post",
		data : frmData,
		success : function(){
			location.href="${cpath}toonDetail.do";
		},
		error : function() { alert("error");}
		
	});
}

</script>
</head>
<body>
	<!-- 보류//////////////////////////////////////////////////////////////////////////////-->
	<!-- banner bg main start -->
	<div class="banner_bg_main">
		<!-- header top section start -->
		<div class="container">
			<div class="header_section_top">
				<div class="row">
					<div class="col-sm-12">
						<!-- 왼쪽 최상단 로고 START-->
						<div class="header__logo" style="margin-left: 30px;">
							<a href="${cpath}/mainPage.do"> <img
								src="${cpath}/utoon/images/logo2.png"
								style="height: 50px; width: 60px; border-radius: 50%;" alt="">
							</a>
						</div>
						<!-- 왼쪽 최상단 로고 END-->
						<div class="custom_menu">
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
		<!-- header top section end -->
	</div>
	<!-- header section end -->

	<!-- banner bg main end -->

	<!---------------------------
        collection section start 
    ------------------------------>

	<!--0000  -->
	<section>
	<section class="collection-details1" >
		<div class="container">
			<div class="collection__details__content"   >
			<div>
				<!-- <section > -->
					<div class="row">
						<div class="col-lg-3">
							<div class="collection__details__pic set-bg" style="height:300px;">
								<img src="${wt.wt_thum}">

							</div>
						</div>
						
						<br>
						<div class="col-lg-9">
							<div class="collection__details__text">
								<div class="collection__details__title">
									<h3>${wt.wt_title}</h3>

								</div>

								<!-- 작품설명 -->
								<p>
									${wt.wt_detail}
								</p>
								<div class="collection__details__widget">
									<div class="row">
										<div class="col-lg-6 col-md-6">
											<ul>
												<li><span>장르:</span> ${wt.wt_gen}</li>
												<li><span>글, 그림:</span>${wt.wt_auth}</li>

											</ul>
										</div>
										<div class="col-lg-6 col-md-6">
											<ul>
												<li><span>연재 시작일:</span>${wt.up_date}</li>
												<li><span>연령등급:</span>${wt.wt_grd}</li>
											</ul>
										</div>
									</div>
								</div>


								<!-- UTOON 선호도 표시(신호등) start -->
								<div class="collection-light-wrap">
									<div class="icon-light-green"></div>
									<div class="collection-light-percent light-green">95.59%</div>
								</div>
								<!-- UTOON 선호도 표시(신호등) end -->

							</div>
						</div>
					</div>
				</section>
				</div>
				
	</section>
	<div class="container">
		<div class="collection__details__btn">
			<a href="#" class="follow-btn"> &#128544; 별로에요</a> <a href="#"
				class="follow-btn"> &#128522; 좋아요</a> <a href="#" class="follow-btn"><i
				class="fa fa-heart-o"></i> Follow</a> <a href="#" class="follow-btn"><span>Watch
					Now</span></a>
		</div>
		<br>
		<div class="collection__details__btn">
			<a href="#" class="book-btn"> &#128681; 책갈피</a> <a href="#"
				class="book-btn"> &#128374; 보는 중</a> <a href="#" class="book-btn">
				&#9989; 봤어요</a> <a href="#" class="book-btn"> &#128214; 리뷰</a>

		</div>
	</div>
	<br>

	 <hr> 

	<!-- UTOON 지수(가로그래프) start -->

	<div class="container">
		<div class="article-wrap">
			<h3 class="title">UTOON 지수</h3>
			<div class="indicator-bar-wrap">
				<div class="bar-wrap">
					<span class="indicator-bar_red"></span> <span
						class="indicator-bar_green"></span>
				</div>
			</div>
			<div class="sub-description">
				<span class="text red">별로예요 4%</span> <span class="text green">좋아요
					96%</span>
			</div>

		</div>
	</div>

	<!-- UTOON 지수(가로그래프) end -->

	<hr>

	<!-- 리뷰 글 작성 START-->
	
	<div class="container">
		<div class="collection__details__form">
			<div class="section-title">
				<h5>내가 작성한 리뷰</h5>
			</div>
			<div id="vfrm" class="panel-body">
				<table class="table table-bordered table-hover">
					<tr>
						<td>번호</td>
						<td>제목</td>
						<td>작성자</td>
						<td>작성일</td>
						<td>조회수</td>
					</tr>
					<c:forEach var="vo" items="${list}">								
					<tr>
						<td>${vo.idx}</td>
						<td id="t${vo.idx}"><a href="javascript:contentView(${vo.idx})">${vo.title}</a></td>
						<td>${vo.writer}</td>
						<td>${fn:split(vo.indate," ")[0]}</td>
						<td id="c${vo.idx}">${vo.count}</td>
					</tr>
					<tr id ="ct${vo.idx}" style="display: none">
					<td>내용</td>
					<td colspan="4">
						<textarea id = "ta${vo.idx}" rows="7" readonly="readonly" class = "form-control">${vo.content}</textarea>
						<br>
						<c:if test="${!empty mvo && vo.memId eq mvo.memId}">
						<span id="b${vo.idx}"><button class = "btn btn-sm btn-success" onclick="goUpdateForm(${vo.idx})" >수정</button></span>
						<button class = "btn btn-sm btn-warning" onclick="goDel(${vo.idx})">삭제</button>
						</c:if>
						<c:if test="${empty mvo || vo.memId ne mvo.memId}">
						<button disabled="disabled" class = "btn btn-sm btn-success">수정</button>
						<button disabled="disabled" class = "btn btn-sm btn-warning">삭제</button>
						</c:if>
					</td>
					</tr>
					</c:forEach>
					<c:if test="${!empty mvo}">
					<tr>
						<td colspan="5">
							<button class="btn btn-sm btn-primary" onclick="goWrite()">글쓰기</button>
						</td>
					</tr>
					</c:if>
				</table>
			</div>
			<div id="wfrm" class="panel-body" style="display: none">
				<form id="frm" class="form-horizontal" >
		<input type="hidden" name="memId" value="${mvo.memId}"/>
		  <div class="form-group">
		    <label class="control-label col-sm-2" for="title">제목:</label>
		    <div class="col-sm-10">
		      <input type="text" class="form-control" name="title" placeholder="Enter title">
		    </div>
		   </div>
		 <div class="form-group">
  		  <label class="control-label col-sm-2" for="content" >내용:</label>
   			 <div class="col-sm-10">
    		  <textarea rows="10" class="form-control" name="content"></textarea>
   		 </div> 
		  </div>
		  <div class="form-group">
		    <label class="control-label col-sm-2" for="writer">작성자:</label>
		    <div class="col-sm-10">
		      <input type="text" readonly="readonly" class="form-control" name="writer" value="${mvo.memName}">
		    </div>
		  </div>
		  <div class="form-group">
		    <div class="col-sm-offset-2 col-sm-10">
		      <button type="button" class="btn btn-sm btn-success" onclick="goInsert()">등록</button>
		      <button type="reset" class="btn btn-sm btn-info">취소</button>
		    </div>
		  </div>
		</form>
			</div>
			<form action="#">
				<textarea placeholder="짧게라도 좋으니 작품에 대한 감상을 기록해보세요"></textarea>
				<button type="submit" style="background: #5e27cd8c;">
					<i class="comment-btn"></i> 리뷰 작성하기
				</button>
			</form>
		</div>
	</div>
	<br>
	<hr>
	<!-- 리뷰 글 작성 END-->


	<!-- 리뷰 글 내역 START-->
	<div class="container">
		<div class="row">
			<div class="col-lg-8 col-md-8">
				<div class="collection__details__review">
					<div class="section-title">
						<h5>Reviews</h5>
					</div>
					<div class="collection__review__item">
						<div class="collection__review__item__pic">
							<img src="images/독립일기.PNG" alt="">
						</div>
						<div class="collection__review__item__text">
							<h6>
								<a href="nickname" ><span>Chris Curry - </a>1 Hour ago</span>
							</h6>
							<p>whachikan Just noticed that someone categorized this as
								belonging to the genre "demons" LOL</p>
							<br>
							<button style="background: #5e27cd8c;" type="button">좋아요</button>
							<button style="background: #5e27cd8c;" type="button">댓글달기</button>
							<button style="background: #5e27cd8c;" type="button">공유하기</button>
						</div>
						<!-- </div>
                            <div class="collection__review__item">
                                <div class="collection__review__item__pic">
                                    <img src="images/라온의남자.PNG" alt="">
                                </div>
                                <div class="collection__review__item__text">
                                    <h6><a href="nickname"><span>Lewis Mann - </a>5 Hour ago</span></h6>
                                    <p>Finally it came out ages ago</p> <br>
                                    <button type="button">좋아요</button>
                                    <button type="button">댓글달기</button>
                                    <button type="button">공유하기</button>
                                </div>
                            </div>
                            <div class="collection__review__item">
                                <div class="collection__review__item__pic">
                                    <img src="images/별이삼샵.PNG" alt="">
                                </div>
                                <div class="collection__review__item__text">
                                    <h6><a href="nickname"><span>Louis Tyler - </a>20 Hour ago</span></h6>
                                    <p>Where is the episode 15 ? Slow update! Tch</p> <br>
                                    <button type="button">좋아요</button>
                                    <button type="button">댓글달기</button>
                                    <button type="button">공유하기</button>
                                </div>
                            </div>
                            <div class="collection__review__item">
                                <div class="collection__review__item__pic">
                                    <img src="images/싸움독학.PNG" alt="">
                                </div>
                                <div class="collection__review__item__text">
                                    <h6><a href="nickname"><span>Chris Curry - </a>1 Hour ago</span></h6>
                                    <p>whachikan Just noticed that someone categorized this as belonging to the
                                        genre
                                        "demons" LOL</p> <br>
                                    <button type="button" class="review-button">좋아요</button>
                                    <button type="button">댓글달기</button>
                                    <button type="button">공유하기</button>
                                </div>
                            </div>
                            <div class="collection__review__item">
                                <div class="collection__review__item__pic">
                                    <img src="images/여신강림.PNG" alt="">
                                </div>
                                <div class="collection__review__item__text">
                                    <h6><a href="nickname"><span>Lewis Mann - </a>5 Hour ago</span></h6>
                                    <p>Finally it came out ages ago</p> <br>
                                    <button type="button">좋아요</button>
                                    <button type="button">댓글달기</button>
                                    <button type="button">공유하기</button>
                                </div>
                            </div>
                            <div class="collection__review__item">
                                <div class="collection__review__item__pic">
                                    <img src="images/이상한변호사 우영우.PNG" alt="">
                                </div>
                                <div class="collection__review__item__text">
                                    <h6><a href="nickname"><span>Louis Tyler - </a>20 Hour ago</span></h6>
                                    <p>Where is the episode 15 ? Slow update! Tch</p> <br>
                                    <button type="button">좋아요</button>
                                    <button type="button">댓글달기</button>
                                    <button type="button">공유하기</button>
                                </div>
                            </div> -->
					</div>

				</div>
				<!-- 리뷰 글 내역 END-->
			</div>

		</div>
	</div>



	<!-- 작품 추천 Section start -->
	<div class="container">

		<div class="collection__recommend">
			<div class="col-lg-8 col-md-8">
				<div class="collection__recommend__title">
					<div class="section-title">
						<h5>이 작품이 담긴 컬렉션</h5>
					</div>


					<div class="collection__recommend__item">
						<div class="collection__recommend__item__pic">
							<a href="collection.html"><img src="images/독립일기.PNG" alt=""></a>
						</div>
						<div class="collection__recommend__item__text">
							<h6>
								<a href="collection.html"><span>신작 추천</span>
							</h6>
							<a href="collection__recommend__img"><i class="fa fa-heart-o"></i></a>



						</div>
					</div>

				</div>
			</div>
		</div>
	</div>



	<!-- 작품 추천 Section End -->
	</section>

	<!-- Javascript files-->
	<script src="${cpath}/utoon/js/jquery.min.js"></script>
	<script src="${cpath}/utoon/js/popper.min.js"></script>
	<script src="${cpath}/utoon/js/bootstrap.bundle.min.js"></script>
	<script src="${cpath}/utoon/js/jquery-3.0.0.min.js"></script>
	<script src="${cpath}/utoon/js/plugin.js"></script>
	<!-- sidebar -->
	<script src="${cpath}/utoon/js/jquery.mCustomScrollbar.concat.min.js"></script>
	<script src="${cpath}/utoon/js/custom.js"></script>
	<script>
		function openNav() {
			document.getElementById("mySidenav").style.width = "250px";
		}

		function closeNav() {
			document.getElementById("mySidenav").style.width = "0";
		}
	</script>




</body>
</html>