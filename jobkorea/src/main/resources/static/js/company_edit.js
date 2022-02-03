const compInput = document.querySelectorAll('.title-1');
const form = document.querySelector('form');
const modifyBtn = document.querySelector('.confirm');

var usernameCheckResult = 'true';

function usernameCheck(username) {

	$.ajax({
		type: "get",
		url: "/accounts/username-check",
		data: {
			"username": username
		},
		dataType: "text",
		async: false,
		success: function(data) {
			usernameCheckResult = data;
			
		},
		error: function() {
			alert('비동기 처리 오류');
		}

	});
}

function modifySubmit() {
	let formData = new FormData(form);
	
	$.ajax({
		type: 'put',
		// controller에서의 주소
		url: '/accounts/company-edit',
		data: formData,
		dataType: 'text',
		enctype: 'multipart/form-data',
		processData: false,
		contentType: false,
		success: function(data) {
			alert("회원정보수정이 완료되었습니다.");
		},
		error: function() {
			alert('비동기 처리 오류');
		}
	});
}


modifyBtn.onclick = () => {
	modifySubmit();
}