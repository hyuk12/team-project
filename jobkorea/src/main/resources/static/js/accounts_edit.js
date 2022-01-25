const accountBtn = document.querySelectorAll('.accounts-change-btn');
const usernameCheckForm = document.querySelector('.username-check');
const passwordCheck = document.querySelector('.password-check');
const principalUsername = document.querySelector('#principal-username');
const profileImgChangeBtn = document.querySelector('.profile-img-change-btn');
const imgFile = document.querySelector('#file');
const form = document.querySelector('form');
const profileImg = document.querySelector('#profile-img');
const submitBtn = document.querySelector('.edit-button');

const profileInput = document.querySelectorAll('.pr-ip');
const profilelabel = document.querySelectorAll('.info-lb');

// 비밀번호변경
const passwordSubmitBtn = document.querySelector('.pwd-button');
const prePasswordInput= document.querySelector('.pre-password-ip');
const newPasswordInput= document.querySelector('.new-password-ip');
const checkPasswordInput= document.querySelector('.new-check-pwd-ip');

var usernameCheckResult = 'true';

var imgFileChangeFlag = false;

imgFile.style.display = 'none';

profileImgChangeBtn.onclick = () => {
	imgFile.click();
}

imgFile.onchange = () => {
	let reader = new FileReader();

	reader.onload = (e) => {
		imgFileChangeFlag = true;
		profileImg.src = e.target.result;

	}
	reader.readAsDataURL(imgFile.files[0]);
}
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

function inputIsEmpty(str, lb) {
	let result = false;
	if (typeof (str) == undefined || str == null || str == '') {
		alert(lb + '은(는) 빈 값일 수 없습니다.');
		result = true;
	}
	return result;
}

function multipartSubmit() {
	let formData = new FormData(form);
	
	$.ajax({
		type: 'put',
		url: '/accounts/edit',
		data: formData,
		dataType: 'text',
		enctype: 'multipart/form-data',
		processData: false,
		contentType: false,
		success: function(data){
			
		},
		error: function(){
			alert('비동기 처리 오류.');
		}
		
	});
	
}
function editSubmit() {
	$.ajax({
		type: 'put',
		url: '/accounts/edit',
		data: {
			'username': profileInput[0].value,
			'name': profileInput[1].value,
			'phone': profileInput[2].value,
			'email': profileInput[3].value
		},
		dataType: 'text',
		success: function(data){
			if(data == 'true'){
				alert('회원정보 수정 성공');
				principalUsername.textContent = profileInput[0].value + '님 회원정보';
			}
		},
		error: function(){
			alert('비동기 처리 오류.');
		}
	});
}

submitBtn.onclick = () => {

	let pUsername = principalUsername.textContent;
	let username = profileInput[0].value;



	if (inputIsEmpty(profileInput[0].value, profilelabel[0].textContent)) {
		return;
	}
	if (inputIsEmpty(profileInput[1].value, profilelabel[1].textContent)) {
		return;
	}
	if (inputIsEmpty(profileInput[2].value, profilelabel[2].textContent)) {
		return;
	}
	if (inputIsEmpty(profileInput[3].value, profilelabel[3].textContent)) {
		return;
	}

	if (username != pUsername) {
		usernameCheckResult = false;
		usernameCheck(username);
	}
	alert(usernameCheckResult)
	if (usernameCheckResult == 'true') {

		if (imgFileChangeFlag == true) {
			multipartSubmit();
		} else {
			editSubmit();
		}
	} else {
		alert(username + "은(는) 이미 사용중인 사용자 이름입니다.");
	}

}