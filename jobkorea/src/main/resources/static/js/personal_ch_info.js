
const ipUsername = document.querySelector('#ip-username');
const ipEmail = document.querySelector('#ip-email');
const ipPhone = document.querySelector('#ip-phone');

const changeInfoBtn = document.querySelector('.confirm');



function infoSubmit() {
	$.ajax({
		type: "put",
		url: "/accounts/info/change/personal",
		data: {
			"username": ipUsername.value,
			"email": ipEmail.value,
			"phone": ipPhone.value,
		},
		dataType: "text",
		success: function(data) {
			/*
			let passwordRespObj = JSON.parse(data);
			alert(passwordRespObj.message);
			
			if(passwordRespObj.code == 200) {
				alert('다시 로그인해주세용');
				location.replace('/logout');
			}
			*/
		},
		error: function() {
			alert("동기화오류");
		}
	});
}

changeInfoBtn.onclick = () => {
	console.log(ipUsername.value, ipEmail.value, ipPhone.value)
	// infoSubmit();
}