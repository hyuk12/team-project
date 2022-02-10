<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html lang="ko">

<head>
    <link rel="stylesheet" href="/css/style.css">
    <link rel="stylesheet" href="/css/nav.css">
    <script src="https://kit.fontawesome.com/c3df4d7d1c.js" crossorigin="anonymous"></script>
    <script src="/js/jQuery.js"></script>
</head>
<script>
    // 왼쪽 버튼은 클릭으로 창이 나타나도록 하는거
    // .category-btn을 눌렀을 때에 작동해야한다.
    $(document).ready(function () {
        $(".nav-menu").hide();

        $(".category-btn").click(function () {
            $(".nav-menu").slideToggle(0);
        });
    });

    $(document).click(function (e) {
        if (!$(e.target).is(".category-btn" || ".fas fa-bars" || ".fa-bars:before" || ".fa-bars")) {
            $(".nav-menu").css("display", "none")
        }
    }) 
    
</script>

<body>
<!--  기업회원-->
    <nav class="header">

        <div class="nav-main">
            <div class="nav-logo">
                <a href="/">
                    <img src="/images/nav-logo.png">
                </a>
            </div>

            <div class="nav-search">
                <div class="nav-search-border">
                    <input type="text" class="nav-search-ip">
                </div>
                <div class="nav-search-borderBtn">
                    <input type="submit" value="검색" class="nav-search-btn">
                </div>
            </div>
            <div class="nav-items">
                <div class="nav-item-search">
                    <button type="button" class="joblist-btn">
                        <span class="textjob">직무 찾기</span>
                    </button>
                </div>
            </div>
        </div>
        <div class="nav-bar">
            <div class="nav-inner">
                <div class="category">
                    <!-- 이 버튼을 누르면 창이 나타나도록 -->
                    <button type="button" class="category-btn">
                        <i class="fas fa-bars"></i>
                    </button>
                </div>
                <div class="nav-menu">
                    <div class="nav-menu-wrapper">
                        <div class="nav-menu-wrapper-first">
                            <div class="recruit-name">
                                <div>채용정보 <span style="color: gray;">></span></div>
                                <div class="recruit-info">
                                    <ul>
                                        <li><a href="">상세검색</a></li>
                                        <li><a href="">지역별</a></li>
                                        <li><a href="">직무별</a></li>
                                        <li><a href="">산업별</a></li>
                                        <li><a href="">기업별</a></li>
                                        <li><a href="">슈퍼기업관</a></li>
                                        <li><a href="">전문채용관</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="recruit-name">
                                <div>공채 <span style="color: gray;">></span></div>
                                <div class="recruit-info">
                                    <ul>
                                        <li><a href="">대기업 공채</a></li>
                                        <li><a href="">공채달력</a></li>
                                        <li><a href="">기업공채달력</a></li>
                                        <li><a href="">직무인터뷰</a></li>
                                        <li><a href="">채용설명회</a></li>
                                        <li><a href="">합격스펙</a></li>
                                        <li><a href="">합격자소서</a></li>
                                        <li><a href="">취업특강</a></li>
                                        <li><a href="">인적성·면접후기</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="recruit-name">
                                <div>헤드헌팅 <span style="color: gray;">></span></div>
                                <div class="recruit-info">
                                    <ul>
                                        <li><a href="">헤드헌팅 채용정보</a></li>
                                        <li><a href="">헤드헌팅 찾기</a></li>
                                        <li><a href="">헤드헌팅 채용상담</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="recruit-name">
                                <div>연봉 <span style="color: gray;">></span></div>
                                <div class="recruit-info">
                                    <ul>
                                        <li><a href="">연봉통계</a></li>
                                        <li><a href="">기업검색</a></li>
                                        <li><a href="">연봉뉴스</a></li>
                                        <li><a href="">내 연봉관리</a></li>

                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="nav-menu-wrapper-second">
                            <div class="recruit-name">
                                <div>뉴스자료 <span style="color: gray;">></span></div>
                                <div class="recruit-info">
                                    <ul>
                                        <li><a href="">취업뉴스</a></li>
                                        <li><a href="">자료실</a></li>
                                        <li><a href="">취업 성공 툴</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="recruit-name">
                                <div>취업 성공 툴 <span style="color: gray;">></span></div>
                                <div class="recruit-info">
                                    <ul>
                                        <li><a href="">자소서 작성</a></li>
                                        <li><a href="">맞춤법 검사</a></li>
                                        <li><a href="">글자수 세기</a></li>
                                        <li><a href="">학점계산기</a></li>
                                        <li><a href="">어학점수 변환</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>


                        <div
                            style="position: absolute;right: 0; top: 0; width: 25%; height: 100%; background-color: #dbdbdb;">
                            <div></div>
                        </div>
                    </div>
                </div>

                <!-- 얘들은 hover 하고 200? 정도 있다가 창이 나타나도록? 
                    위에꺼랑 크기가 좀 다르네...
                -->

                <div class="nav-inner-service">
                    <ul class="services">
                        <li class="service-item">
                            <a href="/jobs/joblist">
                                <span class="post-job-btn">
                                    <span>채용정보</span>
                                </span>
                            </a>
                        </li>
                        <li class="service-item">
                            <a href="/resume/edit">
                                <span class="post-job-btn">
                                    <span>이력서 등록</span>
                                </span>
                            </a>
                        </li>
                        <li class="service-item">
                            <a href="#">
                                <span class="post-job-btn">
                                    <span>채용공고</span>
                                </span>
                            </a>
                        </li>
                    </ul>
                    <ul class="nav-user">
                        <li class="my-info">
                            <a href="/mypage/personalPage" class="my-info-open">
                                <img src="/images/mypage-logo.png">
                            </a>
                        </li>
                        <li class="service-item">
                            <a href="/mypage/companyPage" class="company-open">
                                <span class="post-job-btn">
                                    <span>개인회원 홈</span>
                                </span>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </nav>
</body>

</html>
