function setBackground() {
	$('[setBackground]').each(function () {
		var background = $(this).attr('setBackground')
		$(this).css({
			"background-image": "url(" + background + ")",
			"background-size": "cover",
			"background-position": "center center"
		})
	})
	$('[setBackgroundRepeat]').each(function () {
		var background = $(this).attr('setBackgroundRepeat')
		$(this).css({
			"background-image": "url(" + background + ")",
			"background-repeat": "repeat"
		})
	})
}

function toggleMenu() {
	$('.toggle-button').on('click', function () {
		$('.toggle-button').toggleClass('active')
		$('.mobile-inner-nav').toggleClass('active')
		$('.back-drop').toggleClass('active')
		$('body').toggleClass('open-modal')
	});
	$('.back-drop').on('click', function () {
		$('.toggle-button').removeClass('active')
		$('.mobile-inner-nav').removeClass('active')
		$('.back-drop').removeClass('active')
		$('body').removeClass('open-modal')
	});
}

function toggleSearch() {
	$('.button-search').on('click', function () {
		$('.button-search').toggleClass('active')
		$('.search-box-wrap').toggleClass('active')
		$('.back-drop').toggleClass('active')
		$('body').toggleClass('open-modal')

	});
	$('.back-drop').on('click', function () {
		$('.button-search').removeClass('active')
		$('.search-box-wrap').removeClass('active')
		$('.back-drop').removeClass('active')
		$('body').removeClass('open-modal')
	});
}

function Headers() {
	$(window).scroll(function () {
		if ($(window).scrollTop() >= 200) {
			$('.header__bottom').addClass('fixed');
			$('.header__top').addClass('visible');
		} else {
			$('.header__bottom').removeClass('fixed');
			$('.header__top').removeClass('visible');
		}
	});

}

function Aos() {
	AOS.init({
		disable: 'phone',
		disable: "mobile",
		startEvent: "DOMContentLoaded",
		initClassName: "aos-init",
		animatedClassName: "aos-animate",

		delay: 0,
		duration: 700,
		easing: "ease",
		once: true,
		mirror: false,
		anchorPlacement: "top-bottom"
	});
}

function swiperInit() {
	var HomeBanner = new Swiper('.home-banner .swiper-container', {
		speed: 1000,
		navigation: {
			clickable: true,
			nextEl: '.home-banner .button-next',
			prevEl: '.home-banner .button-prev'
		},
		pagination: {
			el: '.home-banner .swiper-pagination',
			clickable: true
		},
	})

	var ChildBanner = new Swiper('.banner-child .swiper-container', {
		speed: 1000,
		navigation: {
			clickable: true,
			nextEl: '.banner-child .swiper-next',
			prevEl: '.banner-child .swiper-prev'
		},
		pagination: {
			el: '.banner-child .swiper-pagination',
			clickable: true
		},
	})

	// var galleryBanner = new Swiper('.gallery .swiper-container', {
	// 	speed: 1000,
	// 	centeredSlides: true,
	//     navigation: {
	//         clickable: true,
	//         nextEl: '.gallery .button-next',
	//         prevEl: '.gallery .button-prev'
	//     },
	// })


	var OtherBlog = new Swiper('.blog-other .swiper-container', {
		speed: 1000,
		slidesPerView: 3,
		spaceBetween: 50,
		navigation: {
			clickable: true,
			nextEl: '.blog-other .button-next',
			prevEl: '.blog-other .button-prev'
		},
		breakpoints: {
			768: {
				slidesPerView: 2
			},
			576: {
				slidesPerView: 1
			}
		}
	})

	var gallerySlider1 = new Swiper('.gallery__content-1 .swiper-container', {
		speed: 1000,
		slidesPerView: 3,
		spaceBetween: 20,
		navigation: {
			clickable: true,
			nextEl: '.gallery__content-1 .button-next',
			prevEl: '.gallery__content-1 .button-prev'
		},
		breakpoints: {
			768: {
				slidesPerView: 2
			},
			576: {
				slidesPerView: 1
			}
		}
	})
	var gallerySlider2 = new Swiper('.gallery__content-2 .swiper-container', {
		speed: 1000,
		slidesPerView: 3,
		spaceBetween: 20,
		navigation: {
			clickable: true,
			nextEl: '.gallery__content-2 .button-next',
			prevEl: '.gallery__content-2 .button-prev'
		},
		breakpoints: {
			768: {
				slidesPerView: 2
			},
			576: {
				slidesPerView: 1
			}
		}
	})
	var gallerySlider3 = new Swiper('.gallery__content-3 .swiper-container', {
		speed: 1000,
		slidesPerView: 3,
		spaceBetween: 20,
		navigation: {
			clickable: true,
			nextEl: '.gallery__content-3 .button-next',
			prevEl: '.gallery__content-3 .button-prev'
		},
		breakpoints: {
			768: {
				slidesPerView: 2
			},
			576: {
				slidesPerView: 1
			}
		}
	})
	var gallerySlider4 = new Swiper('.gallery__content-4 .swiper-container', {
		speed: 1000,
		slidesPerView: 3,
		spaceBetween: 20,
		navigation: {
			clickable: true,
			nextEl: '.gallery__content-4 .button-next',
			prevEl: '.gallery__content-4 .button-prev'
		},
		breakpoints: {
			768: {
				slidesPerView: 2
			},
			576: {
				slidesPerView: 1
			}
		}
	})
	var gallerySlider5 = new Swiper('.gallery__content-5 .swiper-container', {
		speed: 1000,
		slidesPerView: 3,
		spaceBetween: 20,
		navigation: {
			clickable: true,
			nextEl: '.gallery__content-5 .button-next',
			prevEl: '.gallery__content-5 .button-prev'
		},
		breakpoints: {
			768: {
				slidesPerView: 2
			},
			576: {
				slidesPerView: 1
			}
		}
	})
	var gallerySlider6 = new Swiper('.gallery__content-6 .swiper-container', {
		speed: 1000,
		slidesPerView: 3,
		spaceBetween: 20,
		navigation: {
			clickable: true,
			nextEl: '.gallery__content-6 .button-next',
			prevEl: '.gallery__content-6 .button-prev'
		},
		breakpoints: {
			768: {
				slidesPerView: 2
			},
			576: {
				slidesPerView: 1
			}
		}
	})

}

