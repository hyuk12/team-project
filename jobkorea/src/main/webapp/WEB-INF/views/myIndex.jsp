<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!-- 세션에서 인증이 되었다면 -->
<sec:authorize access="isAuthenticated()">
<!-- property: princopal 객체를 principal이라는 이름으로 넣음 -->
<sec:authentication property="principal" var="principal"/>
</sec:authorize>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>

<!DOCTYPE html>
<html>
<head>

	<link rel="stylesheet" href="/css/myindex.css">


</head>
<body>
    <jsp:include page="include/nav.jsp"></jsp:include>
    <section>
        <div class="main">
            <div class="section">
                <div class="add-section">
                    <img src="/images/add.png" alt="">
                </div>
                <div class="login-section">
                    <div class="my-login-info">
                        <div class="mypage-in">
                            <a href="/mypage/personalPage">${principal.users.name } 님 </a>
                            <a href="/resume">이력서 관리<i class="fas fa-angle-right"></i></a>
                        </div>
                        <div class="my-info-resume">
                            <a href="/logout"><span>로그아웃</span></a>
                        </div>                    
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
                        </div>    
                </div> 
            </main>
        </div>	
    </section>
    <script src="/js/myindex.js"></script>
</body>
</html>