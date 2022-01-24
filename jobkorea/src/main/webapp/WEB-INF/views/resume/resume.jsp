<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
           
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<sec:authorize access="isAuthenticated()">
	<sec:authentication property="principal" var="principal"/>

</sec:authorize>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/css/resumeFinal2.css">
    <link rel="stylesheet" href="/css/style.css">
    <script src="http://jquery.com"></script>
    <title>이력서</title>
</head>

<body>
    <div class="wrapper">
        <div class="resume">
            <div class="left">
                <img src="${principal.resume.profile_img }" alt="증명사진 들어올 자리">

                <div class="name" name = "name">${principal.users.name }</div>

                <div class="address">
                    <h2>CONTACT</h2>

                    <div class="contact">
                        <div>
                            <div class="bold">MOBILE</div>
                            <div class="sub" name="phone">${principal.users.phone } </div>
                        </div>
                        <div>
                            <div class="bold">EMAIL</div>
                            <div class="sub" name="email">${principal.users.email} </div>
                        </div>
                        <div>
                            <div class="bold">ADDRESS</div>
                            <div class="sub">주소입력</div>
                        </div>
                    </div>


                    <h2>PERSONAL_DATAIL</h2>
                    <div class="personalDetail">
                        <div>
                            <div class="bold">NAME</div>
                            <div class="sub" name="name">${principal.users.name }</div>
                        </div>
                        <div>
                            <div class="bold">BIRTHDAY</div>
                            <div class="sub">생일</div>
                        </div>
                    </div>

                </div>
            </div>
            <div class="right">
                <div class="school">
                    <h2>EDUCATION</h2>
                    <div class="edu">
                        <div class="edu1">
                            <div>입학년월</div>
                            <div> 학교이름</div>
                            <div>졸업유무</div>
                        </div>
                        <div class="edu1">
                           <div>입학년월</div>
                            <div> 학교이름</div>
                            <div>졸업유무</div>
                        </div>
                        <div class="edu1">
                          <div>입학년월</div>
                            <div> 학교이름</div>
                            <div>졸업유무</div>
                        </div>
                    </div>
                </div>
                <div class="career">
                    <h2>EXPERIENCE CAREER</h2>
                    <div class="car">
                        <div class="car1">
                            <div>어학연수</div>
                            <div>2000년~2003년</div>
                            <div>필리핀</div>
                        </div>
                        <div class="car1">
                            <div>봉사활동</div>
                            <div>2000년~2003년</div>
                            <div>고아원</div>
                        </div>
                        <div class="car1">
                            <div>인턴경험</div>
                            <div>2000년~2003년</div>
                            <div>삼성물산필리핀지사</div>
                        </div>
                    </div>
                </div>
                <div class="introduce">
                    <h2>INTRODUCE</h2>
                    <textarea readonly name="" id="" cols="30" rows="30">
							
                    </textarea>
                </div>
            </div>	
        </div>
    </div>
    
</body>

</html>