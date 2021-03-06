<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>이력서 작성</title>
    <link rel="stylesheet" href="/css/style.css">
    <link rel="stylesheet" href="/css/resume.css">
</head>

<body>
<div class="resumePage">
    <!-- <div class="resumeHeader">
        <div class="container">
            <a href="https://www.jobkorea.co.kr/" class="logo linkLogo"><img
                    src="https://i.jobkorea.kr/content/images/text_user/resume/logo-jobkorea.png?20190718"
                    alt="JOBKOREA"></a>

            <div class="links">
                <a href="#">개인회원 홈</a>
                <a href="#">이력서 관리</a>
            </div>
        </div>
    </div> -->
    <div class="resumeWrapper">
        <div class="resumeContainer">
            <div class="formWrap">

                <div class="resumeTitle">
                    <input maxlength="100" placeholder="기업에게 나에 대해 알려줍시다. 강점, 목표, 관심분야도 좋아요." type="text">
                </div>

                <div class="formProfile">
                    <h2 class="header">인적사항</h2>
                    <div class="formProfileForm">
                        <div class="jool">
                            <div class="joolInputName">
                                <label for="">이름<span class="star">*</span></label>
                                <input type="text">
                            </div>
                            <div class="joolInputBirth">
                                <label for="">생년월일<span class="star">*</span></label>
                                <input type="text" placeholder="2022-01-15">
                            </div>
                            <div class="dropDown">
                                <button type="button" class="button buttonChoose">
                                        <span>
                                            성별
                                            <span class="star">*</span>
                                        </span>
                                </button>
                                <div>
                                    <ul>
                                        <li><button type="button" class="button"><span>남자</span></button></li>
                                        <li><button type="button" class="button"><span>여자</span></button></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="joolInputMail">
                                <label for="">이메일</label>
                                <input type="text" placeholder="abc@google.com">
                            </div>
                        </div>

                        <div class="jool">
                            <div class="joolPhoneNum">
                                <label for="">휴대폰번호<span class="star">*</span></label>
                                <input type="text">
                            </div>
                            <div class="joolAddress">
                                <label for="">주소</label>
                                <input type="text" name="" id="">
                            </div>
                        </div>
                    </div>
                </div>













                <!--
                <div class="formWrap">
                    <h2 class="header">인적사항
                        <div class="description">
                            <span class="star">*</span> 필수 입력 정보입니다.
                        </div>
                    </h2>



                    <div class="profileForm">
                        <div class="rows">
                            <div class="input-profile-name">
                                <label for="UserInfo_M_Name">
                                    이름
                                    <span class="star">*</span>
                                </label>
                                <input type="text" name="UserInfo.M_Name" id="UserInfo_M_Name"
                                    data-foramt-type="name">
                            </div>
                            <div class="input-profile-birth">
                                <label for="UserInfo_M_Born">
                                    생년월일
                                    <span class="star">*</span>
                                </label>
                                <input data-format-type="birth" type="text" id="UserInfo_M_Born"
                                    name="UserInfo.M_Born" placeholder="2022.01.14">
                            </div>
                            <div class="dropDown">
                                <button>
                                    <label for="UserInfo_M_Sex">
                                        성별
                                        <span class="star">*</span>
                                    </label>
                                    <div class="list">
                                        <ul>
                                            <li>남자</li>
                                            <li>여자</li>
                                        </ul>
                                    </div>
                                </button>
                            </div>
                            <div>
                                <label for=UserInfo_M_Email">
                                    이메일
                                    <span class="star">*</span>
                                </label>
                                <input type="text">
                            </div>

                        </div>
                        <div class="row">
                            <div>
                                <label for="UserInfo_M_PhoneNum">
                                    휴대폰 번호
                                    <span class="star">*</span>
                                </label>
                                <input type="text">
                            </div>
                            <div><label for="UserInfo_M_Address">
                                    주소
                                </label>
                                <input type="text">
                            </div>
                        </div>
                        <div class="picturePlus">
                            <a href="#">사진추가</a>
                        </div>
                    </div>
                </div>

            -->
                <h2 class="header">학력</h2>
                <div class="form">
                    <div class="school">
                        <div class="dropDown">
                            <button type="button" class="button buttonChoose">
                                    <span>
                                        학교구분
                                        <span class="star">*</span>
                                    </span>
                            </button>
                            <div>
                                <ul>
                                    <li> <button type="button" class="button"><span>고등학교</span></button></li>
                                    <li> <button type="button" class="button"><span>대학교(2,3년)</span></button></li>
                                    <li> <button type="button" class="button"><span>대학교(4년)</span></button></li>
                                    <li> <button type="button" class="button"><span>대학원</span></button></li>
                                </ul>
                            </div>
                        </div>
                        <div class="inputSchool">학교명
                            <span class="star">*</span>
                            <input type="text" name="" id=inputSchool">
                        </div>
                        <div class="ipHak">입학년월
                            <span class="star">*</span>
                            <input type="text">
                        </div>
                        <div class="jolUp">졸업년월
                            <span class="star">*</span>
                            <input type="text">
                        </div>
                        <div class="dropDown">
                            <button type="button" class="button buttonChoose jolUpStatus ">
                                    <span>
                                        졸업상태
                                        <span class="star">*</span>
                                    </span>
                            </button>
                            <div>
                                <ul>
                                    <li> <button type="button" class="button"><span>졸업</span></button></li>
                                    <li> <button type="button" class="button"><span>졸업예정</span></button></li>
                                    <li> <button type="button" class="button"><span>재학중</span></button></li>
                                    <li> <button type="button" class="button"><span>중퇴</span></button></li>
                                    <li> <button type="button" class="button"><span>수료</span></button></li>
                                    <li> <button type="button" class="button"><span>휴학</span></button></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="school">
                        <div class="majorName">전공명
                            <input type="text" name="" id="">
                        </div>
                        <div class="hakJum">학점
                            <input type="text">
                        </div>

                        <div class="dropDown">
                            <button type="button" class="button buttonChoose jolUpStatus ">
                                    <span>
                                        총점
                                    </span>
                            </button>
                            <div>
                                <ul>
                                    <li> <button type="button" class="button"><span>4.5</span></button></li>
                                    <li> <button type="button" class="button"><span>4.3</span></button></li>
                                    <li> <button type="button" class="button"><span>4.0</span></button></li>
                                    <li> <button type="button" class="button"><span>100</span></button></li>
                                </ul>
                            </div>
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
                            <input type="text">
                        </div>
                        <div class="buseoName">
                            부서명
                            <input type="text">
                        </div>
                        <div class="ipsa">입사년월
                            <span class="star">*</span>
                            <input type="text" placeholder="예) 2020.12.25">
                        </div>
                        <div class="teasa">퇴사년월
                            <span class="star">*</span>
                            <input type="text" placeholder="예) 2022.02.22">
                        </div>
                        <!-- <div>재직중</div> -->
                    </div>
                    <div class="careerFormRow">
                        <div class="jikGp">직급/직책
                            <input type="text" placeholder="예) 부장/파트장">
                        </div>
                        <div class="upJong">업종
                            <input type="text" placeholder="예) 서비스/마케팅">
                        </div>
                        <div class="yeonBong">연봉
                            <input type="text" placeholder="만원">
                        </div>
                    </div>
                    <div class="careerFormRow">
                        <div class="upMu">
                            <label for="">담당업무</label>
                            <textarea name="Career[c5].Prfm_Prt" cols="30" rows="10" id="Career_Prfm_Prt_c5"
                                      placeholder="담당하신 업무와 성과에 대해 간단명료하게 적어주세요."></textarea>
                        </div>
                    </div>
                </div>

                <!-- 자격증 -->
                <h2 class="header">자격증</h2>

                <div class="licenseForm">
                    <div class="cert">
                        <label for="">자격증 명</label>
                        <span class="star">*</span>
                        <input type="text">
                    </div>
                    <div class="balHeng">
                        <label for="">발행처</label>
                        <input type="text" name="" id="">
                    </div>
                    <div class="getMonth">
                        <label for="">취득월</label>
                        <input type="text">
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
                                <textarea name="" id="" cols="30" rows="10" placeholder="해당내용을 입력하세요."></textarea>
                            </div>
                        </div>

                        <div class="submit">
                            <button type="button">제출</button>
                        </div>
                    </div>
                </div>

                <div class="fixedAd">
                    <div class="container">
                        <h2>이력서 항목</h2>
                        <ul>
                            <li><a href="#">학력</a></li>
                            <li><a href="#">경력</a></li>
                            <li><a href="#">자격증</a></li>
                            <li><a href="#">자기소개서</a></li>
                        </ul>
                    </div>
                    <button type="button" onclick="location.href='#'">이력서저장</button>
                </div>

                <!-- <h2 class="header">희망근무조건</h2>
                <div class="form2">
                    <div class="row">
                        <div class="goYong">고용형태</div>
                        <div>희망연봉</div>
                    </div>
                    <div class="row">
                        <div class="wantPlace">희망근무지</div>
                    </div>
                    <div class="row">
                        <div class="workKey">직무산업키워드</div>
                    </div>
                </div>
            </div>
        </div> -->


            </div>

        </div>

</body>

</html>