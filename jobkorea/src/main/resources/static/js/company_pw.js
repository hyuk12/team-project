const prePw = document.querySelector('#prepassword');
const newPw = document.querySelector('#newpassword');
const newPwCheck = document.querySelector('#newpasswordcheck');

const form = document.querySelector('form');
const modifyBtn = document.querySelector('.confirm');

function passwordSubmit() {
	$.ajax({
		type: 'put',
		// controller에서의 주소
		url: '/accounts/company-pw-ch',
		data: {
			"prePassword": prePw.value,
			"newPassword": newPw.value
		},
		dataType:'text',
		success: function(data) {
			let passwordRespObj = JSON.parse(data);
			alert(passwordRespObj.message);
			
			if (passwordRespObj.code == 200) {
				alert("다시 로그인해주세요");
				location.replace('/logout');
			}
		},
		error: function() {
			alert('비동기 처리 오류');
		}
	});
}


modifyBtn.onclick = () => {
	if (newPw.value != newPwCheck.value) {
		alert("새 비밀번호가 일치하지않습니다");
		return;
	}
	passwordSubmit();
}