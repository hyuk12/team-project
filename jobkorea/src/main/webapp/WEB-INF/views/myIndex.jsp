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
	<script type="text/javascript"  src="js/jquery.js"></script> 
	<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
</head>

<body>
    <jsp:include page="include/navPerson.jsp"></jsp:include>
    <section>
        <div class="main">
            <div class="section">
                <div class="add-section">
                    <img class="on" src="/images/add.png" alt="">
                    <img src="/images/add.png" alt="">
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
<<<<<<< HEAD
                        </div>    
                </div> 
=======
                        <div class="board-item">
                            <div class="company-profile">
                                <div class="company-info">
                                    <img src="/images/nav-logo.png" alt="">
                                </div>
                                <div class="profile-name">
                                    <h3>cupang</h3>
                                </div>
                                <div class="profile-info">
                                    <h1>전국 물류센터 계약직 대규모 모집</h1>
                                    <div class="follow-btn">
                                        <i class="far fa-star"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="board-item">
                            <div class="company-profile">
                                <div class="company-info">
                                    <img src="/images/nav-logo.png" alt="">
                                </div>
                                <div class="profile-name">
                                    <h3>cupang</h3>
                                </div>
                                <div class="profile-info">
                                    <h1>전국 물류센터 계약직 대규모 모집</h1>
                                    <div class="follow-btn">
                                        <i class="far fa-star"></i>
                                    </div>
                                </div>
                            </div>
                        </div>     
                        <div class="board-item">
                            <div class="company-profile">
                                <div class="company-info">
                                    <img src="/images/nav-logo.png" alt="">
                                </div>
                                <div class="profile-name">
                                    <h3>cupang</h3>
                                </div>
                                <div class="profile-info">
                                    <h1>전국 물류센터 계약직 대규모 모집</h1>
                                    <div class="follow-btn">
                                        <i class="far fa-star"></i>
                                    </div>
                                </div>
                            </div>
                        </div>     
                        <div class="board-item">
                            <div class="company-profile">
                                <div class="company-info">
                                    <img src="/images/nav-logo.png" alt="">
                                </div>
                                <div class="profile-name">
                                    <h3>cupang</h3>
                                </div>
                                <div class="profile-info">
                                    <h1>전국 물류센터 계약직 대규모 모집</h1>
                                    <div class="follow-btn">
                                        <i class="far fa-star"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>     
                    <div class="board-item-group">
                        <div class="board-item">
                            <div class="company-profile">
                                <div class="company-info">
                                    <img src="/images/nav-logo.png" alt="">
                                </div>
                                <div class="profile-name">
                                    <h3>cupang</h3>
                                </div>
                                <div class="profile-info">
                                    <h1>전국 물류센터 계약직 대규모 모집</h1>
                                    <div class="follow-btn">
                                        <i class="far fa-star"></i>
                                    </div>
                                </div>
                            </div>
                        </div>     
                        <div class="board-item">
                            <div class="company-profile">
                                <div class="company-info">
                                    <img src="/images/nav-logo.png" alt="">
                                </div>
                                <div class="profile-name">
                                    <h3>cupang</h3>
                                </div>
                                <div class="profile-info">
                                    <h1>전국 물류센터 계약직 대규모 모집</h1>
                                    <div class="follow-btn">
                                        <i class="far fa-star"></i>
                                    </div>
                                </div>
                            </div>
                        </div>     
                        <div class="board-item">
                            <div class="company-profile">
                                <div class="company-info">
                                    <img src="/images/nav-logo.png" alt="">
                                </div>
                                <div class="profile-name">
                                    <h3>cupang</h3>
                                </div>
                                <div class="profile-info">
                                    <h1>전국 물류센터 계약직 대규모 모집</h1>
                                    <div class="follow-btn">
                                        <i class="far fa-star"></i>
                                    </div>
                                </div>
                            </div>
                        </div>     
                        <div class="board-item">
                            <div class="company-profile">
                                <div class="company-info">
                                    <img src="/images/nav-logo.png" alt="">
                                </div>
                                <div class="profile-name">
                                    <h3>cupang</h3>
                                </div>
                                <div class="profile-info">
                                    <h1>전국 물류센터 계약직 대규모 모집</h1>
                                    <div class="follow-btn">
                                        <i class="far fa-star"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>        
                    <div class="board-item-group">
                        <div class="board-item">
                            <div class="company-profile">
                                <div class="company-info">
                                    <img src="/images/nav-logo.png" alt="">
                                </div>
                                <div class="profile-name">
                                    <h3>cupang</h3>
                                </div>
                                <div class="profile-info">
                                    <h1>전국 물류센터 계약직 대규모 모집</h1>
                                    <div class="follow-btn">
                                        <i class="far fa-star"></i>
                                    </div>
                                </div>
                            </div>
                        </div>     
                        <div class="board-item">
                            <div class="company-profile">
                                <div class="company-info">
                                    <img src="/images/nav-logo.png" alt="">
                                </div>
                                <div class="profile-name">
                                    <h3>cupang</h3>
                                </div>
                                <div class="profile-info">
                                    <h1>전국 물류센터 계약직 대규모 모집</h1>
                                    <div class="follow-btn">
                                        <i class="far fa-star"></i>
                                    </div>
                                </div>
                            </div>
                        </div>     
                        <div class="board-item">
                            <div class="company-profile">
                                <div class="company-info">
                                    <img src="/images/nav-logo.png" alt="">
                                </div>
                                <div class="profile-name">
                                    <h3>cupang</h3>
                                </div>
                                <div class="profile-info">
                                    <h1>전국 물류센터 계약직 대규모 모집</h1>
                                    <div class="follow-btn">
                                        <i class="far fa-star"></i>
                                    </div>
                                </div>
                            </div>
                        </div>     
                        <div class="board-item">
                            <div class="company-profile">
                                <div class="company-info">
                                    <img src="/images/nav-logo.png" alt="">
                                </div>
                                <div class="profile-name">
                                    <h3>cupang</h3>
                                </div>
                                <div class="profile-info">
                                    <h1>전국 물류센터 계약직 대규모 모집</h1>
                                    <div class="follow-btn">
                                        <i class="far fa-star"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>  
>>>>>>> 01623b534f3a6a753b05911bfc704fb09a7ada50
            </main>
          </div> 
    </section>
    <script src="js/myindex.js"></script>
    <script>
    $(document).ready(function () {
    	 
    	var current = 0;
    	var setIntervalId;
    	
        timer();
        
        function timer() {

            setIntervalId = setInterval(function(){
                var n = current + 1;
                if (n >= 3) {
                    n = 0;
                }
                move(n);
                $(".add-section").removeClass("on");
                $(".add-section").eq(i).addClass("on");
            }, 3000);
        }

        function move(n) {
            var currentEl = $(".add-section > img").eq(current);
            var nextEl = $(".add-section > img").eq(n);
            currentEl.css({ left: '0%' }).animate({ left: '-100%' });
            nextEl.css({ left: '100%' }).animate({ left: '0%' });

            current = n;
        }
    });
    </script>
</body>
</html>