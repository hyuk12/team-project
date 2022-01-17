<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>잡코리아 통합 회원가입 : 개인회원 가입 ㅣ 잡코리아 - 좋은 일이 생긴다</title>
    <link rel="stylesheet" href="/css/signup.css">
<<<<<<< HEAD
=======
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
>>>>>>> origin/chh
</head>

<body>
    <div id="wrap">
        <div id="header">
            <div class="joinTop">
                <h2>
                    <span class="slogun_1"></span>
                </h2>
            </div>
            <ul class="gnb">
                <li>
                    <a href="/index">홈</a>
                </li>
                <li>
                    <a href="">고객센터</a>
                </li>
            </ul>
            <ul class="member">
                <li class="person">
                    <a href="/auth/signup">개인회원</a>
                </li>
                <li class="corp">
                    <a href="/auth/signupComp">기업회원</a>
                </li>
            </ul>
        </div>
<<<<<<< HEAD
=======
      
>>>>>>> origin/chh
        <div class="row_group row_top">
            <h4>소셜로 간편하게 로그인하세요</h4>
            <ul>
                <li>
<<<<<<< HEAD
                    <button type="button" id="btnNvLogin">
=======
                    <button type="button" id="btnNvLogin" class="su-submit-btns">
>>>>>>> origin/chh
                        <img src="/images/naver1.png" alt="">
                        네이버 로그인
                    </button>
                </li>
                <li>
<<<<<<< HEAD
                    <button type="button" id="btnGooLogin">
=======
                    <button type="button" id="btnGooLogin" class="su-submit-btns">
>>>>>>> origin/chh
                        <img src="/images/google1.png" alt="">
                        구글 로그인
                    </button>
                </li>
            </ul>

        </div>

        <div class="row_group mbr_info">
            <h4>회원가입하고 다양한 혜택을 누리세요!</h4>
            <p class="subTx">
                <strong>*</strong>
                필수 입력 정보입니다.
            </p>
<<<<<<< HEAD

            <!-- 이름 -->
            <div class="row mbr_name">
                <div class="col_1">
                    <label for="M_Name" class="mbr_name">이름(실명)
                        <i class="icon required" aria-hidden="hidde"><strong>*</strong></i>
                    </label>
                </div>
                <div class="col_2">
                    <input type="text" id="M_Name" name="M_Name" class="mbr_name" maxlength="12">
                </div>
            </div>

            <!-- 아이디 -->
            <div class="row mbr_id">
                <div class="col_1">
                    <label for="idCheck">
                        아이디(잡코리아, 알바몬 통합 ID)
                        <i class="icon required" aria-hidden="hidde"><strong>*</strong></i>
                    </label>
                </div>
                <div class="col_2">
                    <input type="text" id="idCheck" name="idCheck" maxlength="16">
                </div>
            </div>

            <!-- 비번 -->
            <div class="row mbr_passwd">
                <div class="col_1">
                    <label for="M_Pwd">
                        비밀번호(8~16자의 영문, 숫자, 특수기호)
                        <i class="icon required" aria-hidden="hidde"><strong>*</strong></i>
                    </label>
                </div>
                <div class="col_2">
                    <input type="text" id="M_Pwd" name="M_Pwd" maxlength="16">
                </div>
            </div>

            <!-- 이메일 -->
            <div class="row mbr_email">
                <div class="col_1">
                    <label for="M_Email" class="mbr_email_id">
                        이메일
                        <i class="icon required" aria-hidden="hidde"><strong>*</strong></i>
                    </label>
                </div>
                <div class="col_2">
                    <input type="text" id="M_Email" name="M_Email" size="8" maxlength="30">
                </div>
            </div>

        </div>
        <!-- 가입하기 버튼 -->
        <div class="row_group regist_complete" style="position: relative;">
            <div class="row">
                <button type="submit" class="mbrBtnRegist">
                    <span>가입하기</span>
                </button>
            </div>
        </div>
    </div>
=======
				<!-- 이름 -->
            	<div class="row mbr_name">
                	<div class="col_1">
                    	<label for="M_Name" class="mbr_name">
                    	</label>
                	</div>
                	<div class="col_2">
                    	<input type="text" id="M_Name" class="su-ip" name="M_Name" placeholder="이름 *" class="mbr_name" maxlength="12">
                	</div>
            	</div>

            	<!-- 아이디 -->
            	<div class="row mbr_id">
                	<div class="col_1">
                    	<label for="idCheck">
                    	</label>
                	</div>
                	<div class="col_2">
                    	<input type="text" id="idCheck" class="su-ip"  name="idCheck" placeholder="아이디(잡코리아, 알바몬 통합 ID) *" maxlength="16">
                	</div>
            	</div>

            <!-- 비번 -->
            	<div class="row mbr_passwd">
                	<div class="col_1">
                    	<label for="M_Pwd">
                    	</label>
                	</div>
                	<div class="col_2">
                    	<input type="text" id="M_Pwd" class="su-ip"  name="M_Pwd" placeholder="비밀번호(8~16자의 영문, 숫자, 특수기호) *" maxlength="16">
                	</div>
            	</div>

            	<!-- 이메일 -->
            	<div class="row mbr_email">
                	<div class="col_1">
                    	<label for="M_Email" class="mbr_email_id">
                    	</label>
                	</div>
                	<div class="col_2">
                    	<input type="text" id="M_Email" class="su-ip"  name="M_Email" placeholder="이메일 *" size="8" maxlength="30">
                	</div>
            	</div>
            	<!-- 휴대폰번호 -->
            	<div class="row mbr_phone">
                	<div class="col_1">
                    	<label for="M_Phone" class="mbr_phone">
                    	</label>
                	</div>
                	<div class="col_2">
                    	<input type="text" id="M_Phone" class="su-ip"  name="M_Phone" placeholder="휴대폰 번호 *" size="8" maxlength="30">
                	</div>
            	</div>

        
        	<!-- 가입하기 버튼 -->
        	<div class="row_group regist_complete" style="position: relative;">
            	<div class="row">
                	<button type="submit" id="mbrBtnRegist" class="su-submit-btns">
                    	<span>가입하기</span>
                	</button>
            	</div>
        	</div>
		</div>            
    </div>
    <script src="/js/signup.js"></script>
>>>>>>> origin/chh
</body>

</html>