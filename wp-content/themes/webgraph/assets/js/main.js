$(document).ready(function() {
    $('#carousel-1').carousel({
      interval: 4000,
      wrap: true,
      keyboard: true
 });
    // footer image gallery
    $('.tab-link').click( function() {
    
    var tabID = $(this).attr('data-tab');
    
    $(this).addClass('active').siblings().removeClass('active');
    
    $('#tab-'+tabID).addClass('active').siblings().removeClass('active');
});
    // footer image gallery
    // slider
    $(window).on('scroll', function() {
        if ($(window).scrollTop()) {
            $('.navbar').addClass('black');
            $('.navbar').find("ul").css("top", "0");
        } else {
            $('.navbar').removeClass('black');
            $('.navbar').find("ul").css("top", "0");
        }
    });

    $('.mobile-navbar a').click(function() {
        $('.main_nav ul').toggleClass('active');
    });

    $(window).scroll(function() {
        if ($(this).scrollTop() > 100) {
            $('#scroll').show();
        } else {
            $('#scroll').hide();
        }
    });

    $('#scroll').click(function() {
        $("html, body").animate({
            scrollTop: 0
        }, 600);
        return false;
    });
    // active menu
    $('.nav-item a').click(function(){
        $('.nav-item a').removeClass("menu-active");
        $(this).addClass("menu-active");
    });
        // details counter js
var a = 0;
$(window).scroll(function() {

  var oTop = $('.our-details').offset().top - window.innerHeight;
  if (a == 0 && $(window).scrollTop() > oTop) {

        // details counter js
    (function($) {
        $.fn.countTo = function(options) {
            options = options || {};

            return $(this).each(function() {
                // set options for current element
                var settings = $.extend({}, $.fn.countTo.defaults, {
                    from: $(this).data('from'),
                    to: $(this).data('to'),
                    speed: $(this).data('speed'),
                    refreshInterval: $(this).data('refresh-interval'),
                    decimals: $(this).data('decimals')
                }, options);

                // how many times to update the value, and how much to increment the value on each update
                var loops = Math.ceil(settings.speed / settings.refreshInterval),
                    increment = (settings.to - settings.from) / loops;

                // references & variables that will change with each update
                var self = this,
                    $self = $(this),
                    loopCount = 0,
                    value = settings.from,
                    data = $self.data('countTo') || {};

                $self.data('countTo', data);

                // if an existing interval can be found, clear it first
                if (data.interval) {
                    clearInterval(data.interval);
                }
                data.interval = setInterval(updateTimer, settings.refreshInterval);

                // initialize the element with the starting value
                render(value);

                function updateTimer() {
                    value += increment;
                    loopCount++;

                    render(value);

                    if (typeof(settings.onUpdate) == 'function') {
                        settings.onUpdate.call(self, value);
                    }

                    if (loopCount >= loops) {
                        // remove the interval
                        $self.removeData('countTo');
                        clearInterval(data.interval);
                        value = settings.to;

                        if (typeof(settings.onComplete) == 'function') {
                            settings.onComplete.call(self, value);
                        }
                    }
                }

                function render(value) {
                    var formattedValue = settings.formatter.call(self, value, settings);
                    $self.html(formattedValue);
                }
            });
        };

        $.fn.countTo.defaults = {
            from: 0, // the number the element should start at
            to: 0, // the number the element should end at
            speed: 2000, // how long it should take to count between the target numbers
            refreshInterval: 100, // how often the element should be updated
            decimals: 0, // the number of decimal places to show
            formatter: formatter, // handler for formatting the value before rendering
            onUpdate: null, // callback method for every time the element is updated
            onComplete: null // callback method for when the element finishes updating
        };

        function formatter(value, settings) {
            return value.toFixed(settings.decimals);
        }
    }(jQuery));

    jQuery(function($) {
        // custom formatting example
        $('.count-number').data('countToOptions', {
            formatter: function(value, options) {
                return value.toFixed(options.decimals).replace(/\B(?=(?:\d{3})+(?!\d))/g, ',');
            }
        });

        // start all the timers
        $('.timer').each(count);

        function count(options) {
            var $this = $(this);
            options = $.extend({}, options || {}, $this.data('countToOptions') || {});
            $this.countTo(options);
        }
    });

    a = 1;
  }

});

});