function languageToggle() {
	$(function () {
		$(".language .label").on("click", function (e) {
			$(".language .language-list").toggleClass("active");
			e.stopPropagation()
		});
		$(document).on("click", function (e) {
			if ($(e.target).is(".language .language-list") === false) {
				$(".language .language-list").removeClass("active");
			}
		});
	});
}

function backToTop() {
	var btn = $('#gotop');

	$(window).scroll(function () {
		if ($(window).scrollTop() > 300) {
			btn.addClass('show');
		} else {
			btn.removeClass('show');
		}
	});

	btn.on('click', function (e) {
		e.preventDefault();
		$('html, body').animate({
			scrollTop: 0
		}, '500');
	});

}

$(function () {
	$(".product-detail__information .noi-dung table tr").slice(0, 3).show();
	$(".viewmore-btn").on('click', function (e) {
		e.preventDefault();
		$("tr:hidden").slice(0, 3).slideDown();
		if ($("tr:hidden").length == 0) {
			$(".viewmore-btn").fadeOut('slow');
		}
	});
});
$(document).ready(function () {
	swiperInit()
	setBackground()
	toggleMenu()
	languageToggle()
	Headers()
	Aos()
	// CustomSelect()	
	backToTop()
	toggleSearch()


	$(window).on('resize', function () {
		$('header .mobile-inner-nav').removeClass('active')
		$('body').removeClass('open-modal')
		$('.back-drop').removeClass('active')
		$('.toggle-button').removeClass('active')
		$('.modal').removeClass('active')


	})

	/////img alt
	$('.image>img').each(function () {
		var data = $(this).attr('alt');
		$(this)
			.wrap("<div class='box-img'></div>")
			.parent('.box-img')
			.attr('data-alt', data);
	});

	$(".form-wrap-dtl").appendTo(".product-detail__information")

	$("#services").on("click", function () {
		$("html,body").animate({
				scrollTop: $(".home-services").offset().top - 80
			},
			1000
		);
	});

	$(".popup-btn").fancybox()
	/////////////
	$('[data-fancybox="image"]').fancybox({
		baseClass: 'myFancyBox',
		thumbs: {
			autoStart: true,
			axis: 'x'
		}
	})



	var moveNav = new MappingListener({
		selector: ".menu__list",
		mobileWrapper: ".mobile-inner-nav",
		mobileMethod: "appendTo",
		desktopWrapper: ".header__bottom .container",
		desktopMethod: "appendTo",
		breakpoint: 1025,
	}).watch()


	$('body').on('click', '#list li', function () {
		var mapHtml = $(this).children('.map-iframe').html();
		$('#map').html(mapHtml);

		$('#list li').removeClass('active');
		$(this).addClass('active');
		if ($(window).outerWidth() < 992) {
			$.fancybox.open({
				src: '#map',
				type: "inline",
				opts: {
					baseClass: "contact-map-popup"
				}
			});
		}
	});
});

