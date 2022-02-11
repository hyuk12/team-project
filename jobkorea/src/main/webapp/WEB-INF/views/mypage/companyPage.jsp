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
        jobkorea.co.kr
    </title>
    <link rel="stylesheet" href="/css/style.css">
    <link rel="stylesheet" href="/css/company_edit.css">
    <link rel="stylesheet" href="/css/mypage.css">
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    
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
                            <p>${principal.companyDtl.industry }</p>
                        </div>
                   </div>
                </div>
                <div class="main-center">
                    <div class="category">
                        <div class="category-in">
                            <a href="/mypage/companyPage" class="on">마이페이지</a>
                            <a href="#">공고등록</a>
                            <a href="/accounts/applicant">지원자확인</a>
                            <a href="/accounts/companyEdit">기업정보수정</a>
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
                        <h2>| 기업정보</h2>
                    </div>
                    <div class="dtl-info">
                        <table>
                            <tr>
                                <td class="title1">산업</td>
                                <td class="title1-1">${principal.companyDtl.industry }</td>
                                <td class="title2">설립일</td>
                                <td class="title2-1">${principal.companyDtl.establish }</td>
                            </tr>
                            <tr>
                                <td class="title1">기업구분</td>
                                <td class="title1-1">${principal.company.comptype }</td>
                                <td class="title2">매출액</td>
                                <td class="title2-1">${principal.companyDtl.sales }</td>
                            </tr>
                            <tr>
                                <td class="title1">대표자</td>
                                <td class="title1-1">${principal.company.ceoname }</td>
                                <td class="title2">주요사업</td>
                                <td class="title2-1">${principal.companyDtl.business }</td>
                            </tr>
                            <tr>
                                <td class="title1">홈페이지</td>
                                <td class="title1-1"><a href="http://${principal.companyDtl.homepage }">${principal.companyDtl.homepage }</a> </td>
                                <td class="title2">주소</td>
                                <td class="title2-1">${principal.companyDtl.address }</td>
                            </tr>
                        </table>
                    </div>
                    <div class="com-info">
                        <h2>| 고용현황</h2>
                    </div>
                    <div class="dtl-info">
                        <div class="post-job"><h2>채용공고</h2></div>
                        <div class="post-job"><a href="#">안전관리자, 보건관리자 채용</a></div>
                        <div class="post-job"><a href="#">인턴 채용</a></div>
                    </div>
                 </div>
            </main>
            <div id="footer">
                <p id="copyright">
                    <img src="https://i.jobkorea.kr/content/images/login/ver_1/copyright.png?220104" alt="">
                </p>
            </div>


	</body>
</html>