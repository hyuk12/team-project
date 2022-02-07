/*
	비밀번호 찾기
*/



const findBtn = document.querySelector('.confirm');
const form = document.querySelector('form');
const inpName = document.querySelector('.input-name');
const inpUsername = document.querySelector('.input-username');
const member = document.querySelectorAll('.member-id');
const personal = document.querySelector('.personal-id');
const company = document.querySelector('.company-id');

function findPersValue() {
	$.ajax({
		type: 'post',
		// controller에서의 주소
		url: '/find/pw',
		data: {
			// reqDto와 이름이 같아야함
			"member": personal.value, 
			"name": inpName.value,
			"username": inpUsername.value
		},
		dataType: 'text',
		success: function(data) {
			let value = JSON.parse(data);
			if (value.code == 415) {
				alert(value.data + '\n' +
						'임시비밀번호[12345].');
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
		type: 'post',
		// controller에서의 주소
		url: '/find/pw',
		data: {
			// reqDto와 이름이 같아야함
			"member": company.value,
			"name": inpName.value,
			"username": inpUsername.value
		},
		dataType: 'text',
		success: function(data) {
			let value = JSON.parse(data);
			if (value.code == 415) {
				alert(value.data + '\n' +
						'임시비밀번호[12345].');
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

