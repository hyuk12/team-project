/**
 *  공고등록
 */
const submitBtn = document.querySelector('.submit-btn');
const imgFile = document.querySelector('#file');
const imgAddBtn = document.querySelector('.picture');
const img = document.querySelector('#anm_picture');
const form = document.querySelector('form');

const anmInputs = document.querySelectorAll('.profile-ip');

var imgFileChangeFlag = false;
var anm_pictureFile = '';

imgFile.style.display = 'none';

imgAddBtn.onclick = () => {
	imgFile.click();
}

imgFile.onchange = () => {
	let reader = new FileReader();
	
	reader.onload = (e) => {
		imgFileChangeFlag = true;
		anm_pictureFile = e.target.result;
		img.src = anm_pictureFile;
	}
	reader.readAsDataURL(imgFile.files[0]);
}

function multipartSubmit(){
	let formData = new FormData(form);
	
	$.ajax({
		type: "put",
		url: "/anm/anm_edit",
		data: formData,
		enctype: "multipart/form-data",
		processData: false,
		contentType: false,
		success: function(data){
			if(data == true){
				const personImg = document.querySelector('.Img');
				personImg.src = anm_pictureFile;
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
		url: "/anm/anm_edit",
		data: {
			"anm_title": anmInputs[0].value,
			"comptype": anmInputs[1].value,
			"compname": anmInputs[2].value,
			"ceoname": anmInputs[3].value,
			"phone": anmInputs[4].value,
			"email": anmInputs[5].value,
			"education": anmInputs[6].value,
			"career": anmInputs[7].value,
			"area": anmInputs[8].value,
			"gender": anmInputs[9].value,
			"form_employ": anmInputs[10].value,
			"assign_task": anmInputs[11].value,
			"loyalty_point": anmInputs[12].value,
			"working_days": anmInputs[13].value,
			"hours_duty": anmInputs[14].value,
			"salary": anmInputs[15].value,
			"wanted": anmInputs[16].value
			
		},
		dataType: "text",
		success: function(data){
			alert(data);
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