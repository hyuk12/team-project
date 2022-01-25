<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<sec:authorize access="isAuthenticated()">
	<sec:authentication property="principal" var="principal"/>
</sec:authorize>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    
    <link rel="stylesheet" href="/css/accounts_edit.css">
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>
    <jsp:include page="../include/nav.jsp"></jsp:include>
    <div class="wrap">
        <div class="accounts-change-btn">
            <a href="/accounts/edit">회원정보 수정</a>
        </div>
        <div class="accounts-change-btn">
            <a href="/accounts/password">비밀번호 변경</a>
        </div>
    </div>
    <div class="main">
        <div class="username-check">
        	<div>
        		<h1 id="principal-username">${principal.users.username }</h1>
        	</div>
        	
            <form enctype="multipart/form-data">
            	<div class="accounts-main">
                <div class="left-aside">
                    <div class="info-lb username-lb">아이디</div>
                    <div class="info-lb name-lb">이름</div>
                    <div class="info-lb phone-lb">휴대전화</div>
                    <div class="info-lb email-lb">이메일</div>
                </div>
                <div class="main-info">
                    <div class="info-ip">
                        <div>
                        	
                            <input type="text" class="pr-ip username-ip" name="username" value="${principal.users.username }">
                        </div>
                    </div>
                    <div class="info-ip">
                        <div>
                            <input type="text" class="pr-ip  name-ip" name="name" value="${principal.users.name }">
                        </div>
                    </div>
                    <div class="info-ip">
                        <div>
                            <input type="text" class="pr-ip phone-ip" name="phone" value="${principal.users.phone }">
                        </div>
                    </div>
                    <div class="info-ip">
                        <div>
                            <input type="text" class="pr-ip email-ip" name="email" value="${principal.users.email }">
                        </div>
                    </div>
                </div>
                <div class="profile-img">
                	
                    <img id="profile-img" src="/image/${principal.resume.profile_img }">
                    <input id="file" type="file" name="file">
                    <div class="profile-img-change-btn">
                		프로필사진 바꾸기
                	</div>
                </div>
            </div>
            <div class="submit-area">
                <button type="button" class="edit-button">수정하기</button>
            </div>
        </div>
     		</form>
            
        
    </div>
    <script src="/js/accounts_edit.js"></script>
</body>
</html>