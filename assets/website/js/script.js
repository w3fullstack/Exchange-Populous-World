$(document).ready(function () {
    //Slider Preloader 
    var slider_preloader_status = $(".slider_preloader_statusr");
    var slider_preloader = $(".slider_preloader");
    var header_slider = $(".header-slider");
    slider_preloader_status.fadeOut();
    slider_preloader.delay(350).fadeOut('slow');
    header_slider.removeClass("header-slider-preloader");

    // Slider JS
    $('#animation-slide').owlCarousel({
        autoHeight: true,
        items: 1,
        loop: true,
        autoplay: false,
        dots: true,
        nav: true,
        autoplayTimeout: 7000,
        navText: ["<i class='fa fa-angle-left'></i>", "<i class='fa fa-angle-right'></i>"],
        //animateIn: "fadeIn",
        //animateOut: "fadeIn",
        autoplayHoverPause: false,
        touchDrag: true,
        mouseDrag: true
    });
    $("#animation-slide").on("translate.owl.carousel", function () {
        $(this).find(".owl-item .slide-text > *").removeClass("fadeInUp animated").css("opacity", "0");
        $(this).find(".owl-item .slide-img").removeClass("fadeInRight animated").css("opacity", "0");
    });
    $("#animation-slide").on("translated.owl.carousel", function () {
        $(this).find(".owl-item.active .slide-text > *").addClass("fadeInUp animated").css("opacity", "1");
        $(this).find(".owl-item.active .slide-img").addClass("fadeInRight animated").css("opacity", "1");
    });

//Sidebar Mobile menu
    $("#mobile-menu").metisMenu();

    $("#sidebar").mCustomScrollbar({
        theme: "minimal",
        scrollInertia: 100
    });

    $('#dismiss, .overlay').on('click', function () {
        $('#sidebar').removeClass('active');
        $('.overlay').fadeOut();
    });

    $('#sidebarCollapse').on('click', function () {
        $('#sidebar').addClass('active');
        $('.overlay').fadeIn();
    });

    //Marquee
    $('#marquee-horizontal').marquee({direction: 'horizontal', delay: 0, timing: 15});

    //Page Header Parallax
    $('.page_header').parallaxBackground();

    //SlimScroll
    $('.markert-table, .history-table').slimScroll({
        height: '411px',
        //color: '#cdcdcd',
        color: '#03a9f4',
        allowPageScroll: true,
        size: '8px',
        distance: '0px'
                //railVisible: true,
                //railColor: '#ffffff',
                //railOpacity: 1,
                //alwaysVisible: true

    });
    $('.buyOrder, .sellOrder, .sellRequest').slimScroll({
        height: '454px',
        color: '#03a9f4',
        allowPageScroll: true,
        size: '8px',
        distance: '0px'
    });
    $('.notice').slimScroll({
        height: '358px',
        color: '#03a9f4',
        allowPageScroll: true,
        size: '8px',
        distance: '0px'
    });
    $('#live_chat_list').slimScroll({
        height: '300px',
        color: '#03a9f4',
        allowPageScroll: true,
        size: '8px',
        distance: '0px'
    });

    //Table Header Fixed
    $('.tableFixHead').on('scroll', function () {
        $('thead', this).css('transform', 'translateY(' + this.scrollTop + 'px)');
    });

    //Back to Top
    $('.back-top').on('click', function () {
        $('html,body').animate({
            scrollTop: 0
        }, 700);
    });

    //Page Header Parallax
    $('.page_header').parallaxBackground();

    //Accordion
    $('.accordion > li:eq(0) a').addClass('active').next().slideDown();
    $('.accordion a').on('click', function (j) {
        var dropDown = $(this).closest('li').find('p');

        $(this).closest('.accordion').find('p').not(dropDown).slideUp();

        if ($(this).hasClass('active')) {
            $(this).removeClass('active');
        } else {
            $(this).closest('.accordion').find('a.active').removeClass('active');
            $(this).addClass('active');
        }

        dropDown.stop(false, true).slideToggle();

        j.preventDefault();
    });

    $('.toggle').on('click', function () {
        $('.form-container').stop().addClass('active');
    });

    $('.close').on('click', function () {
        $('.form-container').stop().removeClass('active');
    });



    var $particles_js = $('#banner_bg_effect');
    if ($particles_js.length > 0) {
        particlesJS('banner_bg_effect',
                // Update your personal code.
                        {
                            "particles": {
                                "number": {
                                    "value": 120,
                                    "density": {
                                        "enable": true,
                                        "value_area": 800
                                    }
                                },
                                "color": {
                                    "value": "#03a9f4"
                                },
                                "shape": {
                                    "type": "polygon",
                                    "stroke": {
                                        "width": 0,
                                        "color": "#000000"
                                    },
                                    "polygon": {
                                        "nb_sides": 5
                                    },
                                    "image": {
                                        "src": "img/github.svg",
                                        "width": 100,
                                        "height": 100
                                    }
                                },
                                "opacity": {
                                    "value": 0.4,
                                    "random": false,
                                    "anim": {
                                        "enable": false,
                                        "speed": 1,
                                        "opacity_min": 0.1,
                                        "sync": false
                                    }
                                },
                                "size": {
                                    "value": 3,
                                    "random": true,
                                    "anim": {
                                        "enable": false,
                                        "speed": 40,
                                        "size_min": 0.1,
                                        "sync": false
                                    }
                                },
                                "line_linked": {
                                    "enable": true,
                                    "distance": 150,
                                    "color": "#03a9f4",
                                    "opacity": 0.1,
                                    "width": 1
                                },
                                "move": {
                                    "enable": true,
                                    "speed": 6,
                                    "direction": "none",
                                    "random": false,
                                    "straight": false,
                                    "out_mode": "out",
                                    "bounce": false,
                                    "attract": {
                                        "enable": false,
                                        "rotateX": 600,
                                        "rotateY": 1200
                                    }
                                }
                            },
                            "interactivity": {
                                "detect_on": "canvas",
                                "events": {
                                    "onhover": {
                                        "enable": true,
                                        "mode": "repulse"
                                    },
                                    "onclick": {
                                        "enable": true,
                                        "mode": "push"
                                    },
                                    "resize": true
                                },
                                "modes": {
                                    "grab": {
                                        "distance": 400,
                                        "line_linked": {
                                            "opacity": 1
                                        }
                                    },
                                    "bubble": {
                                        "distance": 400,
                                        "size": 40,
                                        "duration": 2,
                                        "opacity": 8,
                                        "speed": 3
                                    },
                                    "repulse": {
                                        "distance": 200,
                                        "duration": 0.4
                                    },
                                    "push": {
                                        "particles_nb": 4
                                    },
                                    "remove": {
                                        "particles_nb": 2
                                    }
                                }
                            },
                            "retina_detect": true
                        }

                );
            }

});