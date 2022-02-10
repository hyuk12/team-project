<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="/css/main.css">
	<script src="https://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>
    <jsp:include page="../include/nav.jsp"></jsp:include>
    <section>
        <div class="main">
            <div class="login-wrap">
                <ul class="login-btns">
                    <li>
                        <button type="button" class="user-login-btn" title="개인회원 로그인">
                            <a href="/auth/signin">개인회원 <br>로그인</a>
                        </button>
                    </li>
                    <li>
                        <button type="button" class="company-login-btn" title="기업전용 로그인">
                            <a href="/auth/signin">기업전용 <br>로그인</a>
                        </button>
                    </li>
                </ul>
                <ul>
                    <li class="signup-btn">
                        <a href="/auth/signup">회원가입</a>
                    </li>
                </ul>
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
              </div>            
           </main>
        </div>
    </section>
    <script src="/js/index.js"></script>
</body>
</html>