$(document).ready(function() {
    var tab=$('.js-home-tab');
    tab.css('width',tab.closest('.js-tab-holder').css('width'));

    $('.js-watermark').each(function() {
        var wm = $(this).attr("placeholder");
        $(this).watermark(wm);
    });
});