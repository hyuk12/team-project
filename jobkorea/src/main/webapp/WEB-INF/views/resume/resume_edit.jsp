<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
         
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<sec:authorize access="isAuthenticated()">
	<sec:authentication property="principal" var="principal"/>
</sec:authorize>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>이력서 작성</title>
    <link rel="stylesheet" href="/css/style.css">
    <link rel="stylesheet" href="/css/resume.css">
    <script src="https://code.jquery.com/jquery-latest.min.js"></script>
</head>

<body>
<div class="resumePage">
    <div class="resumeWrapper">
        <div class="resumeContainer">
            <div class="formWrap">
                <div class="formProfile">
                <form enctype="multipart/form-data">
                	<h2 class="header">인적사항</h2>
                    <div class="formProfileForm">
                        <div class="jool">
                            <div class="joolInputName">
                                <label for="">이름<span class="star">*</span></label>
                                <input type="text" class="re-ip" name="name" value="${principal.users.name }">
                            </div>
                            <div class="joolInputBirth">
                                <label for="">생년월일<span class="star">*</span></label>
                                <input type="text" class="re-ip" name="birth" placeholder="2022-01-15" value="${principal.resume.birth}">
                            </div>
                            <div class="dropDown">
                            	<div>
                            		<label>성별</label>
                                		<input type="text" list="gender-ip" class="gender-ip re-ip" name="gender" value="${principal.resume.gender }">
                                		<datalist id="gender-ip">
                                			<option value="남성"/>
                                			<option value="여성"/>
                                		</datalist>
                                	
                            	</div>
                                	
                            </div>
                            <div class="joolInputMail">
                                <label for="">이메일</label>
                                <input type="text" class="re-ip" name="email" value="${principal.users.email }">
                            </div>
                            <div class="picturePlus" >
                    			<div class="profile-img-add-btn">
                    				<input type="file" id="file" name="profile_img">
                    				<div class="img-place">
                    					<img id="profile-img"  src="/image/${principal.resume.profile_img }">
                    				</div>
                    
                    				
                    				
                    			</div>
                    		</div>
                        </div>

                        <div class="jool">
                            <div class="joolPhoneNum">
                                <label for="">휴대전화번호<span class="star">*</span></label>
                                <input type="text" class="re-ip" name="phone" value="${principal.users.phone }">
                            </div>
                            <div class="joolAddress">
                                <label for="">주소</label>
                                <input type="text" class="re-ip" name="address" value="${principal.resume.address }">
                            </div>
                        </div>
                    </div>
                    
           
                <h2 class="header">학력</h2>
                <div class="form">
                    <div class="school">
                        <div class="dropDown">
                        	<div>
                        		<label>학교구분</label>
                            		<input type="text" class="re-ip" list="education-ip" name="education" value="${principal.resume.education }" >
                            		<datalist id="education-ip">
                            			<option value="고등학교"/>
                            			<option value="대학교(2, 3)년제"/>
                            			<option value="대학교(4) 년제"/>
                            			<option value="대학원"/>
                            		</datalist>
                        	</div>
                        </div>
                        <div class="inputSchool">학교명
                            <span class="star">*</span>
                            <input type="text" class="re-ip" name="schoolname" id=inputSchool" value="${principal.resume.schoolname }">
                        </div>
                        <div class="ipHak">입학년월
                            <span class="star">*</span>
                            <input type="text" class="re-ip" name="admissionyear" value="${principal.resume.admissionyear }">
                        </div>
                        <div class="jolUp">졸업년월
                            <span class="star">*</span>
                            <input type="text" class="re-ip" name="graduateyear" value="${principal.resume.graduateyear }">
                        </div>
                    
                    </div>
                    <div class="school2">
                    	<div class="dropDown">
                    		<div>
                    			<label>졸업상태</label>
                            		<input type="text" class="re-ip" list="graduationstatus-ip" name="graduationstatus" value="${principal.resume.graduationstatus }" >
                            		<datalist id="graduationstatus-ip">
                            			<option value="졸업"/>
                            			<option value="졸업예정"/>
                            			<option value="재학중"/>
                            			<option value="중퇴"/>
                            			<option value="수료"/>
                            			<option value="휴학"/>
                            		</datalist>
                    		</div>
                        </div>
                        <div class="majorName">전공명
                            <input type="text" class="re-ip" name="major" value="${principal.resume.major }">
                        </div>
                        <div class="hakJum">학점
                            <input type="text" class="re-ip" list="grades-ip" name="grades"  value="${principal.resume.grades }">
                            <datalist id="grades-ip">
                            	<option value="4.5이상"/>
                            	<option value="4.0이상"/>
                            	<option value="3.5이상"/>
                            	<option value="3.0이상"/>
                            </datalist>
                        </div>
                    </div>
                </div>


                <!-- 경력 -->
                <h2 class="header">경력</h2>

                <div class="careerForm">
                    <div class="careerFormRow">
                        <div class="compName">
                            회사명
                            <span class="star">*</span>
                            <input type="text" class="re-ip" name="compname" value="${principal.resume.compname }">
                        </div>
                        <div class="buseoName">
                            부서명
                            <input type="text" class="re-ip" name="department" value="${principal.resume.department }">
                        </div>
                        <div class="ipsa">입사년월
                            <span class="star">*</span>
                            <input type="text" class="re-ip" name="joinyear" placeholder="예) 2020.12.25" value="${principal.resume.joinyear }">
                        </div>
                        <div class="teasa">퇴사년월
                            <span class="star">*</span>
                            <input type="text" class="re-ip" name="leaveyear" placeholder="예) 2022.02.22" value="${principal.resume.leaveyear }">
                        </div>
                        <!-- <div>재직중</div> -->
                    </div>
                    <div class="careerFormRow">
                        <div class="jikGp">직급/직책
                            <input type="text" class="re-ip" name="position" placeholder="예) 부장/파트장" value="${principal.resume.position }">
                        </div>
                        <div class="upJong">업종
                            <input type="text" class="re-ip" name="sectors" placeholder="예) 서비스/마케팅" value="${principal.resume.sectors }">
                        </div>
                        <div class="yeonBong">연봉
                            <input type="text" class="re-ip" name="salary" placeholder="만원" value="${principal.resume.salary }">
                        </div>
                    </div>
                </div>

                <!-- 자격증 -->
                <h2 class="header">자격증</h2>

                <div class="licenseForm">
                    <div class="cert">
                        <label for="">자격증 명</label>
                        <span class="star">*</span>
                        <input type="text" class="re-ip" name="certificate" value="${principal.resume.certificate }">
                    </div>
                    <div class="balHeng">
                        <label for="">발행처</label>
                        <input type="text" class="re-ip" name="issuedby" value="${principal.resume.issuedby }">
                    </div>
                    <div class="getMonth">
                        <label for="">취득월</label>
                        <input type="text" name="handlingmonth" class="re-ip" value="${principal.resume.handlingmonth }">
                    </div>
                </div>

                <!-- 자기소개서 -->
                <h2 class="header">자기소개서</h2>
                <div class="introduceForm">
                    <div class="introduceCont">
                        <div class="contents">
                            <div>
                                <input type="text" placeholder="항목 제목을 입력하세요.">
                            </div>
                            <div>
                                <textarea class="re-ip" name="selfintroduction" id="" cols="30" rows="10" placeholder="해당내용을 입력하세요." value="">${principal.resume.selfintroduction }</textarea>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="submit">
                	<button type="button" class="submitBtn" >이력서저장</button>
                </div>
             </form>
           </div>
        </div>
       </div>
     </div>
   </div>
	<script src="/js/resume_edit.js"></script>
</body>

</html>