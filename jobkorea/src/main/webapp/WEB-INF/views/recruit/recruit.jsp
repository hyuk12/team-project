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
    <title>채용공고 올리기</title>
    <link rel="stylesheet" href="/css/recruit.css">
</head>

<body>
    <div class="main">
        <div class="top">
            <div class="row">
                <div>공고 제목</div>
                <div class="input"><input type="text" id=""></div>
                <div>기업 규모</div>
                <div class="input">받아올 껄</div>
            </div>
            <div class="row">
                <div>기업이름</div>
                <div class="input">받아올 껄</div>
                <div>ceo 이름</div>
                <div class="input">받아올 껄</div>
            </div>
            <div class="row">
                <div>연락처</div>
                <div class="input">받아올 껄</div>
                <div>이메일</div>
                <div class="input">받아올 껄</div>
            </div>
        </div>

        <div class="content">
            <div class="info">
                <!-- 지원자격 -->
                <h3>지원자격</h3>
                <div>
                    <aside>
                        <label for="area-ip" class="edit-lb">학력</label>
                    </aside>
                    <!-- 고졸이하, 고졸, 전문대졸, 대졸, 대학원이상 -->
                    <div class="edit-ip input inputShort">
                        <input type="text" list="edu-ip" class="profile-ip" name="education" value=" ">
                        <datalist id="edu-ip">
                            <option value="고졸 이하"></option>
                            <option value="고졸 이상"></option>
                            <option value="전문대졸 이상"></option>
                            <option value="대졸 이상"></option>
                            <option value="대학원 이상"></option>
                        </datalist>
                    </div>
                </div>

                <!-- 경력 -->
                <div>
                    <aside>
                        <label for="career-ip" class="edit-lb">경력</label>
                    </aside>
                    <!-- 고졸이하, 고졸, 전문대졸, 대졸, 대학원이상 -->
                    <div class="edit-ip input inputShort">
                        <input type="text" list="career-ip" class="profile-ip" name="career" value=" ">
                        <datalist id="career-ip">
                            <option value="신입"></option>
                            <option value="경력 1년이상"></option>
                            <option value="경력 3년이상"></option>
                            <option value="경력 5년이상"></option>
                            <option value="신입·경력"></option>
                            <option value="경력무관"></option>
                        </datalist>
                    </div>
                </div>
                <!-- 지역 -->
                <div>
                    <aside>
                        <label for="area-ip" class="edit-lb">지역</label>
                    </aside>

                    <div class="edit-ip input inputShort">
                        <input type="text" list="area-ip" class="profile-ip" name="sectors" value="">
                        <datalist id="area-ip">
                            <option value="서울"></option>
                            <option value="경기도"></option>
                            <option value="인천"></option>
                            <option value="부산"></option>
                            <option value="경상도"></option>
                            <option value="울산"></option>
                            <option value="대전"></option>
                            <option value="충청도"></option>
                            <option value="광주"></option>
                            <option value="전라도"></option>
                            <option value="강원도"></option>
                            <option value="세종"></option>
                        </datalist>
                    </div>
                </div>


                <!-- 성별 -->
                <div>
                    <aside>
                        <label for="sex-ip" class="edit-lb">성별</label>
                    </aside>
                    <!-- 고졸이하, 고졸, 전문대졸, 대졸, 대학원이상 -->
                    <div class="edit-ip input inputShort">
                        <input type="text" list="sex-ip" class="profile-ip" name="sex" value="">
                        <datalist id="sex-ip">
                            <option value="남자"></option>
                            <option value="여자"></option>
                            <option value="응답하기 싫음"></option>
                        </datalist>
                    </div>
                </div>
                <!-- 고용형태 (정규직 :수습 3개월 , 인턴: 근무기간 3개월 정규직 전환가능)-->
                <div>
                    <aside>
                        <label for="goyong-ip" class="edit-lb">고용형태</label>
                    </aside>
                    <div class="edit-ip input inputShort">
                        <input type="text" list="goyong-ip" class="profile-ip" name="goyong" value=" ">
                        <datalist id="goyong-ip">
                            <option value="정규직"></option>
                            <option value="계약직"></option>
                            <option value="인턴"></option>
                            <option value="기타"></option>
                        </datalist>
                    </div>
                </div>

            </div>
            <!-- 사진올리는 부분 -->
            <div class="picture">
                <img src="" alt="공고관련 사진올리는 곳">
            </div>
        </div>

        <!-- 
            담당업무 등등 거의 새로 만들어야하네 
        
        
                    담당업무(textArea 사용함) / 우대사항(textArea 사용함)
                    / 근무시간(주5일(월~금) 08:30 ~ 17:30) / 급여(input 사용함,회사내규에따름, 직접입력)
                    입력 / 모집분야(input 사용함, 예) 신입, 경력 (웹 프론트))
        -->
        <div class="footer">
            <div class="textArea">
                <h2>
                </h2>

                <div>
                    <div class="firstTxt">
                        <h3>담당업무</h3>
                        <textarea name="" id="" cols="30" rows="10"></textarea>
                        <h3>우대사항</h3>
                        <textarea name="" id="" cols="30" rows="10"></textarea>
                    </div>
                    <div class="etcInput">
                        <!-- 근무시간해서 그 아래에 주 몇일인지/ 몇 시부터 몇 시인지 -->
                        <!-- 급여는 input으로 회사내규에 따름, 직접입력 -->
                        <!-- 모집분야도 input으로 백엔드 개발, 프론트엔드 개발, 안드로이드 개발, AI 개발-->
                        <div>
                            <aside>
                                <label for="day-ip" class="edit-lb">근무일수</label>
                            </aside>
                            <div class="edit-ip input inputMiddle">
                                <input type="text" list="day-ip" class="profile-ip" name="goyong" value=" ">
                                <datalist id="day-ip">
                                    <option value="주 5일"></option>
                                    <option value="주 3일"></option>
                                    <option value="주말"></option>
                                    <option value="기타"></option>
                                </datalist>
                            </div>
                        </div>

                        <div>
                            <aside>
                                <label for="time-ip" class="edit-lb">근무시간</label>
                            </aside>
                            <div class="edit-ip input inputMiddle">
                                <input type="text" list="time-ip" class="profile-ip" name="goyong" value=" ">
                                <datalist id="time-ip">
                                    <option value="09:00 ~ 18:00"></option>
                                    <option value="06:30 ~ 17:30"></option>
                                    <option value="18:00 ~ 06:00"></option>
                                    <option value="기타"></option>
                                </datalist>
                            </div>
                        </div>


                        <div>
                            <aside>
                                <label for="salary-ip" class="edit-lb">급여</label>
                            </aside>
                            <div class="edit-ip input inputMiddle">
                                <input type="text" list="salary-ip" class="profile-ip" name="goyong" value=" ">
                                <datalist id="salary-ip">
                                    <option value="연봉 2400만원이상"></option>
                                    <option value="연봉 3000만원이상"></option>
                                    <option value="연봉 3600만원이상"></option>
                                    <option value="연봉 5000만원이상"></option>
                                    <option value="회사내규에 따름"></option>
                                    <option value="면접 후 결정"></option>
                                    <option value="기타"></option>
                                </datalist>
                            </div>
                        </div>

                        <div>
                            <aside>
                                <label for="recruit-area-ip" class="edit-lb">모집분야</label>
                            </aside>
                            <div class="edit-ip input inputMiddle">
                                <input type="text" list="recruit-area-ip" class="profile-ip" name="goyong" value=" ">
                                <datalist id="recruit-area-ip">
                                    <option value="백엔드 개발"></option>
                                    <option value="프론트엔드 개발"></option>
                                    <option value="안드로이드 개발"></option>
                                    <option value="풀스텍 개발"></option>
                                    <option value="기타"></option>
                                </datalist>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="submit">
                <button type="button" onclick="">공고등록</button>
            </div>
        </div>
    </div>
</body>

</html>