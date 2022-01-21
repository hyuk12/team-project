const taba = document.querySelectorAll('.comp-item');
const tablb = document.querySelector('.last-item');
const allWrap = document.querySelector('.comp-all-wrap');
const majorWrap = document.querySelector('.comp-major-wrap');
const midWrap = document.querySelector('.comp-mid-wrap');
const publicWrap = document.querySelector('.comp-public-wrap');
const compCnt = document.querySelector('.count');
const on = document.querySelector('.on');


taba[0].onclick = () => {
    taba[0].classList.add('on');
    taba[1].classList.remove('on');
    taba[2].classList.remove('on');
    tablb.classList.remove('on');

    taba[0].classList.add('count');
    taba[1].classList.remove('count');
    taba[2].classList.remove('count');
    tablb.classList.remove('count');
    
    allWrap.style.display = 'flex';
    majorWrap.style.display = 'none';
    midWrap.style.display = 'none';
    publicWrap.style.display = 'none';
}

taba[1].onclick = () => {
    taba[1].classList.add('on');
    taba[0].classList.remove('on');
    taba[2].classList.remove('on');
    tablb.classList.remove('on');

    taba[1].classList.add('count');
    taba[0].classList.remove('count');
    taba[2].classList.remove('count');
    tablb.classList.remove('count');

    majorWrap.style.display = 'flex';
    allWrap.style.display = 'none';
    midWrap.style.display = 'none';
    publicWrap.style.display = 'none';
}

taba[2].onclick = () => {
    taba[2].classList.add('on');
    taba[0].classList.remove('on');
    taba[1].classList.remove('on');
    tablb.classList.remove('on');

    taba[2].classList.add('count');
    taba[1].classList.remove('count');
    taba[0].classList.remove('count');
    tablb.classList.remove('count');

    midWrap.style.display = 'flex';
    allWrap.style.display = 'none';
    majorWrap.style.display = 'none';
    publicWrap.style.display = 'none';
}

tablb.onclick = () => {
    tablb.classList.add('on');
    taba[0].classList.remove('on');
    taba[1].classList.remove('on');
    taba[2].classList.remove('on');

    taba[0].classList.remove('count');
    taba[1].classList.remove('count');
    taba[2].classList.remove('count');
    tablb.classList.add('count');

    publicWrap.style.display = 'flex';
    allWrap.style.display = 'none';
    majorWrap.style.display = 'none';
    midWrap.style.display = 'none';
    
}