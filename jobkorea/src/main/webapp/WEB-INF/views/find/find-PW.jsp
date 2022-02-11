<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <link rel="stylesheet" href="/css/style.css">
    <link rel="stylesheet" href="/css/find_PW.css">
    <title>잡코리아 알바몬 통합 로그인 | 잡코리아 - 좋은 일이 생긴다 | 회원정보수정
        jobkorea.co.kr
    </title>
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script src="https://kit.fontawesome.com/c3df4d7d1c.js" crossorigin="anonymous"></script>
</head>

<body>
    <nav class="header">
        <div class="nav-main">
            <div class="nav-logo">
                <a href="/myIndex">
                    <img src="/images/find-PW-logo.png">
                </a>
            </div>
        </div>
    </nav>
    <div class="find-nav">
        <div class="nav-in">
            <div><a href="/find/id" class="go-find-ID">아이디찾기</a></div>
            <div><a href="/find/pw" class="go-find-PW">비밀번호찾기</a></div>
        </div>
    </div>
    <div class="ch-pw-wrap">
        <div class="user-info">
            <div class="info-top">
                <h2>비밀번호 찾기</h2>
            </div>
            <div class="info-top2">
                <p>가입하신 정보를 이용하여 비밀번호를 찾을 수 있습니다.</p>
            </div>
        
            <form>
                <div class="info-edit">
                    <table>
                        <tr class="nav-tr">
                            <td class="input-td">
                                <input type="radio" class="member-id personal-id" name="member" value="1" checked="checked">
                            </td>
                            <td class="p-td">
                                <p>일반회원</p>
                            </td>
                            <td class="input-td">
                                <input type="radio" class="member-id company-id" name="member" value="2">
                            </td>
                            <td class="p-td">
                                <p>기업회원</p>
                            </td>
                        </tr>
                        <tr>
                            <td class="title">이름<span class="require"> *</span></td>
                            <td class="ip-info"><input type="text" class="input-name"></td>
                        </tr>
                        <tr>
                            <td class="title">아이디<span class="require"> *</span></td>
                            <td class="ip-info"><input type="text" class="input-username"></td>
                        </tr>
                        <tr>
                            <td class="ip-info"><input type="hidden" class="input-hidden" value="12345678"></td>
                        </tr>
                    </table>
                </div>
            </form>
            <div class="info-edit-btn">
                <button type="button" class="confirm">비밀번호찾기</button>
            </div>
       </div>
   </div>
    
	<script src="/js/find-PW.js"></script>
</body>

</html>