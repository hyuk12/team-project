/**
 * 로그인처리 로직
 * */



const loginBtn = document.querySelector('.btLogin');
const form = document.querySelector('form');
const usernameObj = document.querySelector('.username');


function changeUsername() {
    const inputId = document.querySelector('.inpID').value;
    usernameObj.value = inputId + '_c';
}
loginBtn.onclick = () => {
    changeUsername();
    form.submit();
}
