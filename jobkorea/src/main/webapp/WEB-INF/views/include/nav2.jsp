<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<html>
<head>
    <link rel="stylesheet" href="/css/style.css">
    <link rel="stylesheet" href="/css/nav2.css">
    <script src="https://kit.fontawesome.com/c3df4d7d1c.js" crossorigin="anonymous"></script>
</head>
<body>
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
                <button type="button" class="category-btn">
                    <i class="fas fa-bars"></i>
                </button>
            </div>
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
                            <img src="/images/mypage-logo.png" >
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
</body>
</html>

