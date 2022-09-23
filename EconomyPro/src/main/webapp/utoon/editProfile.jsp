<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Utoon - 웹툰 보기 전 필수 앱</title>

    <!-- bootstrap css -->
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <!-- style css -->
    <link rel="stylesheet" type="text/css" href="css/style.css">

    <style>
        section {
            width: 70%;
            margin-bottom: 20px;
            margin-left: auto;
            margin-right: auto;
            padding: 20px;
            border-radius: 30px;
            background-color: white;
        }

        .head_ment {
            /* margin-top: -80px; */
            text-align: right;
            margin-right: 250px;
            color:white;
            font-weight: bold;
        }

        .top_ment {
            text-align: center;
            font-size: 18px;
            margin-top: 100px;
            color: #666;
        }

        .middle_imformation {
            width: 70%;
            height: 150px;
            
        }

        /* .end_imformation {
        } */

        #profil_img {
            width: 300px;
            height: 30px;
        }

        #option {
            line-height: 25px;
            font-size: 15px;
            float: left;
            display: inline-block;
        }

        #logo {
            float: right;
            width: 70px;
            height: 70px;
            display: inline-block;
        }

        #name_t,
        #birth_t,
        #sex_t {
            font-size: 14px;
            line-height: 28px;

        }

        .imf_name,
        .imf_birth,
        .imf_sex {
            padding: 15px 0px 15px 0px;
            line-height: 20px;
        }

        #option {
            font-size: 14px;
        }

        button {
            background-color: #5F27CD;
            padding: 3px;
            border-radius: 10px;
            color: rgba(255, 255, 255, 0.788);
            float: right
        }

        #img {
            width: 175px;
            height: 200px;
            float: right;
            position: relative;
            top: -180px;
        }

        
    </style>
</head>
<body>

<!-- banner bg main start -->
    <div class="banner_bg_main">
        <!-- header top section start -->
        <div class="container">
            <div class="header_section_top">
                <div class="row">
                    <div class="col-sm-12">
                        <!-- 왼쪽 최상단 로고 START-->
                  <div class="header__logo" style="margin-left: 30px;">
                    <a href="Home.html">
                        <img src="images/logo.png" alt="">
                    </a>
                 </div>
                 <!-- 왼쪽 최상단 로고 END-->
                        <div class="custom_menu" style="font-size: 15;">
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
        <br>
        <div class="top_ment">다양한 UTOON 서비스에서 사용되는 나와 내 환경설정에 관한 정보입니다.</div><br>

        <!-- 상단  -->
        <h3 class="head_ment">마이페이지>정보수정</h3>
        <br>

        <section>
            <div class="middle_imformation">
                <div style="font-size: 20px; float:left ">Utoon 서비스에 표시되는 내 프로필 정보</div><br>
                <br>
                <!-- <img id="prifil_img" style="width: 50px; float: right;" src="../아이콘2.png"><br> -->
                <div id="option">개인 정보 및 이를 관리하기 위한 옵션입니다. 다른 사용자가 나에게 쉽게 연락할 수 있도록 정보 중 일부(예: 연락처 세부정보)를 다른 사용자에게 공개할 수
                    있습니다. 프로필 정보를 한눈에 확인할 수도 있습니다.</div>
            </div>
            <img id="img" src="/images/사람.png">
        </section>

        <!-- 기본정보 수정 페이지 -->
        <section>
            <div class="top_imformation">
                <h3>기본정보</h3>
                <div> 일부 정보가 Utoon 서비스를 사용하는 다른 사람에게 표기될 수 있습니다.</div><br>
                <div id="pictur">
                    <h4 style="width: 100%; ; float: left; padding: auto; ">사진</h4>
                    <div style="border-bottom: 1px solid purple; padding-bottom: 20px;">사진을 추가하여 계정을 맞춤설정합니다.
                        <button>변경</button>
                    </div>
                    <div class="aa">
                        <div class="imf_name" style="border-bottom: 1px solid purple;">
                            <div id="name_t">아이디</div>
                            <form>
                                <input type="text" name="id" size="20px" placeholder="아이디를 입력해주세요">
                                <button>확인</button>
                            </form>
                        </div>
                        <div class="imf_birth" style="border-bottom: 1px solid purple;">
                            <div id="birth_t">생년월일</div>
                            <div class="info" id="info__birth">
                                <select class="box" id="birth-year">
                                    <option disabled selected>출생 연도</option>
                                </select>
                                <select class="box" id="birth-month">
                                    <option disabled selected>월</option>
                                </select>
                                <select class="box" id="birth-day">
                                    <option disabled selected>일</option>
                                </select>
                                <button>확인</button>
                            </div><br>
                            <div id="birth_t">이메일</div>
                            <form>
                                <input type="text" name="id" size="35" placeholder="이메일을 입력해주세요">
                                <button>확인</button>
                            </form>

                        </div>


                        <div class="imf_sex">
                            <div id="sex_t">성별</div>
                            <form method="get" action="form-action.html">
                                <label><input type="radio" name="check_sex" value="여성"> 여성</label>
                                <label><input type="radio" name="check_sex" value="남성"> 남성</label>
                                <label><input type="radio" name="check_sex" value="비공개" checked> 비공개</label>
                            </form>

                        </div>
                    </div>
                </div>
            </div>
        </section>



        <!-- 하단 -->
        <section>
            <div class="end_imformation">





            </div>
        </section>
















<button onclick="history.back()">Back</button> <br>
에디트 프로필

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