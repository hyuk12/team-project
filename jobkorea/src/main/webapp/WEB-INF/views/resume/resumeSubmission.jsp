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
    <link rel="stylesheet" href="/css/resume.css">
    <link rel="stylesheet" href="/css/style.css">
    <script src="http://jquery.com"></script>
    <title>이력서</title>
</head>

<body>
    <div class="wrapper">
        <div class="resume">
            <div class="left">
                <img src="/image/${principal.resume.profile_img }" >

                <div class="name" name= "name">${principal.users.name }</div>

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
                            <div class="sub">${principal.resume.address }</div>
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
                            <div class="sub">${principal.resume.birth }</div>
                        </div>
                    </div>

                </div>
            </div>
            <div class="right">
                <div class="school">
                    <h2>EDUCATION</h2>
                    <div class="edu">
                    	
                        <div class="edu2">
                            <div>입학년월</div>
                            <div>학교명</div>
                            <div>졸업유무</div>
                        </div>
                        <div class="edu1">
                            <div>${principal.resume.admissionyear }</div>
                            <div> ${principal.resume.schoolname }</div>
                            <div>${principal.resume.graduationstatus }</div>
                        </div>
                        
                    </div>
                </div>
                <div class="career">
                    <h2>EXPERIENCE CAREER</h2>
                    <div class="car">
                    	<div class="car2">
                            <div>회사명</div>
                            <div>회사경력</div>
                            <div>직책</div>
                            
                        </div>
                        <div class="car1">
                            <div>${principal.resume.compname }</div>
                            <div>${principal.resume.joinyear } ~${principal.resume.leaveyear }</div>
                            <div>${principal.resume.position }</div>
                        </div>
                        
                        <div class="car2">
                            <div>자격증명</div>
                            <div>유효기간</div>
                            <div>발급기관</div>
                        </div>
                        <div class="car1">
                            <div>${principal.resume.certificate }</div>
                            <div>${principal.resume.handlingmonth }</div>
                            <div>${principal.resume.issuedby }</div>
                        </div>
                        
                    </div>
                </div>
                <div class="introduce">
                    <h2>INTRODUCE</h2>
                    <textarea readonly name="" id="" cols="30" rows="30">
							${principal.resume.selfintroduction}
                    </textarea>
                </div>
                <div>
                	<button type="button">제출하기</button>
                </div>
            </div>	
        </div>
    </div>
    
</body>

</html>