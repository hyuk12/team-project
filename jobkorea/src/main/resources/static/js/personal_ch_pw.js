
const prePw = document.querySelector('#prePassword');
const newPw = document.querySelector('#newPassword');
const newPwCheck = document.querySelector('#newPasswordCheck');

const changePwBtn = document.querySelector('.confirm');



function passwordSubmit() {
	$.ajax({
		type: "put",
		url: "/accounts/password/change/personal",
		data: {
			"prePassword": prePw.value,
			"newPassword": newPw.value
		},
		dataType: "text",
		success: function(data) {
			let passwordRespObj = JSON.parse(data);
			alert(passwordRespObj.message);
			
			if(passwordRespObj.code == 200) {
				alert('다시 로그인해주세용');
				location.replace('/logout');
			}
		},
		error: function() {
			alert("동기화오류");
		}
	});
}

changePwBtn.onclick = () => {
	if(newPw.value != newPwCheck.value) {
		alert('새 비밀번호가 일치하지않습니다.');
		return;
	}	
	passwordSubmit();
}