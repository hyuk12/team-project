<<<<<<< HEAD
/**
 * 로그인처리 로직
 * */



const ploginBtns = document.querySelector('.pbtLogin');
const cloginBtns = document.querySelector('.cbtLogin');
const form = document.querySelector('form');
const usernameObjs = document.querySelectorAll('.personname');
const tabli = document.querySelectorAll('.tab-li');
const inputItem = document.querySelector('.input-item');
const inputItem2 = document.querySelector('.input-item2');
const on = document.querySelector('.on');

function changeUsername() {
    const inputId = document.querySelectorAll('.inpID')[0].value;

    usernameObjs[0].value = inputId + '_p';
}

function changeUsername2() {
    const inputId = document.querySelectorAll('.inpID')[1].value;

    usernameObjs[1].value = inputId + '_c';
}
=======
const inputItem = document.querySelector('.input-item');
const inputItem2 = document.querySelector('.input-item2');

const select = document.querySelector('.select');
const tabli = document.querySelectorAll('.tab-li');
const on = document.querySelector('.on');

const checkId = document.querySelector('.checkID');

>>>>>>> 48a8d831a8ccdfd8a96e8202facd40c3b5cc10ea

tabli[0].onclick = () => {
    tabli[0].classList.add('on');
    tabli[1].classList.remove('on');

    inputItem.style.display = 'flex';
    inputItem2.style.display = 'none';
<<<<<<< HEAD

}
ploginBtns.onclick = () => {
    changeUsername();
    form.submit();
}

tabli[1].onclick = () => {
=======
	
	checkId.value('P');
}

tabli[1].onclick = () => { 
>>>>>>> 48a8d831a8ccdfd8a96e8202facd40c3b5cc10ea
    tabli[1].classList.add('on');
    tabli[0].classList.remove('on');

    inputItem.style.display = 'none';
    inputItem2.style.display = 'flex';
<<<<<<< HEAD

}

cloginBtns.onclick = () => {
    console.log(changeUsername2());
    changeUsername2();
    form.submit();
}
=======
    
    checkId.value('C');
}

>>>>>>> 48a8d831a8ccdfd8a96e8202facd40c3b5cc10ea

