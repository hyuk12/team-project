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
 


var profileImgFile = '';
var imgFileChangeFlag = false;

imgFile.style.display = 'none';

profileImgAddBtn.onclick = () => {
	imgFile.click();
}

imgFile.onchange = () => {
	let reader = new FileReader();
	
	reader.onload = (e) => {
		imgFileChangeFlag = true;
		profileImgFile = e.target.result;	
		profileImg.src = profileImgFile;	
	}
	reader.readAsDataURL(imgFile.files[0]);// 파일의 실제경로를 받아옴
	// 받아오는 순간 readasdata에서 onload가 이뤄지고 그것의 결과는 result를 들고와서 src 프로필이미지 url에 대입한다
	
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
			if(data == true){
				const personImg = document.querySelector('.personImg');
				personImg.src = profileImgFile;
				location.replace('/jobs/joblist');
			}
			
		},
		error: function(){
			alert('비동기 처리 오류');
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
			if(data == 'true'){
				alert('이력서 작성 완료');	
				location.replace('/jobs/joblist');
			}
		},
		error: function(){
			alert('비동기 처리 오류');
		}
	});
}


submitBtn.onclick = () => {
	if(imgFileChangeFlag == true){
		
		multipartSubmit();
	}else{
		editSubmit();
	}
	
	
}
