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
            <link rel="stylesheet" href="/css/applicant_page.css">
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
                            <p>잡코리아(주)</p>
                        </div>
                   </div>
                </div>
                <div class="main-center">
                    <div class="category">
                        <div class="category-in">
                            <a href="#">공고등록</a>
                            <a href="/accounts/applicant">지원자확인</a>
                            <a href="/accounts/CompanyEdit">기업정보수정</a>
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
                                <td class="title1-1">아이디</td>
                                <td class="title2">설립일</td>
                                <td class="title2-1">아이디</td>
                            </tr>
                            <tr>
                                <td class="title1">기업구분</td>
                                <td class="title1-1">아이디</td>
                                <td class="title2">매출액</td>
                                <td class="title2-1">아이디</td>
                            </tr>
                            <tr>
                                <td class="title1">대표자</td>
                                <td class="title1-1">아이디</td>
                                <td class="title2">매출액</td>
                                <td class="title2-1">아이디</td>
                            </tr>
                            <tr>
                                <td class="title1">홈페이지</td>
                                <td class="title1-1">아이디</td>
                                <td class="title2">주소</td>
                                <td class="title2-1">아이디</td>
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