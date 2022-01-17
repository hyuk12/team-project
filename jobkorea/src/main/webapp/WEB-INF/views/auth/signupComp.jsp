<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>잡코리아 통합 회원가입 : 기업회원 가입 ㅣ 잡코리아 - 좋은 일이 생긴다</title>
    <link rel="stylesheet" href="/css/signupComp.css">
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


        <div class="row_group mbr_info">
            <h4>기업정보</h4>
            <p class="subTx">
                <strong>*</strong>
                필수정보
            </p>

            <!-- 이름 -->
<<<<<<< HEAD
            <div class="row mbr_name">
                <div class="col_1">
                    <label for="M_Name" class="mbr_name">기업형태
                        <i class="icon required" aria-hidden="hidde"><strong>*</strong></i>
                    </label>
                </div>
                <div class="col_2">
                    <input type="text" id="M_Name" name="M_Name" class="mbr_name" maxlength="12">
=======
            <div class="row mbr_type">
                <div class="col_2">
                    <input type="text" id="C_type" name="comptype" class="su-ip" placeholder="기업형태 *" maxlength="12">
>>>>>>> origin/chh
                </div>
            </div>

            <!-- 아이디 -->
<<<<<<< HEAD
            <div class="row mbr_id">
                <div class="col_1">
                    <label for="idCheck">
                        사업자등록번호
                        <i class="icon required" aria-hidden="hidde"><strong>*</strong></i>
                    </label>
                </div>
                <div class="col_2">
                    <input type="text" id="idCheck" name="idCheck" maxlength="16">
=======
            <div class="row mbr_numCheck">
                <div class="col_2">
                    <input type="text" id="Comp_num_Check" name="compnum" class="su-ip"  placeholder="사업자등록번호 *"  maxlength="16">
>>>>>>> origin/chh
                </div>
            </div>

            <!-- 비번 -->
<<<<<<< HEAD
            <div class="row">
                <div class="col_1">
                    <label for="M_Pwd">
                        회사명
                        <i class="icon required" aria-hidden="hidde"><strong>*</strong></i>
                    </label>
                </div>
                <div class="col_2">
                    <input type="text" id="M_Pwd" name="M_Pwd" maxlength="16">
=======
            <div class="row mbr_Compname">
                <div class="col_2">
                    <input type="text" id="C_name" name="compname" class="su-ip"  placeholder="회사명 *"  maxlength="16">
>>>>>>> origin/chh
                </div>
            </div>

            <!-- 이메일 -->
<<<<<<< HEAD
            <div class="row mbr_email">
                <div class="col_1">
                    <label for="M_Email" class="mbr_email_id">
                        대표자명
                        <i class="icon required" aria-hidden="hidde"><strong>*</strong></i>
                    </label>
                </div>
                <div class="col_2">
                    <input type="text" id="M_Email" name="M_Email" size="8" maxlength="30">
=======
            <div class="row mbr_ceo_name">
                <div class="col_2">
                    <input type="text" id="C_ceoName" name="ceoname" class="su-ip"  placeholder="대표자명 *"  size="8" maxlength="30">
>>>>>>> origin/chh
                </div>
                <p>회사명, 대표자명 수정이 필요한 경우, 가입 후 고객센터(1588-9350)로 문의해주세요.</p>
            </div>

        </div>

        <!-- 인사담당자 정보 (휴대폰 인증 안할거고 ) -->
        <div class="row_group mbr_info">
            <h4>인사담당자 정보</h4>
            <p class="subTx">
                <a href="#">Overseas Corporate Help</a>
            </p>

            <!-- 이름 -->
            <div id="insaInput" class="row mbr_name">

                <div class="first_mbr_name">
<<<<<<< HEAD
                    <div id="insaID" class="col_1">
                        <label for="M_Name" class="mbr_name">아이디
                            <i class="icon required" aria-hidden="hidde"><strong>*</strong></i>
                        </label>
                    </div>
                    <div class="col_2">
                        <input type="text" id="M_Name" name="M_Name" class="mbr_name" maxlength="12">
                    </div>
                </div>
                <div class="second_mbr_name">
                    <div class="col_1">
                        <label for="M_Pwd" class="mbr_name">비밀번호
                            <i class="icon required" aria-hidden="hidde"><strong>*</strong></i>
                        </label>
                    </div>
                    <div class="col_2">
                        <input type="text" id="M_Name" name="M_Name" class="mbr_name" maxlength="12">
=======
                    <div class="col_2">
                        <input type="text" id="M_userName" name="username" class="su-ip" placeholder="아이디 *" maxlength="12">
                    </div>
                </div>
                <div class="second_mbr_name">
                    <div class="col_2">
                        <input type="text" id="M_pwd" name="password" class="su-ip" placeholder="비밀번호 *"  maxlength="12">
>>>>>>> origin/chh
                    </div>
                </div>
            </div>
            <!-- 아이디 -->
            <div class="row mbr_id">
<<<<<<< HEAD
                <div class="col_1">
                    <label for="idCheck">
                        가입자명
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
                        전화번호
                        <i class="icon required" aria-hidden="hidde"><strong>*</strong></i>
                    </label>
                </div>
                <div class="col_2">
                    <input type="text" id="M_Pwd" name="M_Pwd" maxlength="16">
=======
                <div class="col_2">
                    <input type="text" id="idCheck" name="name" class="su-ip"  placeholder="가입자명 *"  maxlength="16">
                </div>
            </div>

            <!-- 전번 -->
            <div class="row mbr_phone">
                <div class="col_2">
                    <input type="text" id="M_Phone" name="phone" class="su-ip"  placeholder="전화번호 *"  maxlength="16">
>>>>>>> origin/chh
                </div>
            </div>

            <!-- 이메일 -->
            <div class="row mbr_email">
<<<<<<< HEAD
                <div class="col_1">
                    <label for="M_Email" class="mbr_email_id">
                        이메일
                        <i class="icon required" aria-hidden="hidde"><strong>*</strong></i>
                    </label>
                </div>
                <div class="col_2">
                    <input type="text" id="M_Email" name="M_Email" size="8" maxlength="30">
=======
                <div class="col_2">
                    <input type="text" id="M_Email" name="email" class="su-ip"  size="8" placeholder="이메일 *" maxlength="30">
>>>>>>> origin/chh
                </div>
            </div>

        </div>


<<<<<<< HEAD
=======




>>>>>>> origin/chh
        <!-- 가입하기 버튼 -->
        <div class="row_group regist_complete" style="position: relative;">
            <div class="row">
                <button type="submit" class="mbrBtnRegist">
                    <span>가입하기</span>
                </button>
            </div>
        </div>
    </div>
<<<<<<< HEAD
=======
    <script src="/js/signupComp.js"></script>
>>>>>>> origin/chh
</body>

</html>