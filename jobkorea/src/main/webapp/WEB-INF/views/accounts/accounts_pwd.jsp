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
        <div class="password-check">
            		<div class="accounts-main-pwd">
                    <div class="left-aside-pwd">
                        <div class="info-lb pre-password-lb">현재 비밀번호</div>
                        <div class="info-lb new-password-lb">새로운 비밀번호</div>
                        <div class="info-lb new-check-pwd-lb">새로운 비밀번호 확인</div>
                    </div>
                    <div class="main-info-pwd">
                        <div class="info-ip">
                            <div>
                                <input type="password" class="pre-password-ip" name="prePassword">
                            </div>
                        </div>
                        <div class="info-ip">
                            <div>
                                <input type="password" class="new-password-ip" name="newPassword">
                            </div>
                        </div>
                        <div class="info-ip">
                            <div>
                                <input type="password" class="new-check-pwd-ip" name="newPwdCheck">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="submit-area">
                    <button type="button" class="pwd-button">수정하기</button>
                </div>
            	
                
        </div>
        
    </div>
    <script src="/js/accounts_pwd.js"></script>
</body>
</html>