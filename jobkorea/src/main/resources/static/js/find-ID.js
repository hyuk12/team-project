/*
	아이디 찾기
*/



const findBtn = document.querySelector('.confirm');
const form = document.querySelector('form');
const inpName = document.querySelector('.input-name');
const inpEmail = document.querySelector('.input-email');
const member = document.querySelectorAll('.member-id');
const personal = document.querySelector('.personal-id');
const company = document.querySelector('.company-id');

function findPersValue() {
	$.ajax({
		type: 'get',
		// controller에서의 주소
		url: '/auth/find/id',
		data: {
			// reqDto와 이름이 같아야함
			"member": personal.value, 
			"name": inpName.value,
			"email": inpEmail.value
		},
		dataType: 'text',
		success: function(data) {
			let value = JSON.parse(data);
			if (value.code == 315) {
				alert(value.data);
			} else {
				alert(value.data);
			}
		},
		error: function() {
			alert('비동기 처리 오류');
		}
		
	});
}


function findCompValue() {
	$.ajax({
		type: 'get',
		// controller에서의 주소
		url: '/auth/find/id',
		data: {
			// reqDto와 이름이 같아야함
			"member": company.value,
			"name": inpName.value,
			"email": inpEmail.value
		},
		dataType: 'text',
		success: function(data) {
			let value = JSON.parse(data);
			if (value.code == 315) {
				alert(value.data);
			} else {
				alert(value.data);
			}
		},
		error: function() {
			alert('비동기 처리 오류');
		}
		
	});
}

findBtn.onclick = () => {
	
	for(var i = 0; i <= member.length; i++ ) {
		if(member[i].checked) {
			if(member[i].value == '1') {
				alert('개인');
				return findPersValue();
			} else {
				alert('기업');
				return findCompValue()
			}
			
		} 
	}
	
}

