<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <link rel="stylesheet" href="/css/personal_ch_pw.css">
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
                <h2>비밀번호 변경</h2>
            </div>
            <div class="info-top2">
                <p>º 비밀번호는 8~16자 영문, 숫자, 특수문자를 사용할 수 있습니다.</p>
            </div>
        
                <div class="info-edit">
                    <table>
                        <tr>
                            <td class="title">현재 비밀번호</td>
                            <td class="ip-pw"><input type="password" id="prePassword"></td>
                        </tr>
                        <tr>
                            <td class="title">새로운 비밀번호</td>
                            <td class="ip-pw"><input type="password" id="newPassword"></td>
                        </tr>
                        <tr>
                            <td class="title">새로운 비밀번호 확인</td>
                            <td class="ip-pw"><input type="password" id="newPasswordCheck"></td>
                        </tr>
                    </table>
                </div>
                <div class="info-edit-btn">
                    <button type="button" class="confirm">수정하기</button>
                    <button type="button" onclick="location.href='/mypage/personalPage'" class="cancel">취소</button>
                </div>
        </div>
    </div>
    
	<script src="/js/personal_ch_pw.js"></script>
</body>

</html>