// //////////gallery navigation start////////
jQuery(document).ready(function ($) {
	var headerHeight = $('.header__bottom').height();
	var galleryNav = $('.gallery__nav'),
		galleryNavTopPosition = galleryNav.offset().top,
		// taglineOffesetTop = $('#intro-tagline').offset().top + $('#intro-tagline').height() + parseInt($('#intro-tagline').css('paddingTop').replace('px', '')),
		contentSections = $('.section');

	$(window).on('scroll', function () {
		//on desktop - assign a position fixed to logo and action button and move them outside the viewport
		// ( $(window).scrollTop() > taglineOffesetTop ) ? $('#logo, .btn').addClass('is-hidden') : $('#logo, .btn').removeClass('is-hidden');

		//on desktop - fix gallery navigation on scrolling
		if ($(window).scrollTop() > galleryNavTopPosition) {
			//fix gallery navigation
			galleryNav.addClass('is-fixed');
			//push the .main-content giving it a top-margin
			$('.main-content').addClass('has-top-margin');
			//on Firefox CSS transition/animation fails when parent element changes position attribute
			//so we to change gallery navigation childrens attributes after having changed its position value
			setTimeout(function () {
				galleryNav.addClass('animate-children');
				$('#logo').addClass('slide-in');
				$('.btn').addClass('slide-in');
			}, 50);
		} else {
			galleryNav.removeClass('is-fixed');
			$('.main-content').removeClass('has-top-margin');
			setTimeout(function () {
				galleryNav.removeClass('animate-children');
				$('#logo').removeClass('slide-in');
				$('.btn').removeClass('slide-in');
			}, 50);
		}

		//on desktop - update the active link in the gallery fixed navigation
		updategalleryNavigation();
	});

	function updategalleryNavigation() {
		contentSections.each(function () {
			var actual = $(this),
				actualHeight = actual.height() + parseInt(actual.css('paddingTop').replace('px', '')) + parseInt(actual.css('paddingBottom').replace('px', '')),
				actualAnchor = galleryNav.find('a[href="#' + actual.attr('id') + '"]');
			if ((actual.offset().top - galleryNav.height() - headerHeight <= $(window).scrollTop()) && (actual.offset().top + actualHeight - galleryNav.height() - headerHeight > $(window).scrollTop())) {
				actualAnchor.addClass('active');
			} else {
				actualAnchor.removeClass('active');
			}
		});
	}

	//on mobile - open/close gallery navigation clicking/tapping the .gallery__nav-trigger
	$('.gallery__nav-trigger').on('click', function (event) {
		event.preventDefault();
		$(this).toggleClass('menu-is-open');
		galleryNav.find('ul').toggleClass('is-visible');
	});

	//smooth scrolling when clicking on the gallery navigation items
	galleryNav.find('ul a').on('click', function (event) {
		event.preventDefault();
		var target = $(this.hash);
		$('body,html').animate({
			'scrollTop': target.offset().top - galleryNav.height() + 1
		}, 400);
		//on mobile - close gallery navigation
		$('.gallery__nav-trigger').removeClass('menu-is-open');
		galleryNav.find('ul').removeClass('is-visible');
	});

	//on mobile - open/close primary navigation clicking/tapping the menu icon
	$('.primary-nav').on('click', function (event) {
		if ($(event.target).is('.primary-nav')) $(this).children('ul').toggleClass('is-visible');
	});
});
// ////////////gallery navigation end/////////////
$(document).ready(function () {
	var page = window.location.pathname;
	if ($('body').hasClass('homepage')) {
		$(".header__bottom .menu__list li:nth-child(2)").addClass('services-scroll');
	} else {
		$(".header__bottom .menu__list li:nth-child(2)").addClass('modal-toggle');
	};
	$('.header__bottom .menu__list li:nth-child(2) a').attr('href', 'javascript:void(0)');
	$('.header__bottom .menu__list .modal-toggle').on('click', function () {
		$('header .mobile-inner-nav').removeClass('active')
		$('.modal-toggle').toggleClass('active')
		$('.modal-overlay').toggleClass('active')
		$('.modal').toggleClass('active')
		$('body').addClass('open-modal')
	});
	$('.close-btn').on('click', function () {
		$('.modal-toggle').removeClass('active')
		$('.modal-overlay').removeClass('active')
		$('.modal').removeClass('active')
		$('body').removeClass('open-modal')
	});
	$('.modal-overlay').on('click', function () {
		$('.modal').removeClass('active')
		$('.modal-overlay').removeClass('active')
		$('body').removeClass('open-modal')
	});
	$(".services-scroll").on("click", function () {
		$("html,body").animate({
				scrollTop: $(".home-services").offset().top - 50
			},
			1000
		);
	});
});

$(document).ready(function () {
	$('.header__bottom .menu__list li:nth-child(3) a').attr('href', 'javascript:void(0)');
	$('.header__bottom .menu__list li:nth-child(3)').addClass('modal-quote-toggle');
	$('.header__bottom .menu__list .modal-quote-toggle').on('click', function () {
		$('header .mobile-inner-nav').removeClass('active')
		$('.overlay').toggleClass('active')
		$('.modal-quote').toggleClass('active')
		$('body').addClass('open-modal')
	});
	$('.close-btn').on('click', function () {
		$('.modal-toggle').removeClass('active')
		$('.overlay').removeClass('active')
		$('.modal-quote').removeClass('active')
		$('body').removeClass('open-modal')
	});
	$('.overlay').on('click', function () {
		$('.modal-quote').removeClass('active')
		$('.overlay').removeClass('active')
		$('body').removeClass('open-modal')
	});
	$('.modal-quote .modal-inner .modal-body .wrap-form .frm-btnwrap .frm-btn-submit').attr('value', 'Gửi yêu cầu')
});