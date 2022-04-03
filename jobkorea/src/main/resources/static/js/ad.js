/**
 * 
 */
 
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
            }, 3000);
        }

        function move(n) {
            var currentEl = $(".add-section > img").eq(current);
            var nextEl = $(".add-section > img").eq(n);
            currentEl.css({ left: '0%' }).animate({ left: '-100%' });
            nextEl.css({ left: '100%' }).animate({ left: '0%' });

            current = n;
        }
    });