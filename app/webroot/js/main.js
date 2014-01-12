$(document).ready(function() {
    var tab=$('.js-home-tab');
    tab.css('width',tab.closest('.js-tab-holder').css('width'));

    $('input').each(function() {
        var wm = $(this).attr("placeholder");
        $(this).watermark(wm);
    });

    $('.js-validate').submit(function(e) {
        $('.js-required').each(function() {
            var value = $(this).val();
            value = value.trim();
            if(value=='') {
                e.preventDefault();
                $(this).parent('.form-group').addClass('has-error');
            }
        });
        $('.js-email').each(function() {
            var pattern = /^[a-zA-Z0-9\-_]+(\.[a-zA-Z0-9\-_]+)*@[a-z0-9]+(\-[a-z0-9]+)*(\.[a-z0-9]+(\-[a-z0-9]+)*)*\.[a-z]{2,4}$/;
            var value = $(this).val().trim();
            if(!pattern.test(value)) {
                e.preventDefault();
                $(this).parent('.form-group').addClass('has-error');
            }
        });
    });
});