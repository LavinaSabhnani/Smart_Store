// The plugin code
$(documment).ready(function(){
	var blog = $('#blo').offset().top;
var destinations = $('#dest').offset().top;
var services = $('#serv').offset().top;
var contact = $('#deal').offset().top;
	$('.l2').click(function(){
	$('html,body').animate({scrollTop:destinations},1300)
	return false;
	});
	$('.l3').click(function(){
	$('html,body').animate({scrollTop:services},1300)
	return false;
	});
	$('.l5').click(function(){
	$('html,body').animate({scrollTop:contact},1300)
	return false;
	});
	$('#serv').click(function(){
		$(this).fadeOut();
	});
(function($){
    $.fn.parallax = function(options){
        var $$ = $(this);
        offset = $$.offset();
        var defaults = {
            "start": 0,
            "stop": offset.top + $$.height(),
            "coeff": 0.95
        };
        var opts = $.extend(defaults, options);
        return this.each(function(){
            $(window).bind('scroll', function() {
                windowTop = $(window).scrollTop();
                if((windowTop >= opts.start) && (windowTop <= opts.stop)) {
                    newCoord = windowTop * opts.coeff;
                    $$.css({
                        "background-position": "0 "+ newCoord + "px"
                    });
                }
            });
        });
    };
})(jQuery);

// call the plugin
$('.slider').parallax({ "coeff":-0.15 });
$('.slider p').parallax({ "coeff":0.15 });

$('.slider-2').parallax({ "coeff":-0.10 });
$('.slider-2 p').parallax({ "coeff":0.15 });
});
