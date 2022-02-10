<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="/css/main.css">
	<script type="text/javascript"  src="js/jquery.js"></script> 
	<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
</head>
<body>
    <jsp:include page="../include/nav2.jsp"></jsp:include>
    <section>
        <div class="main">
        	<div class="addAndLogin">
       		 	<div class="add-section">
                    <img class="on" src="/images/add.png" alt="">
                    <img src="/images/add.png" alt="">
                    <img src="/images/add.png" alt="">
                </div>
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
            }, 2000);
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