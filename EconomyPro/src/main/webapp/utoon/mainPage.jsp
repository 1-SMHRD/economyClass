<%@page import="dao.MemberVO"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Utoon - 웹툰 보기 전 필수 앱</title>
    
    
    
    
    <!-- basic -->
   <meta charset="utf-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <!-- mobile metas -->
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <meta name="viewport" content="initial-scale=1, maximum-scale=1">
   <!-- site metas -->
   <title>UTOON</title>
   <meta name="keywords" content="">
   <meta name="description" content="">
   <meta name="author" content="">
   <!-- bootstrap css -->
   <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
   <!-- style css -->
   <link rel="stylesheet" type="text/css" href="css/style.css">
   <!-- Responsive-->
   <link rel="stylesheet" href="css/responsive.css">
   <!-- fevicon -->
   <link rel="icon" href="images/fevicon.png" type="image/gif" />
   <!-- Scrollbar Custom CSS -->
   <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
   <!-- Tweaks for older IEs-->
   <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
   <!-- fonts -->
   <link href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap" rel="stylesheet">
   <!-- font awesome -->
   <link rel="stylesheet" type="text/css"
      href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
   <!--  -->
   <!-- owl stylesheets -->
   <link href="https://fonts.googleapis.com/css?family=Great+Vibes|Poppins:400,700&display=swap&subset=latin-ext"
      rel="stylesheet">
   <link rel="stylesheet" href="css/owl.carousel.min.css">
   <link rel="stylesoeet" href="css/owl.theme.default.min.css">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css"
      media="screen">
</head>
<body>



