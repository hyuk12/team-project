const inputItem = document.querySelector('.input-item');
const inputItem2 = document.querySelector('.input-item2');

const select = document.querySelector('.select');
const tabli = document.querySelectorAll('.tab-li');
const on = document.querySelector('.on');


tabli[0].onclick = () => {
    tabli[0].classList.add('on');
    tabli[1].classList.remove('on');

    inputItem.style.display = 'flex';
    inputItem2.style.display = 'none';

}

tabli[1].onclick = () => { 
    tabli[1].classList.add('on');
    tabli[0].classList.remove('on');

    inputItem.style.display = 'none';
    inputItem2.style.display = 'flex';
}


