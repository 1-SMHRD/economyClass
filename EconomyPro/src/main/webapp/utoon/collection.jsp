<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
   <!-- basic -->
      <meta charset="UTF-8">
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
      <link rel="stylesheet" type="text/css" href="${cpath}/utoon/css/bootstrap.min.css">
      <!-- style css -->
      <link rel="stylesheet" type="text/css" href="${cpath}/utoon/css/style.css">
      <!-- Responsive-->
      <link rel="stylesheet" href="${cpath}/utoon/css/responsive.css">
      <!-- fevicon -->
      <link rel="icon" href="${cpath}/utoon/images/fevicon.png" type="image/gif" />
      <!-- Scrollbar Custom CSS -->
      <link rel="stylesheet" href="${cpath}/utoon/css/jquery.mCustomScrollbar.min.css">
      <!-- Tweaks for older IEs-->
      <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
      <!-- fonts -->
      <link href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap" rel="stylesheet">
      <!-- font awesome -->
      <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
      <!--  -->
      <!-- owl stylesheets -->
      <link href="https://fonts.googleapis.com/css?family=Great+Vibes|Poppins:400,700&display=swap&subset=latin-ext" rel="stylesheet">
      <link rel="stylesheet" href="${cpath}/utoon/css/owl.carousel.min.css">
      <link rel="stylesoeet" href="${cpath}/utoon/css/owl.theme.default.min.css">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
</head>
<body>

<!-- banner bg main start -->
      <div class="banner_bg_main">
         <!-- header top section start -->
         <div class="container">
            <div class="header_section_top">
               <div class="row">
                  <div class="col-sm-12">
                     <div class="col-sm-12">
               <!-- 왼쪽 최상단 로고 START-->
               <div class="header__logo" style="margin-left: 30px;">
                  <a href="${cpath}/mainPage.do">
                      <img src="${cpath}/utoon/images/logo2.png" style="height: 50px; width: 60px; border-radius: 50%;" alt="">
                  </a>
               </div>
               <!-- 왼쪽 최상단 로고 END-->
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
                  <!-- </div> -->
               </div>
            </div>
         </div>
         </div>
         <!-- banner section end -->
      </div>
      <!-- banner bg main end -->
      <!-- fashion section start -->
      <div class="fashion_section">
         <div id="main_slider" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
               <div class="carousel-item active">
                  <div class="container">
                     <h2 class="community_taital">테마 리스트 ✍🏻</h2>
                     <div class="fashion_section_2">
                        <div class="row">
                           <div class="col-md-4 col-sm-4">
                              <div class="box_main" >
                                 <div class="box_3th">
                                    <table class="box_1th_table">
                                       <tr class="box_1th_tr_3">
                                          <th><a href="${cpath}/collectionDetail.do">에디터 추천👍🏻</a></th>
                                          <!-- 에디터추천에 컬렉션디테일 연결이 맞나   페이지 더만들어야될지도 -->
                                       </tr>
                                    </table>
                                 </div>
                                 <br>
                                 <!-- <h4 class="shirt_text">에디터 추천👍🏻</h4> -->
                                 <!-- <p class="price_text">Price  <span style="color: #262626;">$ 30</span></p> -->
                                 <div class="tshirt_img"><img src="${cpath}/utoon/images/웹툰1.PNG"></div>
                                 <div class="btn_main">
                                    <!-- <div class="buy_bt"><a href="#">Buy Now</a></div>
                                    <div class="seemore_bt"><a href="#">See More</a></div> -->
                                 </div>
                              </div>
                           </div><div class="col-md-4 col-sm-4">
                              <div class="box_main" >
                                 <div class="box_3th">
                                    <table class="box_1th_table">
                                       <tr class="box_1th_tr_3">
                                          <th><a href="${cpath}/collectionDetail.do">신작 추천🔥</a></th>
                                          
                                       </tr>
                                    </table>
                                 </div>
                                 <br>
                                 <!-- <h4 class="shirt_text">에디터 추천👍🏻</h4> -->
                                 <!-- <p class="price_text">Price  <span style="color: #262626;">$ 30</span></p> -->
                                 <div class="tshirt_img"><img src="${cpath}/utoon/images/웹툰1.PNG"></div>
                                 <div class="btn_main">
                                    <!-- <div class="buy_bt"><a href="#">Buy Now</a></div>
                                    <div class="seemore_bt"><a href="#">See More</a></div> -->
                                 </div>
                              </div>
                           </div>
                           <div class="col-md-4 col-sm-4">
                              <div class="box_main" >
                                 <div class="box_3th">
                                    <table class="box_1th_table">
                                       <tr class="box_1th_tr_3">
                                          <th><a href="${cpath}/collectionDetail.do">드라마로 만들어진 웹툰📝</a></th>
                                          
                                       </tr>
                                    </table>
                                 </div>
                                 <br>
                                 <!-- <h4 class="shirt_text">에디터 추천👍🏻</h4> -->
                                 <!-- <p class="price_text">Price  <span style="color: #262626;">$ 30</span></p> -->
                                 <div class="tshirt_img"><img src="${cpath}/utoon/images/웹툰1.PNG"></div>
                                 <div class="btn_main">
                                    <!-- <div class="buy_bt"><a href="#">Buy Now</a></div>
                                    <div class="seemore_bt"><a href="#">See More</a></div> -->
                                 </div>
                              </div>
                           </div>
                           <div class="col-md-4 col-sm-4">
                              <div class="box_main" >
                                 <div class="box_3th">
                                    <table class="box_1th_table">
                                       <tr class="box_1th_tr_3">
                                          <th><a href="${cpath}/collectionDetail.do">취향껏 골라 GL/BL👀</a></th>
                                          
                                       </tr>
                                    </table>
                                 </div>
                                 <br>
                                 <!-- <h4 class="shirt_text">에디터 추천👍🏻</h4> -->
                                 <!-- <p class="price_text">Price  <span style="color: #262626;">$ 30</span></p> -->
                                 <div class="tshirt_img"><img src="${cpath}/utoon/images/웹툰1.PNG"></div>
                                 <div class="btn_main">
                                    <!-- <div class="buy_bt"><a href="#">Buy Now</a></div>
                                    <div class="seemore_bt"><a href="#">See More</a></div> -->
                                 </div>
                              </div>
                           </div>
                           <div class="col-md-4 col-sm-4">
                              <div class="box_main" >
                                 
                                 <div class="box_3th">
                                    <table class="box_1th_table">
                                       <tr class="box_1th_tr_3">
                                          <th><a href="${cpath}/collectionDetail.do">지금만 무료 웹툰 💸</a></th>
                                          
                                       </tr>
                                    </table>
                                 </div>
                                 <br>
                                 <!-- <h4 class="shirt_text">에디터 추천👍🏻</h4> -->
                                 <!-- <p class="price_text">Price  <span style="color: #262626;">$ 30</span></p> -->
                                 <div class="tshirt_img"><img src="${cpath}/utoon/images/웹툰1.PNG"></div>
                                 <div class="btn_main">
                                    <!-- <div class="buy_bt"><a href="#">Buy Now</a></div>
                                    <div class="seemore_bt"><a href="#">See More</a></div> -->
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
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