<!-- banner bg main start -->
   <div class="banner_bg_main">
      <!-- header top section start -->
      <div class="container">
         <div class="header_section_top">
            <div class="row">
               <div class="col-sm-12">
                  <div class="custom_menu">
                     <ul>
                        <li><a href="Home.html">홈</a></li>
                        <li><a href="collection.html">컬렉션</a></li>
                        <li><a href="community.html">커뮤니티</a></li>
                        <li><a href="quest.html">탐색</a></li>
                        <li><a href="new.html">신작</a></li>
                        <li><a href="mypage.html">마이페이지</a></li>

                     </ul>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <!-- header top section start -->
      <!-- logo section start -->
      <div class="logo_section">
         <div class="container">
            <div class="row">
               <div class="col-sm-12">
                  <div class="logo"><a href="Home.html"><img src="images/logo.png"></a></div>
               </div>
            </div>
         </div>
      </div>
      <!-- logo section end -->
      <!-- header section start -->
      <div class="header_section">
         <div class="container">
            <div class="containt_main">
               <div id="mySidenav" class="sidenav">
                  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
                  <a href="Home.html">홈</a>
                  <a href="collection.html">컬렉션</a>
                  <a href="community.html">커뮤니티</a>
                  <a href="quest.html">탐색</a>
                  <a href="new.html">신작</a>
                  <a href="mypage.html">마이페이지</a>
               </div>
               <div class="main">
                  <!-- Another variation with a button -->
                  <div class="input-group">
                     <input type="text" class="form-control" placeholder="작품명 / 작가 검색하기">
                     <div class="input-group-append">
                        <button class="btn btn-secondary" type="button"
                           style="background-color: #596275; border-color:#596275 ">
                           <i class="fa fa-search"></i>
                        </button>
                     </div>
                  </div>
               </div>
               <div class="header_box">
                  <div class="login_menu">
                     <ul>
                        <li><a href="#">
                              <i class="fa fa-user" aria-hidden="true"></i>
                              <span class="padding_10">로그인</span></a>
                        </li>
                     </ul>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <!-- header section end -->

   <br>
   <br>


   <!-- banner bg main end -->
   <!-- fashion section start -->

   
   <div class="fashion_section">
      <div id="electronic_main_slider" class="carousel slide" data-ride="carousel">
         <div class="carousel-inner">
            <div class="carousel-item active">
               <div class="container">
                  <h1 class="community_taital" style="color : #303952">오늘의 '네이버웹툰' 랭킹 🏆</h1>
                  <div class="fashion_section_2">
                     <div class="row">
                        <div class="col-lg-4 col-md-4">
                           <div class="box_main_lank">
                              <ul class="shirt_text">
                                 <li><span>🥇 1</span><a href="#">여신강림</a> </li>
                                 <li><span>🥈 2</span><a href="#">여신강림</a> </li>
                                 <li><span>🥉 3</span><a href="#">여신강림</a> </li>
                                 <li><span>🏅 4</span><a href="#">여신강림</a> </li>
                                 <li><span>🏅 5</span><a href="#">여신강림</a> </li>
                              </ul>
                              
                              <!-- <div class="electronic_img"><img src="images/laptop-img.png"></div> -->
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
            
            <div class="carousel-item">
               <div class="container">
                  <h1 class="community_taital" style="color : #303952">오늘의 '카카오웹툰' 랭킹 🏆</h1>
                  <div class="fashion_section_2">
                     <div class="row">
                        <div class="col-lg-4 col-sm-4">
                           <div class="box_main_lank">
                              <ul class="shirt_text">
                                 <li><span>🥇 1</span><a href="#">여신강림</a> </li>
                                 <li><span>🥈 2</span><a href="#">여신강림</a> </li>
                                 <li><span>🥉 3</span><a href="#">여신강림</a> </li>
                                 <li><span>🏅 4</span><a href="#">여신강림</a> </li>
                                 <li><span>🏅 5</span><a href="#">여신강림</a> </li>
                              </ul>
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
            <div class="carousel-item">
               <div class="container">
                  <h1 class="community_taital" style="color : #303952">오늘의 '레진코믹스' 랭킹 🏆</h1>
                  <div class="fashion_section_2">
                     <div class="row">
                        <div class="col-lg-4 col-sm-4">
                           <div class="box_main_lank">
                              <ul class="shirt_text">
                                 <li><span>🥇 1</span><a href="#">여신강림</a> </li>
                                 <li><span>🥈 2</span><a href="#">여신강림</a> </li>
                                 <li><span>🥉 3</span><a href="#">여신강림</a> </li>
                                 <li><span>🏅 4</span><a href="#">여신강림</a> </li>
                                 <li><span>🏅 5</span><a href="#">여신강림</a> </li>
                              </ul>
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
            <div class="carousel-item">
               <div class="container">
                  <h1 class="community_taital" style="color : #303952">오늘의 '탑툰' 랭킹 🏆</h1>
                  <div class="fashion_section_2">
                     <div class="row">
                        <div class="col-lg-4 col-sm-4">
                           <div class="box_main_lank">
                              <ul class="shirt_text">
                                 <li><span>🥇  1</span><a href="#">여신강림</a> </li>
                                 <li><span>🥈 2</span><a href="#">여신강림</a> </li>
                                 <li><span>🥉 3</span><a href="#">여신강림</a> </li>
                                 <li><span>🏅 4</span><a href="#">여신강림</a> </li>
                                 <li><span>🏅 5</span><a href="#">여신강림</a> </li>
                              </ul>
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
            <div class="carousel-item">
               <div class="container">
                  <h1 class="community_taital" style="color : #303952">오늘의 '투믹스' 랭킹 🏆</h1>
                  <div class="fashion_section_2">
                     <div class="row">
                        <div class="col-lg-4 col-sm-4">
                           <div class="box_main_lank">
                              <ul class="shirt_text">
                                 <li><span>🥇 1</span><a href="#">여신강림</a> </li>
                                 <li><span>🥈 2</span><a href="#">여신강림</a> </li>
                                 <li><span>🥉 3</span><a href="#">여신강림</a> </li>
                                 <li><span>🏅 4</span><a href="#">여신강림</a> </li>
                                 <li><span>🏅 5</span><a href="#">여신강림</a> </li>
                              </ul>
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
         <a class="carousel-control-next" href="#electronic_main_slider" role="button" data-slide="next">
            <i class="fa fa-angle-right"></i>
         </a>
         <a class="carousel-control-prev" href="#electronic_main_slider" role="button" data-slide="prev">
            <i class="fa fa-angle-left"></i>
         </a>
      </div>
   </div>

   <!-- fashion section start -->
   <div class="fashion_section">
      <div id="main_slider" class="carousel slide" data-ride="carousel">
         <div class="carousel-inner">
            <div class="carousel-item active">
               <div class="container">
                  <h1 class="community_taital" style="color : #303952">커뮤니티 인기글 🔥</h1>
                  <div class="fashion_section_2">
                     <div class="row">
                        
                        <div class="col-md-4 col-sm-4">
                           <div class="box_main container">
                              <h4 class="communitybox_text">1번째 글</h4>
                              <p class="community_text">커뮤니티 1</p>

                              <div class="btn_main">
                                 <div class="write_bt"><a href="#">글쓴이1</a></div>
                                 <div class="seemore_bt"><a href="#">See More</a></div>
                              </div>
                           </div>
                        </div>
                        <div class="col-md-4 col-sm-4">
                           <div class="box_main container">
                              <h4 class="communitybox_text">2번째 글</h4>
                              <p class="community_text">커뮤니티 2</p>

                              <div class="btn_main">
                                 <div class="write_bt"><a href="#">글쓴이2</a></div>
                                 <div class="seemore_bt"><a href="#">See More</a></div>
                              </div>
                           </div>
                        </div>
                        <div class="col-md-4 col-sm-4">
                           <div class="box_main container">
                              <h4 class="communitybox_text">3번째 글</h4>
                              <p class="community_text">커뮤니티 3</p>

                              <div class="btn_main">
                                 <div class="write_bt"><a href="#">글쓴이3</a></div>
                                 <div class="seemore_bt"><a href="#">See More</a></div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <div class="carousel-item">
               <div class="container">
                  <h1 class="community_taital" style="color : #303952">커뮤니티 인기글 🔥</h1>
                  <div class="fashion_section_2">
                     <div class="row">
                        <div class="col-md-4 col-sm-4">
                           <div class="box_main container">
                              <h4 class="communitybox_text">4번째 글</h4>
                              <p class="community_text">커뮤니티 4</p>

                              <div class="btn_main">
                                 <div class="write_bt"><a href="#">글쓴이4</a></div>
                                 <div class="seemore_bt"><a href="#">See More</a></div>
                              </div>
                           </div>
                        </div>
                        <div class="col-md-4 col-sm-4">
                           <div class="box_main container">
                              <h4 class="communitybox_text">5번째 글</h4>
                              <p class="community_text">커뮤니티 5</p>

                              <div class="btn_main">
                                 <div class="write_bt"><a href="#">글쓴이5</a></div>
                                 <div class="seemore_bt"><a href="#">See More</a></div>
                              </div>
                           </div>
                        </div>
                        <div class="col-md-4 col-sm-4">
                           <div class="box_main container">
                              <h4 class="communitybox_text">6번째 글</h4>
                              <p class="community_text">커뮤니티 6</p>

                              <div class="btn_main">
                                 <div class="write_bt"><a href="#">글쓴이6</a></div>
                                 <div class="seemore_bt"><a href="#">See More</a></div>
                              </div>
                           </div>
                        </div>

                     </div>
                  </div>
               </div>
            </div>
            
         </div>
         <a class="carousel-control-next" href="#main_slider" role="button" data-slide="next">
            <i class="fa fa-angle-right"></i>
         </a>
         <a class="carousel-control-prev" href="#main_slider" role="button" data-slide="prev">
            <i class="fa fa-angle-left"></i>
         </a>
      </div>
   </div>
   <!-- fashion section end -->
   <!-- electronic section start -->
   <div class="fashion_section">
      <div id="electronic_main_slider" class="carousel slide" data-ride="carousel">
         <div class="carousel-inner">
            <div class="carousel-item active">
               <div class="container">
                  <h1 class="community_taital" style="color : #303952">오늘 이걸 볼까요? 👀</h1>
                  <div class="fashion_section_2">
                     <div class="row">
                        <div class="col-lg-4 col-sm-4">
                           <div class="box_main">
                              <h4 class="shirt_text">Laptop</h4>
                              <p class="price_text">Start Price <span style="color: #262626;">$ 100</span></p>
                              <div class="electronic_img">
                                 <a href="#"><img src="images/laptop-img.png"></a></div>
                              <div class="btn_main">
                                 <!-- <div class="buy_bt"><a href="#">Buy Now</a></div>
                                 <div class="seemore_bt"><a href="#">See More</a></div> -->
                              </div>
                           </div>
                        </div>
                        <div class="col-lg-4 col-sm-4">
                           <div class="box_main">
                              <h4 class="shirt_text">Mobile</h4>
                              <p class="price_text">Start Price <span style="color: #262626;">$ 100</span></p>
                              <div class="electronic_img">
                                 <a href="#"><img src="images/mobile-img.png"></a></div>
                              <div class="btn_main">
                                 <!-- <div class="buy_bt"><a href="#">Buy Now</a></div>
                                 <div class="seemore_bt"><a href="#">See More</a></div> -->
                              </div>
                           </div>
                        </div>
                        <div class="col-lg-4 col-sm-4">
                           <div class="box_main">
                              <h4 class="shirt_text">Computers</h4>
                              <p class="price_text">Start Price <span style="color: #262626;">$ 100</span></p>
                              <div class="electronic_img">
                                 <a href="#"><img src="images/computer-img.png"></a></div>
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
            <div class="carousel-item">
               <div class="container">
                  <h1 class="community_taital" style="color : #303952">오늘 이걸 볼까요? 👀</h1>
                  <div class="fashion_section_2">
                     <div class="row">
                        <div class="col-lg-4 col-sm-4">
                           <div class="box_main">
                              <h4 class="shirt_text">Laptop</h4>
                              <p class="price_text">Start Price <span style="color: #262626;">$ 100</span></p>
                              <div class="electronic_img">
                                 <a href="#"><img src="images/computer-img.png"></a></div>
                              <div class="btn_main">
                                 <!-- <div class="buy_bt"><a href="#">Buy Now</a></div>
                                 <div class="seemore_bt"><a href="#">See More</a></div> -->
                              </div>
                           </div>
                        </div>
                        <div class="col-lg-4 col-sm-4">
                           <div class="box_main">
                              <h4 class="shirt_text">Mobile</h4>
                              <p class="price_text">Start Price <span style="color: #262626;">$ 100</span></p>
                              <div class="electronic_img">
                                 <a href="#"><img src="images/computer-img.png"></a></div>
                              <div class="btn_main">
                                 <!-- <div class="buy_bt"><a href="#">Buy Now</a></div>
                                 <div class="seemore_bt"><a href="#">See More</a></div> -->
                              </div>
                           </div>
                        </div>
                        <div class="col-lg-4 col-sm-4">
                           <div class="box_main">
                              <h4 class="shirt_text">Computers</h4>
                              <p class="price_text">Start Price <span style="color: #262626;">$ 100</span></p>
                              <div class="electronic_img">
                                 <a href="#"><img src="images/computer-img.png"></a></div>
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
            <div class="carousel-item">
               <div class="container">
                  <h1 class="community_taital" style="color : #303952">오늘 이걸 볼까요? 👀</h1>
                  <div class="fashion_section_2">
                     <div class="row">
                        <div class="col-lg-4 col-sm-4">
                           <div class="box_main">
                              <h4 class="shirt_text">Laptop</h4>
                              <p class="price_text">Start Price <span style="color: #262626;">$ 100</span></p>
                              <div class="electronic_img">
                                 <a href="#"><img src="images/computer-img.png"></a></div>
                              <div class="btn_main">
                                 <!-- <div class="buy_bt"><a href="#">Buy Now</a></div>
                                 <div class="seemore_bt"><a href="#">See More</a></div> -->
                              </div>
                           </div>
                        </div>
                        <div class="col-lg-4 col-sm-4">
                           <div class="box_main">
                              <h4 class="shirt_text">Mobile</h4>
                              <p class="price_text">Start Price <span style="color: #262626;">$ 100</span></p>
                              <div class="electronic_img">
                                 <a href="#"><img src="images/computer-img.png"></a></div>
                              <div class="btn_main">
                                 <!-- <div class="buy_bt"><a href="#">Buy Now</a></div>
                                 <div class="seemore_bt"><a href="#">See More</a></div> -->
                              </div>
                           </div>
                        </div>
                        <div class="col-lg-4 col-sm-4">
                           <div class="box_main">
                              <h4 class="shirt_text">Computers</h4>
                              <p class="price_text">Start Price <span style="color: #262626;">$ 100</span></p>
                              <div class="electronic_img">
                                 <a href="#"><img src="images/computer-img.png"></a></div>
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
         <a class="carousel-control-next" href="#main_slider" role="button" data-slide="next">
            <i class="fa fa-angle-right"></i>
         </a>
         <a class="carousel-control-prev" href="#main_slider" role="button" data-slide="prev">
            <i class="fa fa-angle-left"></i>
         </a>
      </div>
   </div>
   <!-- electronic section end -->
   <!-- jewellery  section start -->
   <div class="jewellery_section">
      <div id="jewellery_main_slider" class="carousel slide" data-ride="carousel">
         <div class="carousel-inner">
            <div class="carousel-item active">
               <div class="container">
                  <h1 class="community_taital" style="color : #303952">추천 리스트 💖</h1>
                  <div class="fashion_section_2">
                     <div class="row">
                        <div class="col-lg-4 col-sm-4">
                           <div class="box_main">
                              <h4 class="shirt_text">Jumkas</h4>
                              <p class="price_text">Start Price <span style="color: #262626;">$ 100</span></p>
                              <div class="electronic_img">
                                 <a href="#"><img src="images/computer-img.png"></a></div>
                              <div class="btn_main">
                                 <!-- <div class="buy_bt"><a href="#">Buy Now</a></div>
                                 <div class="seemore_bt"><a href="#">See More</a></div> -->
                              </div>
                           </div>
                        </div>
                        <div class="col-lg-4 col-sm-4">
                           <div class="box_main">
                              <h4 class="shirt_text">Necklaces</h4>
                              <p class="price_text">Start Price <span style="color: #262626;">$ 100</span></p>
                              <div class="electronic_img">
                                 <a href="#"><img src="images/computer-img.png"></a></div>
                              <div class="btn_main">
                                 <!-- <div class="buy_bt"><a href="#">Buy Now</a></div>
                                 <div class="seemore_bt"><a href="#">See More</a></div> -->
                              </div>
                           </div>
                        </div>
                        <div class="col-lg-4 col-sm-4">
                           <div class="box_main">
                              <h4 class="shirt_text">Kangans</h4>
                              <p class="price_text">Start Price <span style="color: #262626;">$ 100</span></p>
                              <div class="electronic_img">
                                 <a href="#"><img src="images/computer-img.png"></a></div>
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
            <div class="carousel-item">
               <div class="container">
                  <h1 class="community_taital" style="color : #303952">추천 리스트 💖</h1>
                  <div class="fashion_section_2">
                     <div class="row">
                        <div class="col-lg-4 col-sm-4">
                           <div class="box_main">
                              <h4 class="shirt_text">Jumkas</h4>
                              <p class="price_text">Start Price <span style="color: #262626;">$ 100</span></p>
                              <div class="electronic_img">
                                 <a href="#"><img src="images/computer-img.png"></a></div>
                              <div class="btn_main">
                                 <!-- <div class="buy_bt"><a href="#">Buy Now</a></div>
                                 <div class="seemore_bt"><a href="#">See More</a></div> -->
                              </div>
                           </div>
                        </div>
                        <div class="col-lg-4 col-sm-4">
                           <div class="box_main">
                              <h4 class="shirt_text">Necklaces</h4>
                              <p class="price_text">Start Price <span style="color: #262626;">$ 100</span></p>
                              <div class="electronic_img">
                                 <a href="#"><img src="images/computer-img.png"></a></div>
                              <div class="btn_main">
                                 <!-- <div class="buy_bt"><a href="#">Buy Now</a></div>
                                 <div class="seemore_bt"><a href="#">See More</a></div> -->
                              </div>
                           </div>
                        </div>
                        <div class="col-lg-4 col-sm-4">
                           <div class="box_main">
                              <h4 class="shirt_text">Kangans</h4>
                              <p class="price_text">Start Price <span style="color: #262626;">$ 100</span></p>
                              <div class="electronic_img">
                                 <a href="#"><img src="images/computer-img.png"></a></div>
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
            <div class="carousel-item">
               <div class="container">
                  <h1 class="community_taital" style="color : #303952">추천 리스트 💖</h1>
                  <div class="fashion_section_2">
                     <div class="row">
                        <div class="col-lg-4 col-sm-4">
                           <div class="box_main">
                              <h4 class="shirt_text">Jumkas</h4>
                              <p class="price_text">Start Price <span style="color: #262626;">$ 100</span></p>
                              <div class="electronic_img">
                                 <a href="#"><img src="images/computer-img.png"></a></div>
                              <div class="btn_main">
                                 <!-- <div class="buy_bt"><a href="#">Buy Now</a></div>
                                 <div class="seemore_bt"><a href="#">See More</a></div> -->
                              </div>
                           </div>
                        </div>
                        <div class="col-lg-4 col-sm-4">
                           <div class="box_main">
                              <h4 class="shirt_text">Necklaces</h4>
                              <p class="price_text">Start Price <span style="color: #262626;">$ 100</span></p>
                              <div class="electronic_img">
                                 <a href="#"><img src="images/computer-img.png"></a></div>
                              <div class="btn_main">
                                 <!-- <div class="buy_bt"><a href="#">Buy Now</a></div>
                                 <div class="seemore_bt"><a href="#">See More</a></div> -->
                              </div>
                           </div>
                        </div>
                        <div class="col-lg-4 col-sm-4">
                           <div class="box_main">
                              <h4 class="shirt_text">Kangans</h4>
                              <p class="price_text">Start Price <span style="color: #262626;">$ 100</span></p>
                              <div class="electronic_img">
                                 <a href="#"><img src="images/computer-img.png"></a></div>
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
         <a class="carousel-control-next" href="#jewellery_main_slider" role="button" data-slide="next">
            <i class="fa fa-angle-right"></i>
         </a>
         <a class="carousel-control-prev" href="#jewellery_main_slider" role="button" data-slide="prev">
            <i class="fa fa-angle-left"></i>
         </a>
         <!-- <div class="loader_main">
            <div class="loader"></div>
         </div> -->
      </div>
   </div>
   
   <!-- jewellery  section end -->
   <!-- footer section start -->
   <!-- <div class="footer_section layout_padding">
      <div class="container">
         <div class="footer_logo"><a href="index.html"><img src="images/footer-logo.png"></a></div>
         <div class="input_bt">
            <input type="text" class="mail_bt" placeholder="Your Email" name="Your Email">
            <span class="subscribe_bt" id="basic-addon2"><a href="#">Subscribe</a></span>
         </div>
         <div class="footer_menu">
            <ul>
               <li><a href="#">Best Sellers</a></li>
               <li><a href="#">Gift Ideas</a></li>
               <li><a href="#">New Releases</a></li>
               <li><a href="#">Today's Deals</a></li>
               <li><a href="#">Customer Service</a></li>
            </ul>
         </div>
         <div class="location_main">Help Line Number : <a href="#">+1 1800 1200 1200</a></div>
      </div>
   </div> -->
   <!-- footer section end -->
   <!-- copyright section start -->
   <!-- <div class="copyright_section">
      <div class="container">
         <p class="copyright_text">© 2020 All Rights Reserved. Design by <a href="https://html.design">Free html
               Templates</a></p>
      </div>
   </div> -->
   <!-- copyright section end -->
   <!-- Javascript files-->
   <script src="js/jquery.min.js"></script>
   <script src="js/popper.min.js"></script>
   <script src="js/bootstrap.bundle.min.js"></script>
   <script src="js/jquery-3.0.0.min.js"></script>
   <script src="js/plugin.js"></script>
   <!-- sidebar -->
   <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
   <script src="js/custom.js"></script>
   <script>
      function openNav() {
         document.getElementById("mySidenav").style.width = "250px";
      }

      function closeNav() {
         document.getElementById("mySidenav").style.width = "0";
      }
   </script>














  <input onclick="location.href='${cpath}/search.do'"> <br>
  <button onclick="location.href='${cpath}/totalRanking.do'">웹툰 랭킹</button><br>
  <button onclick="location.href='${cpath}/toonDetail.do'">1</button> <br>
  2 <br>
  3 <br>
  4 <br>
  5 <br>
  <button onclick="location.href='${cpath}/community.do'">커뮤니티</button><br>
 <button onclick="location.href='${cpath}/postDetail.do'">1</button><br>
  2 <br>
  3 <br>
  4 <br>
  5 <br>
  <button onclick="location.href='${cpath}/explore.do'">추천리스트</button><br>
  1 <br>
  2 <br>
  3 <br>
  4 <br>
  5 <br>
  <button onclick="location.href='https://m.kinolights.com/'">키노라이츠(배너)</button><br>
  네이버 <br>
  카카오 <br>

  
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
 
 
- 사용자는 웹서비스 접속 후 아이디 비밀번호 입력하여 로그인 또는 회원가입 후 로그인 한다. <br>
- 로그인 후 작품 검색바와 간략화한 웹툰랭킹{(1~5)위 플랫폼별 필터링으로 좌우 슬라이드}을 제공받는다. <br>
- 그 아래에 커뮤니티 인기글 내용을 상기와 동일하게 제공받는다. <br>  
- 그 아래에 추천리스트 타이틀과 작품 목록을 상기와 동일하게 제공받는다. <br>
- 그 아래에 플랫폼별이벤트 배너 목록을 상기와 동일하게 제공 받는다. <br> 
- 최하단에 고정으로 컬렉션 기능/ 커뮤니티 기능/ 탐색 기능/ 신작 기능/ 마이페이지 기능 버튼을 제공 받는다. <br> 
  
  
</body>
</html>