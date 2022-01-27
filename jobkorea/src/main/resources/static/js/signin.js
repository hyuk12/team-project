/**
 * 로그인처리 로직
 * */



const ploginBtns = document.querySelector('.pbtLogin');
const cloginBtns = document.querySelector('.cbtLogin');
const form = document.querySelector('form');
const tabli = document.querySelectorAll('.tab-li');
const inputItem = document.querySelector('.input-item');
const inputItem2 = document.querySelector('.input-item2');
const on = document.querySelector('.on');
const inputId = document.querySelectorAll('.inpID');
const inputPw = document.querySelectorAll('.inpPW');
const usernameObjs = document.querySelector('.username');
const passwordObjs = document.querySelector('.password');

function changeUsername() {
    usernameObjs.value = inputId[0].value + '_p';
    passwordObjs.value = inputPw[0].value;
}

function changeUsername2() {
    usernameObjs.value = inputId[1].value + '_c';
    passwordObjs.value = inputPw[1].value;
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
    changeUsername2();
    form.submit();
    location.replace('/compIndex');
}