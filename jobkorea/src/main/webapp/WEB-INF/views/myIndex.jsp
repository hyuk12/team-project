<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!-- 세션에서 인증이 되었다면 -->
<sec:authorize access="isAuthenticated()">
<!-- property: princopal 객체를 principal이라는 이름으로 넣음 -->
<sec:authentication property="principal" var="principal"/>
</sec:authorize>

<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="/css/style.css">
	<link rel="stylesheet" href="/css/nav.css">
	<link rel="stylesheet" href="/css/myindex.css">

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
    <section>
        <div class="main">
            <div class="section">
                <div class="add-section">
                    <img src="/images/login-logo.png" alt="">
                </div>
                <div class="login-section">
                    <div class="my-login-info">
                        <a href="/mypage/personalPage">${principal.users.name }님 <i class="fas fa-angle-right"></i></a>
                        <a href="/logout"><span>로그아웃</span></a>
                        <div class="my-info-resume"><a href="#">이력서 관리</a></div>                    
                    </div>
                </div>
            </div>
            <main>
                <div class="board-menu">
                    <div class="board-menu-item">
                        <h1>First VVIP 채용관</h1>
                    </div>
                </div>
                <div class="container">
                    <div class="board-item-group">
                        <div class="board-item">
                            <div class="company-profile">
                                <div class="company-info">
                                    <img src="/images/nav-logo.png" alt="">
                                </div>
                                <div class="profile-name">
                                    <h3>cupang</h3>
                                </div>
                                <div class="profile-info">
                                    <h1>전국 물류센터 계약직 대규모 모집</h1>
                                </div>
                                <div class="follow-btn">
                                    <i class="far fa-star"></i>
                                </div>
                            </div>
                        </div>  
                        <div class="board-item">
                            <div class="company-profile">
                                <div class="company-info">
                                    <img src="/images/nav-logo.png" alt="">
                                </div>
                                <div class="profile-name">
                                    <h3>cupang</h3>
                                </div>
                                <div class="profile-info">
                                    <h1>전국 물류센터 계약직 대규모 모집</h1>
                                </div>
                                <div class="follow-btn">
                                    <i class="far fa-star"></i>
                                </div>
                            </div>
                        </div>     
                        <div class="board-item">
                            <div class="company-profile">
                                <div class="company-info">
                                    <img src="/images/nav-logo.png" alt="">
                                </div>
                                <div class="profile-name">
                                    <h3>cupang</h3>
                                </div>
                                <div class="profile-info">
                                    <h1>전국 물류센터 계약직 대규모 모집</h1>
                                </div>
                                <div class="follow-btn">
                                    <i class="far fa-star"></i>
                                </div>
                            </div>
                        </div>    
                        <div class="board-item">
                            <div class="company-profile">
                                <div class="company-info">
                                    <img src="/images/nav-logo.png" alt="">
                                </div>
                                <div class="profile-name">
                                    <h3>cupang</h3>
                                </div>
                                <div class="profile-info">
                                    <h1>전국 물류센터 계약직 대규모 모집</h1>
                                </div>
                                <div class="follow-btn">
                                    <i class="far fa-star"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="board-item-group">
                        <div class="board-item">
                            <div class="company-profile">
                                <div class="company-info">
                                    <img src="/images/nav-logo.png" alt="">
                                </div>
                                <div class="profile-name">
                                    <h3>cupang</h3>
                                </div>
                                <div class="profile-info">
                                    <h1>전국 물류센터 계약직 대규모 모집</h1>
                                </div>
                                <div class="follow-btn">
                                    <i class="far fa-star"></i>
                                </div>
                            </div>
                        </div>  
                        <div class="board-item">
                            <div class="company-profile">
                                <div class="company-info">
                                    <img src="/images/nav-logo.png" alt="">
                                </div>
                                <div class="profile-name">
                                    <h3>cupang</h3>
                                </div>
                                <div class="profile-info">
                                    <h1>전국 물류센터 계약직 대규모 모집</h1>
                                </div>
                                <div class="follow-btn">
                                    <i class="far fa-star"></i>
                                </div>
                            </div>
                        </div>     
                        <div class="board-item">
                            <div class="company-profile">
                                <div class="company-info">
                                    <img src="/images/nav-logo.png" alt="">
                                </div>
                                <div class="profile-name">
                                    <h3>cupang</h3>
                                </div>
                                <div class="profile-info">
                                    <h1>전국 물류센터 계약직 대규모 모집</h1>
                                </div>
                                <div class="follow-btn">
                                    <i class="far fa-star"></i>
                                </div>
                            </div>
                        </div>    
                        <div class="board-item">
                            <div class="company-profile">
                                <div class="company-info">
                                    <img src="/images/nav-logo.png" alt="">
                                </div>
                                <div class="profile-name">
                                    <h3>cupang</h3>
                                </div>
                                <div class="profile-info">
                                    <h1>전국 물류센터 계약직 대규모 모집</h1>
                                </div>
                                <div class="follow-btn">
                                    <i class="far fa-star"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="board-item-group">
                        <div class="board-item">
                            <div class="company-profile">
                                <div class="company-info">
                                    <img src="/images/nav-logo.png" alt="">
                                </div>
                                <div class="profile-name">
                                    <h3>cupang</h3>
                                </div>
                                <div class="profile-info">
                                    <h1>전국 물류센터 계약직 대규모 모집</h1>
                                </div>
                                <div class="follow-btn">
                                    <i class="far fa-star"></i>
                                </div>
                            </div>
                        </div>  
                        <div class="board-item">
                            <div class="company-profile">
                                <div class="company-info">
                                    <img src="/images/nav-logo.png" alt="">
                                </div>
                                <div class="profile-name">
                                    <h3>cupang</h3>
                                </div>
                                <div class="profile-info">
                                    <h1>전국 물류센터 계약직 대규모 모집</h1>
                                </div>
                                <div class="follow-btn">
                                    <i class="far fa-star"></i>
                                </div>
                            </div>
                        </div>     
                        <div class="board-item">
                            <div class="company-profile">
                                <div class="company-info">
                                    <img src="/images/nav-logo.png" alt="">
                                </div>
                                <div class="profile-name">
                                    <h3>cupang</h3>
                                </div>
                                <div class="profile-info">
                                    <h1>전국 물류센터 계약직 대규모 모집</h1>
                                </div>
                                <div class="follow-btn">
                                    <i class="far fa-star"></i>
                                </div>
                            </div>
                        </div>    
                        <div class="board-item">
                            <div class="company-profile">
                                <div class="company-info">
                                    <img src="/images/nav-logo.png" alt="">
                                </div>
                                <div class="profile-name">
                                    <h3>cupang</h3>
                                </div>
                                <div class="profile-info">
                                    <h1>전국 물류센터 계약직 대규모 모집</h1>
                                </div>
                                <div class="follow-btn">
                                    <i class="far fa-star"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>            
            </main>
        </div>
    </section>
</body>
</html>