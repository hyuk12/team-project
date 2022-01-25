<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>잡코리아 알바몬 통합 로그인 | 잡코리아 - 좋은 일이 생긴다 | 회원정보수정
        jobkorea.co.kr
    </title>
    
    <link rel="stylesheet" href="/css/personal_ch_pw.css">
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    
</head>

<body>
    <jsp:include page="../include/nav.jsp"></jsp:include>
    <div class="ch-pw-wrap">
        <div class="user-info">
            <div class="info-top">
                <h2>비밀번호 변경</h2>
            </div>
            <div class="info-top2">
                <p>º 비밀번호는 8~16자 영문, 숫자, 특수문자를 사용할 수 있습니다.</p>
            </div>
        
                <div class="info-edit">
                    <table>
                        <tr>
                            <td class="title">현재 비밀번호</td>
                            <td class="ip-pw"><input type="password" id="prePassword"></td>
                        </tr>
                        <tr>
                            <td class="title">새로운 비밀번호</td>
                            <td class="ip-pw"><input type="password" id="newPassword"></td>
                        </tr>
                        <tr>
                            <td class="title">새로운 비밀번호 확인</td>
                            <td class="ip-pw"><input type="password" id="newPasswordCheck"></td>
                        </tr>
                    </table>
                </div>
                <div class="info-edit-btn">
                    <button type="button" class="confirm">수정하기</button>
                    <button type="button" onclick="location.href='/mypage/personalPage'" class="cancel">취소</button>
                </div>
        </div>
    </div>
    
	<script src="/js/personal_ch_pw.js"></script>
</body>

</html>