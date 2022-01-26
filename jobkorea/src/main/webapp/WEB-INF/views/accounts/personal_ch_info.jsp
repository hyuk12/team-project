<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

	<!-- 세션에서 인증이 되었다면 -->
	<sec:authorize access="isAuthenticated()">
	<!-- property: princopal 객체를 principal이라는 이름으로 넣음 -->
	<sec:authentication property="principal" var="principal"/>
	</sec:authorize>
	
<!DOCTYPE html>
<html lang="ko">

<head>
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>잡코리아 알바몬 통합 로그인 | 잡코리아 - 좋은 일이 생긴다 | 회원정보수정
        jobkorea.co.kr
    </title>
    <link rel="stylesheet" href="/css/style.css">
    <link rel="stylesheet" href="/css/nav.css">
    <link rel="stylesheet" href="/css/personal_ch_info.css">
    <!-- ajax -->
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
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
    <div class="ch-pw-wrap">
        <div class="user-info">
            <div class="info-top">
                <h2>회원정보 수정</h2>
            </div>
            <div class="info-top2">
                <p>º 회원님의 정보를 수정/확인하실 수 있습니다.</p>
            </div>
        
                <div class="info-edit">
                    <table>
                        <tr>
                            <td class="title">아이디<span class="require"> *</span></td>
                            <td class="ip-info"><input type="text" id="ip-username" value="${principal.users.username }"><button type="button" id="id-check">아이디 중복확인</button></td>
                        </tr>
                        <tr>
                            <td class="title">이메일<span class="require"> *</span></td>
                            <td class="ip-info"><input type="text" id="ip-email" value="${principal.users.email }"></td>
                        </tr>
                        <tr>
                            <td class="title">휴대폰번호<span class="require"> *</span></td>
                            <td class="ip-info"><input type="text" id="ip-phone" value="${principal.users.phone }"></td>
                        </tr>
                    </table>
                </div>
                <div class="info-edit-btn">
                    <button type="button" class="confirm">수정하기</button>
                    <button type="button" class="cancel">취소</button>
                </div>
        </div>
    </div>
    
	<script src="/js/personal_ch_info.js"></script>
</body>

</html>