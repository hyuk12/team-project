/**
 *  이력서 
 */
 
 
 const chooseBtns = document.querySelectorAll('.buttonChoose');
 


 
 function hide(data){
	const hides = document.querySelectorAll('.hide');
	
		if(hides[data].style.display == 'none'){
		hides[data].style.display = 'flex';
		}else{
			hides[data].style.display = 'none';
		}
	}
	

 
 
 chooseBtns[0].onclick = () => {
	hide(0);
}
 
  chooseBtns[1].onclick = () => {
	hide(1);
}
 
  chooseBtns[2].onclick = () => {
	hide(2);
}

 chooseBtns[3].onclick = () => {
	hide(3);
}
 