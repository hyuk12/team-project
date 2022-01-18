/**
 * 로그인처리 로직
 * */



const ploginBtns = document.querySelector('.pbtLogin');
const cloginBtns = document.querySelector('.cbtLogin');
const form = document.querySelector('form');
const usernameObjs = document.querySelector('.personname');
const compUsernameObjs = document.querySelector('.compusername');
const tabli = document.querySelectorAll('.tab-li');
const inputItem = document.querySelector('.input-item');
const inputItem2 = document.querySelector('.input-item2');
const on = document.querySelector('.on');

function changeUsername() {
    const inputId = document.querySelector('.inpID').value;

    usernameObjs.value = inputId + '_p';
}

function changeUsername2() {
    const inputId = document.querySelector('.inpID').value;

    compUsernameObjs.value = inputId + '_c';
}

tabli[0].onclick = () => {
    tabli[0].classList.add('on');
    tabli[1].classList.remove('on');

    inputItem.style.display = 'flex';
    inputItem2.style.display = 'none';

}
ploginBtns.onclick = () => {
    changeUsername();
    form.submit();
}

tabli[1].onclick = () => {
    tabli[1].classList.add('on');
    tabli[0].classList.remove('on');

    inputItem.style.display = 'none';
    inputItem2.style.display = 'flex';

}

cloginBtns.onclick = () => {
    console.log(changeUsername2());
    changeUsername2();
    form.submit();
}

