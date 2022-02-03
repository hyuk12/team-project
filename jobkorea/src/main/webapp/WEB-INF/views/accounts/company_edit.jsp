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
    <link rel="stylesheet" href="/css/company_edit.css">
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
                    <a href="/accounts/companyEdit" class="on">기업정보수정</a>
                    <a href="/accounts/companyPassword">비밀번호수정</a>
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
                <h2>| 아이디변경</h2>
            </div>
            
            <div class="dtl-info">
                <table>
                    <tr>
                        <td class="title1">아이디</td>
                        <td class="title1-1"><input type="text" name="username" value="${principal.company.username }"></td>
                        <td class="title2"></td>
                        <td class="title2-1"><input type="hidden" name="" value="${principal.company.username }"></td>
                    </tr>
                </table>
            </div>
            
            <div class="com-info">
                <h2>| 기업정보</h2>
            </div>
            <form>
	            <div class="dtl-info">
	                <table>
	                    <tr>
	                        <td class="title1">산업</td>
	                        <td class="title1-1"><input type="text" name="industry"  value="${principal.companyDtl.industry }" ></td>
	                        <td class="title2">설립일</td>
	                        <td class="title2-1"><input type="text" name="establish"  value="${principal.companyDtl.establish }"></td>
	                    </tr>
	                    <tr>
	                        <td class="title1">기업구분</td>
	                        <td class="title1-1"><input type="text" name="compType" value="${principal.company.comptype }"></td>
	                        <td class="title2">매출액</td>
	                        <td class="title2-1"><input type="text" name="sales"  value="${principal.companyDtl.sales }"></td>
	                    </tr>
	                    <tr>
	                        <td class="title1">대표자</td>
	                        <td class="title1-1"><input type="text" name="ceoName" value="${principal.company.ceoname }"></td>
	                        <td class="title2">주요사업</td>
	                        <td class="title2-1"><input type="text" name="business"  value="${principal.companyDtl.business }"></td>
	                    </tr>
	                    <tr>
	                        <td class="title1">홈페이지</td>
	                        <td class="title1-1"><input type="text" name="homepage"  value="${principal.companyDtl.homepage }"></td>
	                        <td class="title2">주소</td>
	                        <td class="title2-1"><input type="text" name="address"  value="${principal.companyDtl.address }"></td>
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

	<script src="/js/company_edit.js"></script>
</body>

</html>