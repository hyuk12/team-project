<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!-- 세션에서 인증이 되었다면 -->
<sec:authorize access="isAuthenticated()">
<!-- property: princopal 객체를 principal이라는 이름으로 넣음 -->
<sec:authentication property="principal" var="principal"/>
</sec:authorize>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>잡코리아 마이페이지 | 잡코리아 - 좋은 일이 생긴다
        jobkorea.co,kr
    </title>
    <link rel="stylesheet" href="/css/style.css">
    <link rel="stylesheet" href="/css/nav.css">
    <link rel="stylesheet" href="/css/mypage.css">
    <script src="https://kit.fontawesome.com/c3df4d7d1c.js" crossorigin="anonymous"></script>
</head>
<body>
    <nav class="header">
        <div class="nav-main">
            <div class="nav-logo">
                <a href="/myIndex">
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
                    <button type="button" class="category-btn">
                        <i class="fas fa-bars"></i>
                    </button>
                </div>
                <div class="nav-inner-service">
                    <ul class="services">
                        <li class="service-item">
                            <a href="#">
                                <span class="post-job-btn">
                                    <span>채용정보</span>
                                </span>
                            </a>
                        </li>
                        <li class="service-item">
                            <a href="#">
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
                                <i class="far fa-user"></i>
                            </a>
                        </li>
                        <li class="service-item">
                            <a href="#" class="company-open">
                                <span class="post-job-btn">
                                    <span>기업회원 홈</span>
                                </span>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </nav>
    
    <main>
        <div>
            <div class="main-page">
                <div class="myContent">
                    <div class="profile box">
                        <div class="profile-img">
                        	<a href="#">
                                <img src="/images/nav-logo.png" alt="">
                        	</a>
                        </div>
                        <p class="username" name="name" >${principal.users.name }님</p>
                    </div>
                    <div class="active box">
                        <ul class="activeList">
                            <li>
                                <a href="#">
                                    <div class="count-num">
                                        <p>0</p>
                                    </div>
                                    <div class="activeName">지원완료</div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div class="count-num">
                                        <p>0</p>
                                    </div>
                                    <div class="activeName">이력서 열람</div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div class="count-num">
                                        <p>0</p>
                                    </div>
                                    <div class="activeName">관심기업공고</div>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="center">
                <div class="content-group box">
                    <div class="group-top">
                        <div class="top-mn">
                            <h2>개인회원 홈</h2>
                        </div>
                    </div>
                    <div class="group-center">
                        <div class="center-mn">
                            <div class="mn-tilte">
                                <h2>이력서관리</h2>
                            </div>
                            <div class="center-submn">
                                <ul>
                                    <a href="#"><li>이력서 수정</li></a>
                                    <a href="#"><li>이력서 등록</li></a>
                                </ul>
                            </div>
                        </div>
                        <div class="center-mn">
                            <div class="mn-tilte">
                                <h2>입사지원관리</h2>
                            </div>
                            <div class="center-submn">
                                <ul>
                                    <a href="#"><li>입사지원 현황</li></a>
                                </ul>
                            </div>
                        </div>
                        <div class="center-mn">
                            <div class="mn-tilte">
                                <h2>스크랩/관심기업</h2>
                            </div>
                            <div class="center-submn">
                                <ul>
                                    <a href="#"><li>스크랩</li></a>
                                    <a href="#"><li>관심기업</li></a>
                                </ul>
                            </div>
                        </div>
                        <div class="center-mn">
                            <div class="mn-tilte">
                                <h2>회원정보관리</h2>
                            </div>
                            <div class="center-submn">
                                <ul>
                                    <a href="/accounts/info/change/personal"><li>회원정보 수정</li></a>
                                    <a href="/accounts/password/change/personal"><li>비밀번호 변경</li></a>
                                </ul>
                            </div>
                        </div>
                    </div>

                </div>
            </div>

        </div>
    </main>
    

</body>
</html>