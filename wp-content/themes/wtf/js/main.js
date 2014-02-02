$(document).ready(function() {
    hideSections();

    $('.js-watermark').each(function() {
        var wm = $(this).attr("placeholder");
        $(this).watermark(wm);
    });

    $('.js-show-content').hover(function () {
        $(this).find('.text').stop().slideToggle('fast');
    });

    $('.js-trigger-visible').click(function() {
        var index = $(this).attr('data-visible-index');
        $('.js-trigger-visible').removeClass('active');
        $(this).addClass('active');
        $('.js-target-visible').hide();
        $('.js-target-visible[data-visible-index=' + index + ']').show();
        return false;
    });
});
function hideSections() {
    $('.js-target-visible').hide();
    $('.js-trigger-visible').each(function() {
        if($(this).hasClass('active')) {
            var index = $(this).attr('data-visible-index');
            $('.js-target-visible').each(function() {
                if($(this).attr('data-visible-index')==index) {
                    $(this).show();
                    return;
                }
            });
        }
    });
}