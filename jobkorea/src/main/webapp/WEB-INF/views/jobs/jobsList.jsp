<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
    
<sec:authorize access="isAuthenticated()">
	<sec:authentication property="principal" var="principal"/>
</sec:authorize>

<!DOCTYPE html>
<html lang="ko">
<head> 
	<link rel="stylesheet" href="/css/jobposting.css">
	 
</head>
<body>
    <jsp:include page="../include/nav2.jsp"></jsp:include>
    <section>
        <div class="main">
            <div class="sidebar">
               <div class="start-column">
                   <a href="#">
                       <span>관심기업</span>
                   </a>
               </div>
               <div>
                    <a href="#">
                        <span>직무별</span>
                    </a>
                </div>
                <div>
                    <a href="#">
                        <span>지역별</span>
                    </a>
                </div>
                <div class="last_column">
                    <a href="#">
                        <span>인기기업</span>
                    </a>
                </div>
            </div>
        
            <main>
                <div class="board-menu">
                    <div class="select-row">
                        <ul class="company-list-menu">
                            <li>
                                <a href="#" class="comp-item on">
                                    <div>
                                        <span class="first-name">전체</span>
                                         
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="comp-item">
                                    <div>
                                        <span class="first-name">대기업</span>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="comp-item">
                                    <div>
                                        <span class="first-name">중견,중소기업</span>
                                        
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="last-item">
                                    <div>
                                        <span class="first-name">공기업</span>
                                        
                                    </div>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="comp-all-wrap">
                        <div class="comp-item-list">
                            <div class="comp-item-first">
                                <div class="comp-name">
                                    <a href="/jobs/jobinfo">(주) 주연테크</a>
                                </div>
                                <div class="comp-info">
                                    <a href="/jobs/jobinfo">
                                        2022년 상반기 각 부문 신입 및 경력 모집
                                    </a>
                                    <span class="comp-info-item">
                                        신입.경력 학력무관 경기 성남시 정규직
                                    </span>
                                    <span class="certificate">
                                        검사,가스기능사,가스산업기사,배관기능사,용접산업기사
                                    </span>
                                </div>
                                <div class="comp-btn">
                                   <a href="/resume/submission"><span>지원하기</span></a>
                                   <p>등록일자</p>
                                   <p>2022-01-01</p>
                                </div>
                            </div>
                        </div>
                        <div class="comp-item-list">
                            <div class="comp-item-first">
                                <div class="comp-name">
                                    <a href="/jobs/jobinfo">(주) 주연테크</a>
                                </div>
                                <div class="comp-info">
                                    <a href="/jobs/jobinfo">
                                        2022년 상반기 각 부문 신입 및 경력 모집
                                    </a>
                                    <span class="comp-info-item">
                                        신입.경력 학력무관 경기 성남시 정규직
                                    </span>
                                    <span class="certificate">
                                        검사,가스기능사,가스산업기사,배관기능사,용접산업기사
                                    </span>
                                </div>
                                <div class="comp-btn">
                                   <a href="/resume/submission"><span>지원하기</span></a>
                                   <p>등록일자</p>
                                   <p>2022-01-01</p>
                                </div>
                            </div>
                        </div>
                        <div class="comp-item-list">
                            <div class="comp-item-first">
                                <div class="comp-name">
                                    <a href="/jobs/jobinfo">(주) 주연테크</a>
                                </div>
                                <div class="comp-info">
                                    <a href="/jobs/jobinfo">
                                        2022년 상반기 각 부문 신입 및 경력 모집
                                    </a>
                                    <span class="comp-info-item">
                                        신입.경력 학력무관 경기 성남시 정규직
                                    </span>
                                    <span class="certificate">
                                        검사,가스기능사,가스산업기사,배관기능사,용접산업기사
                                    </span>
                                </div>
                                <div class="comp-btn">
                                   <a href="/resume/submission"><span>지원하기</span></a>
                                   <p>등록일자</p>
                                   <p>2022-01-01</p>
                                </div>
                            </div>
                        </div>
                        <div class="comp-item-list">
                            <div class="comp-item-first">
                                <div class="comp-name">
                                    <a href="/jobs/jobinfo">(주) 주연테크</a>
                                </div>
                                <div class="comp-info">
                                    <a href="/jobs/jobinfo">
                                        2022년 상반기 각 부문 신입 및 경력 모집
                                    </a>
                                    <span class="comp-info-item">
                                        신입.경력 학력무관 경기 성남시 정규직
                                    </span>
                                    <span class="certificate">
                                        검사,가스기능사,가스산업기사,배관기능사,용접산업기사
                                    </span>
                                </div>
                                <div class="comp-btn">
                                   <a href="/resume/submission"><span>지원하기</span></a>
                                   <p>등록일자</p>
                                   <p>2022-01-01</p>
                                </div>
                            </div>
                        </div>
                        <div class="comp-item-list">
                            <div class="comp-item-first">
                                <div class="comp-name">
                                    <a href="/jobs/jobinfo">(주) 주연테크</a>
                                </div>
                                <div class="comp-info">
                                    <a href="/jobs/jobinfo">
                                        2022년 상반기 각 부문 신입 및 경력 모집
                                    </a>
                                    <span class="comp-info-item">
                                        신입.경력 학력무관 경기 성남시 정규직
                                    </span>
                                    <span class="certificate">
                                        검사,가스기능사,가스산업기사,배관기능사,용접산업기사
                                    </span>
                                </div>
                                <div class="comp-btn">
                                   <a href="/resume/submission"><span>지원하기</span></a>
                                   <p>등록일자</p>
                                   <p>2022-01-01</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="comp-major-wrap">
                        <div class="comp-item-list">
                            <div class="comp-item-first">
                                <div class="comp-name">
                                    <a href="/jobs/jobinfo">(주) 주연테크</a>
                                </div>
                                <div class="comp-info">
                                    <a href="/jobs/jobinfo">
                                        2021년 상반기 각 부문 신입 및 경력 모집
                                    </a>
                                    <span class="comp-info-item">
                                        신입.경력 학력무관 경기 성남시 정규직
                                    </span>
                                    <span class="certificate">
                                        검사,가스기능사,가스산업기사,배관기능사,용접산업기사
                                    </span>
                                </div>
                                <div class="comp-btn">
                                   <a href="/resume/submission"><span>지원하기</span></a>
                                   <p>등록일자</p>
                                   <p>2022-01-01</p>
                                </div>
                            </div>
                        </div>
                        <div class="comp-item-list">
                            <div class="comp-item-first">
                                <div class="comp-name">
                                    <a href="/jobs/jobinfo">(주) 주연테크</a>
                                </div>
                                <div class="comp-info">
                                    <a href="/jobs/jobinfo">
                                        2022년 상반기 각 부문 신입 및 경력 모집
                                    </a>
                                    <span class="comp-info-item">
                                        신입.경력 학력무관 경기 성남시 정규직
                                    </span>
                                    <span class="certificate">
                                        검사,가스기능사,가스산업기사,배관기능사,용접산업기사
                                    </span>
                                </div>
                                <div class="comp-btn">
                                   <a href="/resume/submission"><span>지원하기</span></a>
                                   <p>등록일자</p>
                                   <p>2022-01-01</p>
                                </div>
                            </div>
                        </div>
                        <div class="comp-item-list">
                            <div class="comp-item-first">
                                <div class="comp-name">
                                    <a href="/jobs/jobinfo">(주) 주연테크</a>
                                </div>
                                <div class="comp-info">
                                    <a href="/jobs/jobinfo">
                                        2022년 상반기 각 부문 신입 및 경력 모집
                                    </a>
                                    <span class="comp-info-item">
                                        신입.경력 학력무관 경기 성남시 정규직
                                    </span>
                                    <span class="certificate">
                                        검사,가스기능사,가스산업기사,배관기능사,용접산업기사
                                    </span>
                                </div>
                                <div class="comp-btn">
                                   <a href="/resume/submission"><span>지원하기</span></a>
                                   <p>등록일자</p>
                                   <p>2022-01-01</p>
                                </div>
                            </div>
                        </div>
                        <div class="comp-item-list">
                            <div class="comp-item-first">
                                <div class="comp-name">
                                    <a href="/jobs/jobinfo">(주) 주연테크</a>
                                </div>
                                <div class="comp-info">
                                    <a href="/jobs/jobinfo">
                                        2022년 상반기 각 부문 신입 및 경력 모집
                                    </a>
                                    <span class="comp-info-item">
                                        신입.경력 학력무관 경기 성남시 정규직
                                    </span>
                                    <span class="certificate">
                                        검사,가스기능사,가스산업기사,배관기능사,용접산업기사
                                    </span>
                                </div>
                                <div class="comp-btn">
                                   <a href="/resume/submission"><span>지원하기</span></a>
                                   <p>등록일자</p>
                                   <p>2022-01-01</p>
                                </div>
                            </div>
                        </div>
                        <div class="comp-item-list">
                            <div class="comp-item-first">
                                <div class="comp-name">
                                    <a href="/jobs/jobinfo">(주) 주연테크</a>
                                </div>
                                <div class="comp-info">
                                    <a href="/jobs/jobinfo">
                                        2022년 상반기 각 부문 신입 및 경력 모집
                                    </a>
                                    <span class="comp-info-item">
                                        신입.경력 학력무관 경기 성남시 정규직
                                    </span>
                                    <span class="certificate">
                                        검사,가스기능사,가스산업기사,배관기능사,용접산업기사
                                    </span>
                                </div>
                                <div class="comp-btn">
                                   <a href="/resume/submission"><span>지원하기</span></a>
                                   <p>등록일자</p>
                                   <p>2022-01-01</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="comp-mid-wrap">
                        <div class="comp-item-list">
                            <div class="comp-item-first">
                                <div class="comp-name">
                                    <a href="/jobs/jobinfo">(주) 주연테크</a>
                                </div>
                                <div class="comp-info">
                                    <a href="/jobs/jobinfo">
                                        2020년 상반기 각 부문 신입 및 경력 모집
                                    </a>
                                    <span class="comp-info-item">
                                        신입.경력 학력무관 경기 성남시 정규직
                                    </span>
                                    <span class="certificate">
                                        검사,가스기능사,가스산업기사,배관기능사,용접산업기사
                                    </span>
                                </div>
                                <div class="comp-btn">
                                   <a href="/resume/submission"><span>지원하기</span></a>
                                   <p>등록일자</p>
                                   <p>2022-01-01</p>
                                </div>
                            </div>
                        </div>
                        <div class="comp-item-list">
                            <div class="comp-item-first">
                                <div class="comp-name">
                                    <a href="/jobs/jobinfo">(주) 주연테크</a>
                                </div>
                                <div class="comp-info">
                                    <a href="/jobs/jobinfo">
                                        2022년 상반기 각 부문 신입 및 경력 모집
                                    </a>
                                    <span class="comp-info-item">
                                        신입.경력 학력무관 경기 성남시 정규직
                                    </span>
                                    <span class="certificate">
                                        검사,가스기능사,가스산업기사,배관기능사,용접산업기사
                                    </span>
                                </div>
                                <div class="comp-btn">
                                   <a href="/resume/submission"><span>지원하기</span></a>
                                   <p>등록일자</p>
                                   <p>2022-01-01</p>
                                </div>
                            </div>
                        </div>
                        <div class="comp-item-list">
                            <div class="comp-item-first">
                                <div class="comp-name">
                                    <a href="/jobs/jobinfo">(주) 주연테크</a>
                                </div>
                                <div class="comp-info">
                                    <a href="/jobs/jobinfo">
                                        2022년 상반기 각 부문 신입 및 경력 모집
                                    </a>
                                    <span class="comp-info-item">
                                        신입.경력 학력무관 경기 성남시 정규직
                                    </span>
                                    <span class="certificate">
                                        검사,가스기능사,가스산업기사,배관기능사,용접산업기사
                                    </span>
                                </div>
                                <div class="comp-btn">
                                   <a href="/resume/submission"><span>지원하기</span></a>
                                   <p>등록일자</p>
                                   <p>2022-01-01</p>
                                </div>
                            </div>
                        </div>
                        <div class="comp-item-list">
                            <div class="comp-item-first">
                                <div class="comp-name">
                                    <a href="/jobs/jobinfo">(주) 주연테크</a>
                                </div>
                                <div class="comp-info">
                                    <a href="/jobs/jobinfo">
                                        2022년 상반기 각 부문 신입 및 경력 모집
                                    </a>
                                    <span class="comp-info-item">
                                        신입.경력 학력무관 경기 성남시 정규직
                                    </span>
                                    <span class="certificate">
                                        검사,가스기능사,가스산업기사,배관기능사,용접산업기사
                                    </span>
                                </div>
                                <div class="comp-btn">
                                   <a href="/resume/submission"><span>지원하기</span></a>
                                   <p>등록일자</p>
                                   <p>2022-01-01</p>
                                </div>
                            </div>
                        </div>
                        <div class="comp-item-list">
                            <div class="comp-item-first">
                                <div class="comp-name">
                                    <a href="/jobs/jobinfo">(주) 주연테크</a>
                                </div>
                                <div class="comp-info">
                                    <a href="/jobs/jobinfo">
                                        2022년 상반기 각 부문 신입 및 경력 모집
                                    </a>
                                    <span class="comp-info-item">
                                        신입.경력 학력무관 경기 성남시 정규직
                                    </span>
                                    <span class="certificate">
                                        검사,가스기능사,가스산업기사,배관기능사,용접산업기사
                                    </span>
                                </div>
                                <div class="comp-btn">
                                   <a href="/resume/submission"><span>지원하기</span></a>
                                   <p>등록일자</p>
                                   <p>2022-01-01</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="comp-public-wrap">
                        <div class="comp-item-list">
                            <div class="comp-item-first">
                                <div class="comp-name">
                                    <a href="/jobs/jobinfo">(주) 주연테크</a>
                                </div>
                                <div class="comp-info">
                                    <a href="/jobs/jobinfo">
                                        2019년 상반기 각 부문 신입 및 경력 모집
                                    </a>
                                    <span class="comp-info-item">
                                        신입.경력 학력무관 경기 성남시 정규직
                                    </span>
                                    <span class="certificate">
                                        검사,가스기능사,가스산업기사,배관기능사,용접산업기사
                                    </span>
                                </div>
                                <div class="comp-btn">
                                   <a href="/resume/submission"><span>지원하기</span></a>
                                   <p>등록일자</p>
                                   <p>2022-01-01</p>
                                </div>
                            </div>
                        </div>
                        <div class="comp-item-list">
                            <div class="comp-item-first">
                                <div class="comp-name">
                                    <a href="/jobs/jobinfo">(주) 주연테크</a>
                                </div>
                                <div class="comp-info">
                                    <a href="/jobs/jobinfo">
                                        2022년 상반기 각 부문 신입 및 경력 모집
                                    </a>
                                    <span class="comp-info-item">
                                        신입.경력 학력무관 경기 성남시 정규직
                                    </span>
                                    <span class="certificate">
                                        검사,가스기능사,가스산업기사,배관기능사,용접산업기사
                                    </span>
                                </div>
                                <div class="comp-btn">
                                   <a href="/resume/submission"><span>지원하기</span></a>
                                   <p>등록일자</p>
                                   <p>2022-01-01</p>
                                </div>
                            </div>
                        </div>
                        <div class="comp-item-list">
                            <div class="comp-item-first">
                                <div class="comp-name">
                                    <a href="/jobs/jobinfo">(주) 주연테크</a>
                                </div>
                                <div class="comp-info">
                                    <a href="/jobs/jobinfo">
                                        2022년 상반기 각 부문 신입 및 경력 모집
                                    </a>
                                    <span class="comp-info-item">
                                        신입.경력 학력무관 경기 성남시 정규직
                                    </span>
                                    <span class="certificate">
                                        검사,가스기능사,가스산업기사,배관기능사,용접산업기사
                                    </span>
                                </div>
                                <div class="comp-btn">
                                   <a href="/resume/submission"><span>지원하기</span></a>
                                   <p>등록일자</p>
                                   <p>2022-01-01</p>
                                </div>
                            </div>
                        </div>
                        <div class="comp-item-list">
                            <div class="comp-item-first">
                                <div class="comp-name">
                                    <a href="/jobs/jobinfo">(주) 주연테크</a>
                                </div>
                                <div class="comp-info">
                                    <a href="/jobs/jobinfo">
                                        2022년 상반기 각 부문 신입 및 경력 모집
                                    </a>
                                    <span class="comp-info-item">
                                        신입.경력 학력무관 경기 성남시 정규직
                                    </span>
                                    <span class="certificate">
                                        검사,가스기능사,가스산업기사,배관기능사,용접산업기사
                                    </span>
                                </div>
                                <div class="comp-btn">
                                   <a href="/resume/submission"><span>지원하기</span></a>
                                   <p>등록일자</p>
                                   <p>2022-01-01</p>
                                </div>
                            </div>
                        </div>
                        <div class="comp-item-list">
                            <div class="comp-item-first">
                                <div class="comp-name">
                                    <a href="/jobs/jobinfo">(주) 주연테크</a>
                                </div>
                                <div class="comp-info">
                                    <a href="/jobs/jobinfo">
                                        2022년 상반기 각 부문 신입 및 경력 모집
                                    </a>
                                    <span class="comp-info-item">
                                        신입.경력 학력무관 경기 성남시 정규직
                                    </span>
                                    <span class="certificate">
                                        검사,가스기능사,가스산업기사,배관기능사,용접산업기사
                                    </span>
                                </div>
                                <div class="comp-btn">
                                   <a href="/resume/submission"><span>지원하기</span></a>
                                   <p>등록일자</p>
                                   <p>2022-01-01</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </main>
        </div>
    </section>
    <script src="/js/job.js"></script>
</body>
</html>