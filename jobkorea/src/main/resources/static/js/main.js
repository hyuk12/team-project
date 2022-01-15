const searchEl = document.querySelector('.search');
const searchInput = searchEl.querySelector('input');

searchEl.addEventListener('click', function(){
    //Logic..
    searchInput.focus(); // 강제로 포커싱 시켜주는 것
});

searchInput.addEventListener('focus', function(){
    searchEl.classList.add('focused');
    searchInput.setAttribute('placeholder', '');
});

searchInput.addEventListener('blur', function(){
    searchEl.classList.remove('focused');
    searchInput.setAttribute('placeholder', '');
});