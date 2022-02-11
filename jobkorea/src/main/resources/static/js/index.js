/**
 * 
 */
 
 
 const boardGroup = document.querySelector('.board-item-group');
 
 var page = 0;
 var boardItem = ``;
 var indexBoardTotalCount = 0;
 
 window.onscroll = () => {
	let checkNum = $(document).height()-$(window).height()-$(window).scrollTop();
	
	if(checkNum < 1 && checkNum > -1 && indexBoardTotalCount > (page+1)*3){
		page++;
		boardLoad();
	}
}
boardLoad();
 
 function boardLoad(){
	$.ajax({
		type: "get",
		url: `/index/board?page=${page}`,
		dataType: "text",
		success: function(data){
			let boardListObj = JSON.parse(data);
			boardItem += getBoard(boardListObj.indexBoardList);
			boardGroup.innerHTML = boardItem;
			indexBoardTotalCount = parseInt(boardListObj.indexBoardTotalCount);
			alert(data);
		},
		error: function(){
			alert('비동기 처리 오류');
		}
	});
}

function getBoard(boardList){
	let boardHtml=``;
	
	for(let board of boardList){
		
		boardHtml += `
			 <div class="board-item">
             	<div class="company-profile">
                	<div class="company-info">
                    	<img src="/image/${board.anm_picture}" >
                    </div>
                    <div class="profile-name"><h3>${board.compname}</h3></div>
                    <div class="profile-info"><h1>${board.anm_title}</h1></div>
                    <div class="follow-btn"><i class="far fa-star"></i></div>
               </div>
            </div>  
		`;
	}
	return boardHtml;
}
 
 