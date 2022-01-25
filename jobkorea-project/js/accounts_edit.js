const accountBtn = document.querySelectorAll('.accounts-change-btn');
const usernameCheck = document.querySelector('.username-check');
const passwordCheck = document.querySelector('.password-check');

const imgFile = document.querySelector('#file');

accountBtn[0].onclick = () => {
    usernameCheck.style.display = 'flex';
    passwordCheck.style.display = 'none';
}

accountBtn[1].onclick = () => {
    usernameCheck.style.display = 'none';
    passwordCheck.style.display = 'flex';
}

var imgFileChangeFlag = false;

imgFile.onchange = () => {
    let reader = new FileReader();

    reader.onload =(e)=>{
        imgFileChangeFlag =true;
        
    }
}