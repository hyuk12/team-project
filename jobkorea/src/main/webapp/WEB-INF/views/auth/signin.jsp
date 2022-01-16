<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>잡코리아 알바몬 통합 로그인 | 잡코리아 - 좋은 일이 생긴다
        jobkorea.co,kr
    </title>
    <link rel="stylesheet" href="/css/signin.css">
</head>
<body>
    <div id="container">
        <div class="logotop-login">
            <p class="lnb">
                <a href="/index">잡코리아홈</a>
                <span class="txtBar">|</span>
                <a href="#">고객센터</a>
            </p>
            <h1 class="hd">
                <span class="logo"></span>
                하나의 아이디로 잡코리아, 알바몬 서비스를 모두 이용하실 수 있습니다.
            </h1>
        </div>
        
        <div class="secLogin">
        
        	<div class="select-row">
                <ul id="decMemTab">
                    <li class="on">
                        <a href="/auth/signin" data-m-type="M">개인회원</a>
                    </li>
                    <li>
                        <a href="/auth/signinComp" data-m-type="Co">기업회원</a>
                    </li>
                </ul>
            </div>
       <form action="/auth/signin" method="post">
            <div class="input-row">
                <div class="input-item">
                    <input type="text" class="inpTxt inpID off" name="username"  title="아이디 입력"
                        style="ime-mode:inactive" autocomplete="off" placeholder="아이디">
                    <input type="password" class="inpTxt inpPW off devCapsLock" name="password" title="비밀번호 입력"
                        autocomplete="off" placeholder="비밀번호">
                </div>
                 <button type="button" class="btLogin">로그인</button>
                </div>
        </form>
            
            
            <div class="find-row">
                <p>
                	<a href="/auth/signup">회원가입</a>
                    <span class="txtBar">|</span>
                    <a href="#">아이디 찾기</a>
                    <span class="txtBar">|</span>
                    <a href="#">비밀번호 찾기</a>
                </p>
            </div>
            <div class="social-login">
                <div class="social-login-btn">
                    <a href="#">
                        <span class="facebook-logo">
                            <img src="/images/login-facebook.png" alt="">
                        </span>
                        <span class="txtBar">|</span>
                        <span>페이스북으로 로그인</span>
                    </a>
                </div>
                <div class="social-login-btn">
                    <a href="#">
                        <span class="naver-logo">
                            <img src="/images/login-naver.png" alt="">
                        </span>
                        <span class="txtBar">|</span>
                        <span>네이버로 로그인</span>
                    </a>
                </div>
            </div>
        </div>  
        <div id="footer">
            <p id="copyright">
                <img src="https://i.jobkorea.kr/content/images/login/ver_1/copyright.png?220104" alt="">
            </p>
        </div>
    </div>
</body>
</html>