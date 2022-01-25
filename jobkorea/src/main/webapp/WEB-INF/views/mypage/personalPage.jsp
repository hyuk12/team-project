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
    <link rel="stylesheet" href="/css/mypage.css">
</head>
<body>
    <jsp:include page="../include/nav.jsp"></jsp:include>
    
    <main>
        <div>
            <div class="main-page">
                <div class="myContent">
                    <div class="profile box">
                        <div class="profile-img">
                        	<a href="#">
                                <img src="/image/${principal.resume.profile_img }">
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
                                <a href="/resume">
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
                                    <a href="/resume/edit"><li>이력서 수정</li></a>
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
                                    <a href="/accounts/edit"><li>회원정보 수정</li></a>
                                </ul>
                            </div>
                        </div>
                    </div>

                </div>
            </div>

        </div>
    </main>
    

</body>