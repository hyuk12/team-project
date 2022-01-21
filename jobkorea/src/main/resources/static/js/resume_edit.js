/**
 *  이력서 
 */

const form = document.querySelector('form');
const submitBtn = document.querySelector('.submitBtn');

const imgFile = document.querySelector('#file');
const profileImgAddBtn = document.querySelector('.profile-img-add-btn');
const profileImg = document.querySelector('#profile-img'); 
const picture = document.querySelector('.picture');

const resumeInputs = document.querySelectorAll('.re-ip');
 
 // 클릭시 하이드된 리스트버튼들 나옴


var imgFileChangeFlag = false;

imgFile.style.display = 'none';

profileImgAddBtn.onclick = () => {
	imgFile.click();
}

imgFile.onchange = () => {
	let reader = new FileReader();
	
	reader.onload = (e) => {
		imgFileChangeFlag = true;
		profileImg.src = e.target.result;		
	}
	reader.readAsDataURL(imgFile.files[0]);// 파일의 실제경로를 받아옴
	// 받아오는 순간 readasdata에서 onload가 이뤄지고 그것의 결과는 result를 들고와서 src 프로필이미지 url에 대입한다
	
}

function isEmpty(str){
	if(typeof str == "undefined" || str == null || str == ''){
		return '사용가능';
	}else {
		return str;
	}
}

function resumeValidMsg(data){
	let resumeDataObj = JSON.parse(data);
	if(resumeDataObj.code == 010){
		alert(
		'유효성 검사 오류.\n' +
		'오류 코드: ' + signupDataObj.code + '\n' +
		'오류 내용\n' +
		'\t' + 'name :' + isEmpty(resumeDataObj.data.name) + '\n' +
		'\t' + 'birth :'  + isEmpty(resumeDataObj.data.birth) + '\n' +
		'\t' + 'gender :'  + isEmpty(resumeDataObj.data.gender) + '\n' +
		'\t' + 'email :'  + isEmpty(resumeDataObj.data.email) + '\n' +
		'\t' + 'phone :'  + isEmpty(resumeDataObj.data.phone) + '\n' +
		'\t' + 'education :'  + isEmpty(resumeDataObj.data.education) + '\n' +
		'\t' + 'schoolname :'  + isEmpty(resumeDataObj.data.schoolname) + '\n' +
		'\t' + 'admissionyear :'  + isEmpty(resumeDataObj.data.admissionyear) + '\n' +
		'\t' + 'graduateyear :'  + isEmpty(resumeDataObj.data.graduateyear) + '\n' +
		'\t' + 'graduationstatus :'  + isEmpty(resumeDataObj.data.grades) + '\n' +
		'\t' + 'compname :'  + isEmpty(resumeDataObj.data.compname) + '\n' +
		'\t' + 'joinyear :'  + isEmpty(resumeDataObj.data.joinyear) + '\n' +
		'\t' + 'leaveyear :'  + isEmpty(resumeDataObj.data.leaveyear) + '\n' +
		'\t' + 'certificate :'  + isEmpty(resumeDataObj.data.certificate) + '\n' +
		'\t' + 'selfintroduction :'  + isEmpty(resumeDataObj.data.selfintroduction) + '\n'
		);
	}else if(resumeDataObj.code == 002){
		alert(
			'아이디 중복 오류.\n' +
			'오류 코드: ' + resumeDataObj.code + '\n' +
			'오류 내용\n' +
			resumeDataObj.data
		);
	}else if(resumeDataObj.code == 001){
		alert(resumeDataObj.data);
		location.replace('/');
	
	}
}

function resume(){
	let signupObj = {
		name: resumeInputs[0].value,
		birth: resumeInputs[1].value,
		gender: resumeInputs[2].value,
		email: resumeInputs[3].value,
		profile_img: resumeInputs[4].value,
		phone: resumeInputs[5].value,
		address: resumeInputs[6].value,
		education: resumeInputs[7].value,
		schoolname: resumeInputs[8].value,
		admissionyear: resumeInputs[9].value,
		graduateyear: resumeInputs[10].value,
		graduationstatus: resumeInputs[11].value,
		major: resumeInputs[12].value,
		grades: resumeInputs[13].value,
		compname: resumeInputs[14].value,
		department: resumeInputs[15].value,
		joinyear: resumeInputs[16].value,
		leaveyear: resumeInputs[17].value,
		position: resumeInputs[18].value,
		sectors: resumeInputs[19].value,
		salary: resumeInputs[20].value,
		certificate: resumeInputs[21].value,
		issuedby: resumeInputs[22].value,
		handlingmonth: resumeInputs[23].value,
		selfintroduction: resumeInputs[24].value
	}
	
	$.ajax({
		type: "post",
		url: "/resume/resume_edit",
		data: signupObj,
		dataType: "text",
		success: function(data){
			resumeValidMsg(data);
		},
		error: function(){
			alert('비동기 처리 오류');
		}
	});
}


function multipartSubmit(){
	let formData = new FormData(form);
	
	$.ajax({
		type: "put",
		url: "/resume/edit",
		data: formData,
		enctype: "multipart/form-data",
		processData: false,
		contentType: false,
		success: function(data){
			
		},
		error: function(){
			alret('비동기 처리 오류');
		}
	});
}

function editSubmit(){
	$.ajax({
		type: "put",
		url: "/resume/edit",
		data: {
			"name": resumeInputs[0].value,
			"birth": resumeInputs[1].value,
			"gender": resumeInputs[2].value,
			"email": resumeInputs[3].value,
			"phone": resumeInputs[4].value,
			"address": resumeInputs[5].value,
			"education": resumeInputs[6].value,
			"schoolname": resumeInputs[7].value,
			"admissionyear": resumeInputs[8].value,
			"graduateyear": resumeInputs[9].value,
			"graduationstatus": resumeInputs[10].value,
			"major": resumeInputs[11].value,
			"grades": resumeInputs[12].value,
			"compname": resumeInputs[13].value,
			"department": resumeInputs[14].value,
			"joinyear": resumeInputs[15].value,
			"leaveyear": resumeInputs[16].value,
			"position": resumeInputs[17].value,
			"sectors": resumeInputs[18].value,
			"salary": resumeInputs[19].value,
			"certificate": resumeInputs[20].value,
			"issuedby": resumeInputs[21].value,
			"handlingmonth": resumeInputs[22].value,
			"selfintroduction": resumeInputs[23].value 
		},
		dataType: "text",
		success: function(data){
			alert('이력서 작성 완료');
		},
		error: function(){
			alert('비동기 처리 오류');
		}
	});
}


submitBtn.onclick = () => {
	if(imgFileChangeFlag == 'true'){
		multipartSubmit();
	}else{
		editSubmit();
	}
	
	
}
