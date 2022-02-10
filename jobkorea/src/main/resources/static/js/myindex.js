/**
 * 
 */
 
 const logoutBtn = document.querySelector('.logoutbtn');
 
 const boardGroup = document.querySelector('.board-item-group');
 
 var page = 0;
 var boardItem = ``;
 var indexBoardTotalCount = 0;
 
 window.onscroll = () => {
	let checkNum = $(document).height()-$(window).height()-$(window).scrolltop();
	
	if(checkNum < 1 && checkNum > -1 && indexBoardTotalCount > (page+1)*3){
		page++;
		boardLoad();
	}
}
boardLoad();

function boardLoad(){
	$.ajax({
		type: "get",
		url: `/myIndex/board?page=${page}`,
		dataType: "text",
		success: function(data){
			let boardListObj = JSON.parse(data);
			boardItem += getBoard(boardListObj.indexBoarList);
			boardGroup.innerHTML = boardItem;
			indexBoardTotalCount = parseInt(boardListObj.indexBoardTotalCount);
		},
		error: function(){
			alert('비동기 처리 오류');
		}
	});
}

function getBoard(boardList){
	let boardHtml = ``;
	
	for(let board of boardList){
		
		boardHtml += `
			<div class="board-item">
                            <div class="company-profile">
                                <div class="company-info">
                                    <img src="/image/${board.anm_picture}" alt="">
                                </div>
                                <div class="profile-name">
                                    <h3>${board.compname}</h3>
                                </div>
                                <div class="profile-info">
                                    <h1>전국 물류센터 계약직 대규모 모집</h1>
                                    <div class="follow-btn">
                                        <i class="far fa-star"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="board-item">
                            <div class="company-profile">
                                <div class="company-info">
                                    <img src="/images/nav-logo.png" alt="">
                                </div>
                                <div class="profile-name">
                                    <h3>cupang</h3>
                                </div>
                                <div class="profile-info">
                                    <h1>전국 물류센터 계약직 대규모 모집</h1>
                                    <div class="follow-btn">
                                        <i class="far fa-star"></i>
                                    </div>
                                </div>
                            </div>
                        </div>     
                        <div class="board-item">
                            <div class="company-profile">
                                <div class="company-info">
                                    <img src="/images/nav-logo.png" alt="">
                                </div>
                                <div class="profile-name">
                                    <h3>cupang</h3>
                                </div>
                                <div class="profile-info">
                                    <h1>전국 물류센터 계약직 대규모 모집</h1>
                                    <div class="follow-btn">
                                        <i class="far fa-star"></i>
                                    </div>
                                </div>
                            </div>
                        </div>     
                        <div class="board-item">
                            <div class="company-profile">
                                <div class="company-info">
                                    <img src="/images/nav-logo.png" alt="">
                                </div>
                                <div class="profile-name">
                                    <h3>cupang</h3>
                                </div>
                                <div class="profile-info">
                                    <h1>전국 물류센터 계약직 대규모 모집</h1>
                                    <div class="follow-btn">
                                        <i class="far fa-star"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                      
		`;
	}
	return boardHtml;
}
 
 logoutBtn.onclick = () => {
	location.replace = ('/logout');
}

/* 제이쿼리*/
$(document).ready(function () {
 
	var current = 0;
	var setIntervalId;
	
    timer();
    
    function timer() {

        setIntervalId = setInterval(function(){
            var n = current + 1;
            if (n >= 3) {
                n = 0;
            }
            move(n);
            $(".add-section").removeClass("on");
            $(".add-section").eq(i).addClass("on");
        }, 500);
    }

    function move(n) {
        var currentEl = $(".add-section > img").eq(current);
        var nextEl = $(".add-section > img").eq(n);
        currentEl.css({ left: '0%' }).animate({ left: '-100%' });
        nextEl.css({ left: '100%' }).animate({ left: '0%' });

        current = n;
    }
});