<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
  
   <sec:authorize access="isAuthenticated()">
     <sec:authentication property="principal" var="principal"/>
   </sec:authorize>
   
   
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>기업페이지</title>
    <link rel="stylesheet" href="/css/recruit.css">
    <script src="http://jquery.com"></script>
</head>

<body>
    <div class="main">
        <div class="top">
            <div class="row">
                <div>기업 규모</div>
                <div class="input">${principal.users.name }</div>
                <div>사업자 번호</div>
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

                <div>
                    <div>지원자격</div>
                    <div class="input">
                        <input type="text" placeholder="고졸이하, 고졸, 전문대졸, 대졸">
                    </div>
                </div>

                <div>
                    <div>신입 / 경력</div>
                    <div class="input">
                        <input type="text" placeholder="어떤식으로 하라했더라">
                    </div>
                </div>

                <div>
                    <aside>
                        <label for="gender-ip" class="edit-lb">지역</label>
                    </aside>

                    <div class="edit-ip input inputShort">
                        <input type="text" list="gender-ip" class="profile-ip" name="gender"
                            value="${ principal.userDtl.address}">
                        <datalist id="gender-ip">
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

                <div>
                    <div>학력</div>

                    <div class="input inputShort">
                        <input type="text">
                    </div>
                </div>

                <div>

                    <div>성별</div>
                    <div class="input inputShort">
                        <input type="text">
                    </div>
                </div>

                <div>
                    <div>고용형태</div>
                    <div class="input inputShort">
                        <input type="text">
                    </div>
                </div>

            </div>
            <div class="picture">
                <img src="" alt="">사진
            </div>
        </div>
        <div class="footer">
            <div class="textArea">
                <h2>담당업무 / 우대사항 / 근무조건 / 급여 입력</h2>
                <input type="datalise" placeholder="담당업무 / 우대사항 / 근무조건 / 급여 입력">
            </div>
            <div class="submit">
                <button type="button">공고등록</button>
            </div>
        </div>
    </div>
</body>

</html>