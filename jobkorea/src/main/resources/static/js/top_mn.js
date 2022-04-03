/**
 * 
 */ 
 $(document).ready(function () {
        $(".nav-menu").hide();

        $(".category-btn").click(function () {
            $(".nav-menu").slideToggle(0);
        });
    });

    $(document).click(function (e) {
        if (!$(e.target).is(".category-btn" || ".fas fa-bars" || ".fa-bars:before" || ".fa-bars")) {
            $(".nav-menu").css("display", "none")
        }
    }) 