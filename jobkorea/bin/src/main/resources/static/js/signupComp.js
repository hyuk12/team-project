/**
 *  회원가입
 */
 
const signupInputs = document.querySelectorAll('.su-ip');
const submitBtns = document.querySelector('.mbrBtnRegist');
const myEmail = document.querySelector('#M_Email');
const myPhone = document.querySelector('#M_Phone');
const myCompNum = document.querySelector('#Comp_num_Check');

function checkCompNum(){
	var compNum = myCompNum.value;
	
	var regNum = /^([0-9]{3,5})-?([0-9]{3,4})-?([0-9]{4})$/;
	
	if(regNum.test(compNum) === true){
		
	}else{
		alert('사업자 번호를 확인해주세요.')
	}
}

function checkPhone(){
	var num = myPhone.value;
	
	var regPhone = /^01([0|1|6|7|8|9])-?([0-9]{3,4})-?([0-9]{4})$/;
	
	if(regPhone.test(num) === true){
		
	}else{
		alert('휴대폰 번호를 확인해주세요.')
	}
}

function checkEmail(){
	
	var text = myEmail.value;
	
	var regEmail = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/;
	if(regEmail.test(text) === true){
		
	}else{
		alert('이메일을 확인 해주세요')
	}	
}

function isEmpty(str){
	if(typeof str == "undefined" || str == null || str == ''){
		return '사용가능';
	}else {
		return str;
	}
}

function signupValidMsg(data){
	let signupDataObj = JSON.parse(data);
	if(signupDataObj.code == 444){
		alert(
		'유효성 검사 오류.\n' +
		'오류 코드: ' + signupDataObj.code + '\n' +
		'오류 내용\n' +
		'\t' + 'compType :' + isEmpty(signupDataObj.data.comptype) + '\n' +
		'\t' + 'compNum :'  + isEmpty(signupDataObj.data.compnum) + '\n' +
		'\t' + 'compName :'  + isEmpty(signupDataObj.data.compname) + '\n' +
		'\t' + 'ceoName :'  + isEmpty(signupDataObj.data.ceoname) + '\n' +
		'\t' + 'username :'  + isEmpty(signupDataObj.data.username) + '\n' +
		'\t' + 'password :'  + isEmpty(signupDataObj.data.password) + '\n' +
		'\t' + 'name :'  + isEmpty(signupDataObj.data.name) + '\n' +
		'\t' + 'phone :'  + isEmpty(signupDataObj.data.phone) + '\n' +
		'\t' + 'email :'  + isEmpty(signupDataObj.data.email) + '\n'
		);
	}else if(signupDataObj.code == 002){
		alert(
			'아이디 중복 오류.\n' +
			'오류 코드: ' + signupDataObj.code + '\n' +
			'오류 내용\n' +
			signupDataObj.data
		);
	}else if(signupDataObj.code == 001){
		alert(signupDataObj.data);
		location.replace('/auth/signinComp');
	
	}
}

function signup(){
	let signupObj = {
		comptype: signupInputs[0].value,
		compnum: signupInputs[1].value,
		compname: signupInputs[2].value,
		ceoname: signupInputs[3].value,
		username: signupInputs[4].value,
		password: signupInputs[5].value,
		name: signupInputs[6].value,
		phone: signupInputs[7].value,
		email: signupInputs[8].value
	}
	
	$.ajax({
		type: "post",
		url: "/auth/signupComp",
		data: signupObj,
		dataType: "text",
		success: function(data){
			signupValidMsg(data);
		},
		error: function(){
			alert('비동기 처리 오류');
		}
	});
}
 
submitBtns.onclick = () => {
		signup();
		checkEmail();
		checkPhone();
		checkCompNum()
	}