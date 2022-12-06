var func = function() {
    window.addEventListener('load', function() {
        $("#spdc-info").hide();
        $("#spdc-info").delay(500).fadeIn(500, function() {
            $("#spdc-info").delay(1000).fadeOut(500, function() {
                $(".spdc-login").css("display", "block");
            });
        });
    });
}
window.addEventListener('load', func());

function rem() {
    window.removeEventListener('load', func());
}