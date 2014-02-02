$(document).ready(function() {
    var tab=$('.js-home-tab');
    tab.each(function(){
        $(this).css('width',$(this).closest('.js-tab-holder').css('width'));
    });
    /*var window_width=window.innerWidth;
    var container_width=$('.row').width();
    console.log(container_width);
    var diff= (window_width - container_width)/2;
    $('.js-tab-animator-left').css('left',-diff);
    $('.js-tab-animator-right').css('right',-diff);*/

    $('.js-tab-holder').mouseenter(function(){
        var block=$(this).find('.js-home-tab');
        var height=$(block).height();
        var width=$(block).width();
        $(this).parent().append('<div class="tab_animator js-tab-animator-left"></div>');
        $(this).parent().append('<div class="tab_animator js-tab-animator-right"></div>');
        $(this).parent().append('<div class="tab_animator js-tab-animator-center-left"></div>');
        $(this).parent().append('<div class="tab_animator js-tab-animator-center-right"></div>');
        $(this).parent().append('<div class="tab_animator js-tab-animator-up-left"></div>');
        $(this).parent().append('<div class="tab_animator js-tab-animator-up-right"></div>');
        $('.js-tab-animator-left').css('left',0).css('top',-4);
        $('.js-tab-animator-right').css('right',0).css('top',-4);
        $('.js-tab-animator-center-left').css('right',$(this).closest('.tabs_wrap').width()-$(this).position().left-width/2).css('top',-height-1);
        $('.js-tab-animator-center-right').css('left',$(this).position().left+width/2).css('top',-height-1);
        $('.js-tab-animator-up-left').css('left',$(this).position().left-4).css('top',0).css('height',0).css('width',4);
        $('.js-tab-animator-up-right').css('left',$(this).position().left+width).css('top',0).css('height',0).css('width',4);
        var param='-'+height;
        var next='true';
        $(block).animate({
          top: param
        },
        {
            duration:400,
            step: function(now, fx) {
                $(this).css('clip', 'rect(0px, ' + width + 'px, ' + (-now) + 'px, 0px)');
            }
        });
        tab_animate($(this));
    });
    $('.js-tab-holder').mouseleave(function(){
        var block=$(this).find('.js-home-tab');
        var height=$(block).height();
        var width=$(block).width();
        $(block).clearQueue();
        $('.tab_animator').clearQueue().remove();
        $(block).animate({
          top: 0
        },
        {
            duration:400,
            step: function(now, fx) {
                $(this).css('clip', 'rect(0px, ' + width + 'px, ' + (-now) + 'px, 0px)');
            }
        });
    });

    function tab_animate(tab) {
        var left_pos=$(tab).position().left;
        var right_pos=$(tab).closest('.tabs_wrap').width() - (left_pos + $(tab).width());
        var block=$(tab).find('.js-home-tab');
        $('.js-tab-animator-left').animate({
            width: left_pos
        },
        {
            duration: 400
        });
        $('.js-tab-animator-right').animate({
            width: right_pos
        },
        {
            duration: 400
        });
        $('.js-tab-animator-up-left').animate({
            height: $(block).height(),
            top: -$(block).height()
        },
        {
            duration: 400,
            complete: function() {
                $('.js-tab-animator-center-left').animate({
                    width: $(tab).width()/2 + 4,
                    // left: $(this).position().left
                })
            }
        });
        $('.js-tab-animator-up-right').animate({
            height: $(block).height(),
            top: -$(block).height()
        },
        {
            duration: 400,
            complete: function() {
                $('.js-tab-animator-center-right').animate({
                    width: $(tab).width()/2 + 4
                })
            }
        });
    }
});