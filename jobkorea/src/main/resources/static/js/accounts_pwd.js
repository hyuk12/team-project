
// 비밀번호변경
const passwordSubmitBtn = document.querySelector('.pwd-button');
const prePasswordInput= document.querySelector('.pre-password-ip');
const newPasswordInput= document.querySelector('.new-password-ip');
const checkPasswordInput= document.querySelector('.new-check-pwd-ip');



function passwordSubmit(){
	$.ajax({
		type: 'put',
		url: '/accounts/password',
		data: {
			'prePassword': prePasswordInput.value,
			'newPassword': newPasswordInput.value
		},
		dataType: 'text',
		success: function(data){
			let passwordRespObj = JSON.parse(data);
			alert(passwordRespObj.message);
			if(passwordRespObj.code == 200){
				alert('다시 로그인 해주세요.');
				location.replace('/logout');
			}
		},
		error: function(){
			alert('비동기 처리 오류');
		}
	});
}


passwordSubmitBtn.onclick = () => {
	if(newPasswordInput.value != checkPasswordInput.value){
		alert('비밀번호가 일치 하지 않습니다.');
		return;
	}
	passwordSubmit();
	
}
