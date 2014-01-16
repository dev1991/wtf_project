$(document).ready(function() {
    var tab=$('.js-home-tab');
    tab.css('width',tab.closest('.js-tab-holder').css('width'));

    $('input').each(function() {
        var wm = $(this).attr("placeholder");
        $(this).watermark(wm);
    });

    $('.js-date').click(function() {
        console.log('click');
    });

    $('.js-date').pickadate();
});