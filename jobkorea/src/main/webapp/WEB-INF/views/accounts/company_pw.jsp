<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<sec:authorize access="isAuthenticated()">
	<sec:authentication property="principal" var="principal"/>
</sec:authorize>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>잡코리아 마이페이지 | 잡코리아 - 좋은 일이 생긴다
        jobkorea.co.kr
    </title>
    <link rel="stylesheet" href="/css/style.css">
    <link rel="stylesheet" href="/css/company_pw.css">
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
        </div>
    </nav>

    <main>
        <div class="main-top" style="background: url(/images/bg-header.png);">
            <div class="top-container">
                <div class="com-logo">
                    <img src="/images/nav-logo.png" alt="">
                </div>
                <div class="com-name">
                    <h2>${principal.company.compname }</h2>
                    <p>it컴퓨터, 소프트웨어</p>
                </div>
            </div>
        </div>
        <div class="main-center">
            <div class="category">
                <div class="category-in">
                    <a href="/mypage/companyPage">마이페이지</a>
                    <a href="#">공고등록</a>
                    <a href="/accounts/applicant">지원자확인</a>
                    <a href="/accounts/companyEdit">기업정보수정</a>
                    <a href="/accounts/companyPassword" class="on">비밀번호수정</a>
                </div>
            </div>
            <div class="com-img">
                <div class="dtl-img">
                    <img src="/images/nav-logo.png" alt="">
                </div>
                <div class="dtl-img">
                    <img src="/images/nav-logo.png" alt="">
                </div>
                <div class="dtl-img">
                    <img src="/images/nav-logo.png" alt="">
                </div>
                <div class="dtl-img">
                    <img src="/images/nav-logo.png" alt="">
                </div>
            </div>
            <div class="com-info">
                <h2>| 비밀번호변경</h2>
            </div>
            
            <form>
	            <div class="dtl-info">
	                <table>
	                    <tr>
	                        <td class="title1">현재 비밀번호</td>
	                        <td class="title1-1"><input type="password" name="prepassword" id="prepassword"></td>
	                    </tr>
	                    <tr>
	                        <td class="title1">새로운 비밀번호</td>
	                        <td class="title1-1"><input type="password" name="newpassword" id="newpassword"></td>
	                    </tr>
	                    <tr>
	                        <td class="title1">새로운 비밀번호 확인</td>
	                        <td class="title1-1"><input type="password" name="newpasswordcheck" id="newpasswordcheck"></td>
	                    </tr>
	                </table>
	            </div>
            </form>
            
	        <div class="info-edit-btn">
	                    <button type="button" class="confirm">수정하기</button>
	                    <button type="button" class="cancel">취소</button>
	        </div>
        </div>
    </main>
    <div id="footer">
        <p id="copyright">
            <img src="https://i.jobkorea.kr/content/images/login/ver_1/copyright.png?220104" alt="">
        </p>
    </div>

	<script src="/js/company_pw.js"></script>
</body>

</html>