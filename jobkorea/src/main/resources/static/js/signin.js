/**
 * 로그인처리 로직
 * */



const loginBtn = document.querySelector('.btLogin');
const form = document.querySelector('form');
const usernameObj = document.querySelector('.username');
const personBtn = document.querySelectorAll('.Cbtns');
const userForm = document.querySelector('.input-item');
const compForm = document.querySelector('.input-item2');

function changeUsername() {
    const inputId = document.querySelector('.inpID').value;
    usernameObj.value = inputId + '_p';
}

function hiddenDiv (){
    if(compForm.style.display == 'none'){
        compForm.style.display = 'block';
    }else{
        compForm.style.display = 'none';
    }
}

personBtn[1].onclick = () => {
    hiddenDiv();
}

loginBtn.onclick = () => {
    changeUsername();
    form.submit();
}
