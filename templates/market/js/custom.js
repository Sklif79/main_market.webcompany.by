/*Вывод прайса на печать*/
$(document).ready(function () {
    $('.print_bat').click(function (event) {
        event.preventDefault();
        $(this).parents('.table-price').addClass('printing');
        window.print();
    });

    //добавить файл
    $(document).on('change', "input[type=file]", function () {
        var $self = $(this),
            filename = $self.val().replace(/.*\\/, ""),
            defaultValue = 'Выберите файл';

        $self.prev(".file-title").addClass('filled').text(filename);

        if ($self.val() !== defaultValue) {
            //появляется крестик
            $self.closest('.label-wrap-file').next('.file-remove-btn').fadeIn();
        }
    });

    //обработка input:file по нажатию крестика
    $(document).on('click', ".file-remove-btn", function () {
        var $self = $(this),
            defaultValue = 'Выберите файл';

        if ($self.closest('.field__wrap').find('.file-wrapper').length > 1) {
            $self.closest('.file-wrapper').remove();
        } else {
            $self.fadeOut().closest('.file-wrapper')
                .find('.file-title').text(defaultValue)
                .next('.filename').val('');
        }
    });


    //костыли для лого webcompany стандартного светлого подвала
    //и темного подвала с подпиской
    //удалить, когда лого сделают в svg
    // (function () {
    //     if ($('.footer-theme_gray').length) {
    //         $('.develop').find('img').attr('src', 'assets/templates/market/img/webcompany-gray.png');
    //     }
    //
    //     if ($('.footer-theme_dark').length) {
    //         $('.develop').find('img').attr('src', 'assets/templates/market/img/webcompany.png');
    //     }
    // })();

    //тултип
    (function () {
        $(document).on('click', '.tooltip-wrap img', function () {

            if ($(this).parent().hasClass('active')) {
                $(this).parent().removeClass('active');
            } else {
                $('.tooltip-wrap').removeClass('active');
                $(this).parent().addClass('active');

                biggerThanWindow($(this).next('.tooltip-content'));
            }
        });

        function biggerThanWindow(el) {
            el.css({'top': '', 'bottom': '', 'left': ''});

            var width = $(window).width(),
                left = el.offset().left,
                elWidth = el.outerWidth(),
                correctionLeft = width - left - elWidth - 20;

            if (correctionLeft < 0 && width >= 768) {
                el.css({'top': 'auto', 'bottom': '145%', 'left': correctionLeft + 'px'});
            } else if (width < 400) {
                el.css({'left': correctionLeft - 40 + 'px'});
            }
        }

        $(document).on('click', function (e) {
            if (!$(e.target).closest('.tooltip-wrap').length && $('.tooltip-wrap').hasClass('active')) {
                $('.tooltip-wrap').removeClass('active');
            }
        });
    })();


    $("input[type='number']").stylerNumber();
    $('.slider-sale-item').setMaxHeights();
    // $('.select-radio-img-list li').setMaxHeights();
    $('.header-scroll-main-menu').css({"overflow": "visible"});


    window.fromDesktop = 0;
    basketMobileMarkup();
    onMobileBasket();
    flexMenuArrow();
    asideFilterSlideToggle();
    checkedInput();
    customSelect();
    filterSpoilar();
    preventEnterSubmit();
    filterSelectPosition();
    filterArrowMobile();
    filterResize();
    currentActiveTopNav();
    customPlaceholderInit();
    validateForms();
    calcWindowWidth();
    setHeightMainSliderMobile();
    addInputTypeFile();
    addFile();
    tabs();
    setCounterValue();
    setMaxHeightTextarea();
    delScrollMenu();
    sideBasket();
    customSettingsInit();
    colorPickerInit();
    // checkboxDragNDrop();

    setTimeout(function () {
        scrollMenu();
    }, 1200);

    $(document).on('click', '.customer-settings', function (e) {
        if (
            (!!e.target.closest('label.radio') || !!e.target.closest('label.checkbox'))
        ) {
            $('.customer-settings').addClass('js_footer-show');
        }
    });
});

$(window).resize(function () {
    basketMobileMarkup();
    onMobileBasket();
    flexMenuArrow();
    filterArrowMobile();
    filterResize();
    filterSpoilar();
    calcWindowWidth();
    setHeightMainSliderMobile();
    closeSideBasketOnMobile();

    setTimeout(function () {
        scrollMenu();
    }, 1200);

    (function () {
        if ($(window).width() < 1025) {
            $('.wrap-menu').css('opacity', '1');
        }
    })();
});

/*Расшариваем ресурсы. social buttons. Added Rising13*/
Share = {
    vkontakte: function (purl, ptitle, pimg, text) {
        url = 'http://vkontakte.ru/share.php?';
        url += 'url=' + encodeURIComponent(purl);
        url += '&title=' + encodeURIComponent(ptitle);
        url += '&description=' + encodeURIComponent(text);
        url += '&image=' + encodeURIComponent(pimg);
        url += '&noparse=true';
        Share.popup(url);
    },
    odnoklassniki: function (purl, text) {
        url = 'http://www.odnoklassniki.ru/dk?st.cmd=addShare&st.s=1';
        url += '&st.comments=' + encodeURIComponent(text);
        url += '&st._surl=' + encodeURIComponent(purl);
        Share.popup(url);
    },
    facebook: function (purl, ptitle, pimg, text) {
        url = 'http://www.facebook.com/sharer.php?s=100';
        url += '&p[title]=' + encodeURIComponent(ptitle);
        url += '&p[summary]=' + encodeURIComponent(text);
        url += '&p[url]=' + encodeURIComponent(purl);
        url += '&p[images][0]=' + encodeURIComponent(pimg);
        Share.popup(url);
    },
    twitter: function (purl, ptitle) {
        url = 'http://twitter.com/share?';
        url += 'text=' + encodeURIComponent(ptitle);
        url += '&url=' + encodeURIComponent(purl);
        url += '&counturl=' + encodeURIComponent(purl);
        Share.popup(url);
    },
    mailru: function (purl, ptitle, pimg, text) {
        url = 'http://connect.mail.ru/share?';
        url += 'url=' + encodeURIComponent(purl);
        url += '&title=' + encodeURIComponent(ptitle);
        url += '&description=' + encodeURIComponent(text);
        url += '&imageurl=' + encodeURIComponent(pimg);
        Share.popup(url)
    },

    googleplus: function (purl) {
        url = 'https://plus.google.com/share?';
        url += 'url=' + encodeURIComponent(purl);
        Share.popup(url)
    },

    popup: function (url) {
        window.open(url, '', 'toolbar=0,status=0,width=626,height=436');
    }
};


$(document).ready(function () {
    //добавление поля для промежуточной точки
    function intermediatePoint() {
        var itemInput = 1;

        $('.form-transfer').on('click', '.form-transfer__add-point', function () {
            var cloneWrap = $('.clone-wrap:first').clone(true);
            var delAddress = '<div class="del-adress">отменить</div>';
            var input = cloneWrap.find('input');

            if (itemInput = 1) {
                cloneWrap.append(delAddress);
            }

            input.attr('name', function () {
                itemInput++;
                return 'address' + itemInput;
            });
            input.val('');
            cloneWrap.appendTo('#add-input');
        });


        $('.form-transfer').on('click', '.del-adress', function () {
            $(this).parent('.clone-wrap').remove();
        });

    }

    intermediatePoint();

    $(".datepicker").datepicker({
        weekStart: 1,
        daysMin: ['Вс', 'Пн', 'Вт', 'Ср', 'Чт', 'Пт', 'Сб'],
        months: ['Январь', 'Февраль', 'Март', 'Апрель', 'Май', 'Июнь', 'Июль', 'Август', 'Сентябрь', 'Октябрь', 'Ноябрь', 'Декабрь'],
        monthsShort: ["Янв", "Фев", "Мар", "Апр", "Май", "Июн", "Июл", "Авг", "Сен", "Окт", "Ноя", "Дек"],
        format: 'dd/mm/yyyy',
        autoPick: true
    });

    $(".datepicker-form").datepicker({
        weekStart: 1,
        daysMin: ['Вс', 'Пн', 'Вт', 'Ср', 'Чт', 'Пт', 'Сб'],
        months: ['Январь', 'Февраль', 'Март', 'Апрель', 'Май', 'Июнь', 'Июль', 'Август', 'Сентябрь', 'Октябрь', 'Ноябрь', 'Декабрь'],
        monthsShort: ["Янв", "Фев", "Мар", "Апр", "Май", "Июн", "Июл", "Авг", "Сен", "Окт", "Ноя", "Дек"],
        format: 'dd/mm/yyyy',
        // autoPick: false,
        hide: function () {
            var self = $(this);
            setTimeout(function () {
                self.blur();
            }, 0)

        },
        autoHide: true,
        zIndex: 22048
    });

    // $(document).on('click', '.datepicker-form',function () {
    //     datapickerForm
    // })

    // $(".datepicker-form").datepicker({create:function(){alert("Привет")}}).


    /*Раскрываем левое меню*/
    $('.main-menu-left ul.dropdown li.active').parents('li').addClass('active');
    $('.main-menu-left li.active > ul.dropdown').show();
    $('.main-menu-left li.active > .wrap > span').addClass('uk-icon-angle-up');
    $('.main-menu-left li.active > .wrap > span').addClass('uk-icon-angle-up');


    /*цвет блока availability*/
    function availabilityColor() {
        $('span.in-stock').parent().css({"color": "#1bcc7b"});
        $('span.reservation').parent().css({"color": "#e2821b"});
        $('span.not-available').parent().css({"color": "#e51528"});
    }

    availabilityColor();

    /*определение высоты элемента каталога*/
    var elCard = $('.outside-product:first').children();

    //верхний и нижний отступы + border
    var sumHeight = 0;

    elCard.each(function (i, item) {
        sumHeight += item.clientHeight;
    });

    sumHeight += "px";

    $('.preview-product-element').css({"height": sumHeight});

    /*стрелки в меню + активный верхний пункт*/
    $('ul.menu-sub').parent('li').addClass('nav-arrow');
    $('li.active').parents('li').addClass('active');


    //цветные изображения при ховере
    function hoverColorImg(target, dataName) {
        var newSrc, src, oldSrc, thisImg;

        $(document).on('mouseenter', target, function () {
            thisImg = $(this).find('img');
            newSrc = thisImg.attr(dataName);
            oldSrc = thisImg.attr('src');
            src = thisImg.attr('src', newSrc);
        });

        $(document).on('mouseleave', target, function () {
            thisImg.attr('src', oldSrc);
        });

        if ($(window).width() <= 768 && !~target.indexOf('footer')) {

            $(target).each(function () {
                thisImg = $(this).find('img');
                newSrc = thisImg.attr(dataName);
                src = thisImg.attr('src', newSrc);
            });
        }
    }

    hoverColorImg('div.company-element', 'data-srchover');
    hoverColorImg('.footer-var-1 div.footer-top div.social a', 'data-src_soc_icon_bottom');
    hoverColorImg('.footer .develop a', 'data-srchover');


    function flexMenuTxt(header) {
        $(header + ' #menu-flex').flexMenu({
            linkText: "• • •"
        });
    }

    setTimeout(function () {
        flexMenuTxt('.header-top-var-1');
        flexMenuTxt('.header-top-var-2');
        flexMenuTxt('.header-top-var-1_1');
        flexMenuTxt('.header-top-var-1_2');
        flexMenuTxt('.header-top-var-1_3');
        flexMenuTxt('.header-top-var-1_4');
        flexMenuTxt('.header-top-var-2_1');
        flexMenuTxt('.header-top-var-2_2');
        flexMenuTxt('.header-top-var-2_3');
        flexMenuTxt('.header-top-var-3_1');
        flexMenuTxt('.header-top-var-3_2');
        flexMenuTxt('.header-top-var-4_1');
        flexMenuTxt('.header-top-var-4_2');
        flexMenuTxt('.header-top-var-4_3');
        flexMenuTxt('.header-top-var-4_4');
        flexMenuTxt('.header-top-var-4_5');
        flexMenuTxt('.header-top-var-5_1');
        flexMenuTxt('.header-top-var-5_2');
        flexMenuTxt('.header-top-var-5_3');
        flexMenuTxt('.header-top-var-5_4');
        flexMenuTxt('.header-top-var-6_1');
        flexMenuTxt('.header-top-var-6_2');
        flexMenuTxt('.header-top-var-6_3');
        flexMenuTxt('.header-top-var-7_1');
        flexMenuTxt('.header-top-var-7_2');

        $('#menu-flex').flexMenu({
            linkText: "Ещё"
        });

        $('#menu-flex-scroll, #header-trim-nav').flexMenu({
            linkText: "Меню"
        });

        $('.header-variable-2__nav .menu').flexMenu({
            linkText: "• • •"
        });

    }, 0);


    //перемещение корзины в мобильный хеадер
    if ($('.flex-center-bar #shopCart').length && $(window).width() <= 1024) {
        var cart = $('#shopCart');

        cart.appendTo($('.search-wrap'));
    }

    // -------------------------------------------------------------------------------


    fileType($('a[download]'), '.card-documents__el-img');

    //выпадающая корзина в header
    $(".scroll-floating-basket-items, .side-basket tbody").mCustomScrollbar({
        axis: "y",
        scrollInertia: 300,
        scrollbarPosition: "outside",
        mouseWheel: {preventDefault: true}
    });

    var leaveBasket = true;

    function checkLeaveBasket() {
        setTimeout(function () {
            if (leaveBasket) {
                $('.basket-under-header').removeClass('active');
            }
        }, 500);
    }

    $('body').on('mouseenter', '#cartInner, .basket-under-header', function () {
        leaveBasket = false;
        $('.basket-under-header').addClass('active');
    });

    $('body').on('mouseleave', '#cartInner, .basket-under-header', function () {
        leaveBasket = true;
        checkLeaveBasket();
    });

    //обрезка текста по длине
    function cropText(item, size) {

        item.each(function () {
            var newsText = $(this).text();
            if (newsText.length > size) {
                $(this).text(newsText.slice(0, size) + '...');
            }
        });
    }

    cropText($('.side-basket__lnk'), 62);


    //вычисляем top для заголовка услуг
    if ($(document).width() > 1025) {
        servicesTop();

        $(document).on('click', '.services-main .view-more', function () {
            setTimeout(function () {
                servicesTop();
            }, 500);
        });
    }

    function servicesTop() {
        $('div.services-element div.content').each(function (i, item) {
            var topPosition = $(this).position().top + "px";
            $(this).css({"top": topPosition});
        });
    }

    if ($(document).width() < 1025) {
        $('.dignity-main-element').setMaxHeights();

    }

    //вычисляем bottom и right для выполненых проектов
    //задержка задана из-за слайдера
    setTimeout(function () {
        $('div.completed-project-content').each(function (i, item) {

            var projectBottom = $(this).prev().height() - $(this).height() + "px";

            //-1px из-за дробной части в пикселях
            var projectRight = $(this).prev().outerWidth() - $(this).outerWidth() - 1 + "px";

            $(this).css({"bottom": projectBottom, "right": projectRight});
        });
    }, 500);

    //отмена центрирования при переполнении контента услуг
    function overflowInfo(el, maxHeight) {
        $(el).each(function (i, item) {

            var innerBlocks = $(this).children();
            var infoHeight = 0;

            innerBlocks.each(function () {
                infoHeight += $(this).outerHeight(true);
            });

            if (infoHeight > maxHeight) {
                $(this).addClass('flex-start');
            }
        });
    }

    overflowInfo('.projects-page .completed-projects-slider__info', 159);
    overflowInfo('.catalog-element__info', 122);


    //кнопка поиска скролл-меню
    $('.header-scroll').on('click', '.header-scroll__search-btn', function () {
        $('#search-panel-top').toggleClass('fix').show();
    });

    //аккордеон
    $('.question-wrap').on('click', '.question-el', function (e) {
        var el = $(this);

        if (!$(e.target).closest('.upload-file').length) {
            if (el.hasClass('active')) {
                el.removeClass('active').find('.question-answer').slideUp();
                return false;
            }

            $('.question-el').removeClass('active').find('.question-answer').slideUp();
            el.addClass('active').find('.question-answer ').slideToggle();
        }
    });


    //страница проекты, поверка на пустой правый блок
    function projectBlocks() {

        $('.projects-card').each(function () {
            var elems = $(this).find($('.projects-card-info-wrap > *').not($('.projects-card-info-lnk-wrap')));

            if (!elems.length && $(this).find($('.projects-card-info-lnk-wrap')).length) {
                $('.projects-card-info-wrap').addClass('empty');
            }
        });
    }

    projectBlocks();

    //копирование телефонов в мобильную версию из шапки
    mobilePhone();

    function mobilePhone() {
        var $phonesSource = $('.center-bar .header-phone-wrap a'),
            $ul = $('<ul class="mobile-menu__phones-list"></ul>');

        $phonesSource.each(function () {
            $ul.append($('<li>' + $(this).get(0).outerHTML + '</li>'));
        });

        $('.mobile-menu__callback-hidden').prepend($ul);

        $('.mobile-menu__phones-list').find('a').removeClass().addClass('mobile-menu__phones');
    }

    hasBasket();

    //мобильное меню
    var mobileMenuBtn = $('span.button-mobile-menu');
    var menuMobileContainer = $('div.wrap-menu');
    var mobileMenuInner = $('div.mobile-menu-inner');
    var scrollAxisY = 0;

    mobileMenuBtn.on('click', function () {

        if (!$('body').hasClass('mobile-active')) {
            scrollAxisY = $(window).scrollTop();
        }

        $(this).toggleClass('active');
        menuMobileContainer.toggleClass('active');
        $('body').toggleClass('mobile-active');

        if (mobileMenuInner.hasClass('active')) {

            mobileMenuInner.removeClass('active');
            $(window).scrollTop(scrollAxisY);

        } else {

            mobileMenuInner.addClass('active');

        }
    });

    $(document).on('click', function (e) {
        if (menuMobileContainer.hasClass('active')
            && !$(e.target).closest(menuMobileContainer).length
        ) {

            mobileMenuBtn.removeClass('active');
            menuMobileContainer.removeClass('active');
            mobileMenuInner.removeClass('active');
            $('body').removeClass('mobile-active');

            e.preventDefault();
            e.stopPropagation();
        }
    });


    $('div.mobile-menu-inner').on('click', '.mob-button', function () {
        $(this).toggleClass('active').parent().next('ul.menu-sub').slideToggle();
    });

    //скролл хлебных крошек в мобилке
    $(".breadcrumbs-wrap").mCustomScrollbar({
        axis: "x",
        scrollInertia: 300,
        scrollbarPosition: "inside"
    });

    //телефоны хеадера мобилка
    $('div.mobile-menu__callback').on('click', function () {
        $('.mobile-menu__callback-hidden-wrap').toggleClass('active');
    });

    $(document).on('click', function (e) {
        if ($('.mobile-menu__callback-hidden-wrap').hasClass('active')
            && !$(e.target).closest('.mobile-menu__callback').length
        ) {

            $('.mobile-menu__callback-hidden-wrap').removeClass('active');
        }
    });

    //ширина слайдера новинок
    function prewievSliderWidth() {
        if ($(document).width() <= 1300 && $('.preview-product').length) {

            var doubleMargin = parseFloat($('.preview-product')
                    .find('.container')
                    .css('margin-left')) * 2 + 'px';

            $('.preview-product .preview-product-slider, .preview-product .preview-product-slider-second')
                .css({'width': 'calc(100% + ' + doubleMargin + ')'});
        }
    }

    //меняем z-index кнопки получить консультаию при ховере на слайдер
    $('.preview-product-element').hover(
        function () {
            $('.callback-main__button').css({'z-index': '0'});
        },

        function () {
            $('.callback-main__button').css({'z-index': ''});
        });


    //слайдер карточки товара
    $('.main-first-image-slider').slick({
        prevArrow: '<div class="customPrevBtn">' +
        '<img src="assets/templates/market/img/sprite/arr-slider-prev.png" alt="">' +
        '</div>',
        nextArrow: '<div class="customNextBtn">' +
        '<img src="assets/templates/market/img/sprite/arr-slider-next.png" alt="">' +
        '</div>',
        slidesToShow: 1,
        slidesToScroll: 1,
        dots: true,
        customPaging: function (slider, i) {
            var source = $(slider.$slides[i]).find('img').attr('src') + "";
            return '<a class="pager__item"><img src=' + source + '></a>';
        },
        responsive: [
            {
                breakpoint: 960,
                dots: false
            }
        ]
    });

    cropText($('.completed-project-content__title p'), 90);
    //слайдер выполненных проектов
    if ($(document).width() < 990) {
        $('.index-completed-project-slider .completed-project-inner').slick({
            slidesToShow: 2,
            slidesToScroll: 1,
            arrows: false,
            dots: false,
            responsive: [
                {
                    breakpoint: 990,
                    settings: {
                        slidesToShow: 2,
                        centerMode: true,
                        centerPadding: '20px'
                    }
                },

                {
                    breakpoint: 769,
                    settings: {
                        slidesToShow: 1,
                        centerMode: true,
                        centerPadding: '20px'
                    }
                }
            ]
        });
    }

    (function () {
        var $el = $('.news-wrap-mobile'),
            countEl = $el.find('.news-element').length;

        if (countEl > 1) {
            $el.slick({
                slidesToShow: 2,
                slidesToScroll: 1,
                centerMode: true,
                arrows: false,
                dots: false,
                responsive: [
                    {
                        breakpoint: 481,
                        settings: {
                            slidesToShow: 1,
                            centerMode: true,
                            centerPadding: '20px'
                        }
                    }
                ]
            });
        } else {
            $el.css({"margin":"0"});
        }
    })();


    //слайдер отзывов
    if ($(document).width() <= 769) {

        setTimeout(function () {
            $('.card-reviews-wrap').slick({
                slidesToShow: 1,
                slidesToScroll: 1,
                centerMode: true,
                arrows: false,
                dots: false,
                centerPadding: '20px'
            });
        }, 5000)


        $('.card-reviews-el').setMaxHeights();
        $('.news-element .text').setMaxHeights();
    }

    (function () {
        var slider = $('.card-gallery-slider');

        slider.each(function (i) {

            $(this).addClass('card-gallery-slider-' + i).slick({
                asNavFor: '.card-gallery-slider-pager-' + i,
                slidesToShow: 1,
                slidesToScroll: 1,
                infinite: true,
                responsive: [

                    {
                        breakpoint: 768,
                        settings: {
                            dots: true,
                            asNavFor: null,
                            slidesToShow: 1,
                            slidesToScroll: 1,
                            infinite: true,
                            arrows: true

                        }
                    },

                    {
                        breakpoint: 481,
                        settings: {
                            dots: true,
                            asNavFor: null,
                            slidesToShow: 1,
                            slidesToScroll: 1,
                            infinite: true,
                            arrows: false

                        }
                    }
                ]

            });

            if ($(window).width() > 767) {
                $(this).next('.card-gallery-slider-pager')
                    .addClass('card-gallery-slider-pager-' + i).slick({
                    asNavFor: '.card-gallery-slider-' + i,
                    slidesToShow: 9,
                    slidesToScroll: 1,
                    infinite: true,
                    focusOnSelect: true,
                    responsive: [
                        {
                            breakpoint: 1301,
                            settings: {
                                arrows: false,
                                slidesToShow: 8,
                                variableWidth: true

                            }
                        }
                    ]
                });
            }
        })
    })();

    //слайдер выполненных проектов
    $('.completed-projects-slider').slick({
        slidesToShow: 1,
        slidesToScroll: 1,
        infinite: true,
        arrow: false,
        responsive: [
            {
                breakpoint: 768,
                settings: {
                    arrows: false,
                    slidesToShow: 2,
                    centerMode: true,
                    centerPadding: '30px'
                }
            },

            {
                breakpoint: 561,
                settings: {
                    arrows: false,
                    slidesToShow: 1,
                    centerMode: true,
                    centerPadding: '30px'
                }
            }
        ]
    });

    //кастомное управление для completed-projects-slider-wrap
    $('.completed-projects-slider-wrap .customNextBtn').on('click', function () {
        $('.completed-projects-slider').slick('slickNext');
    });
    $('.completed-projects-slider-wrap .customPrevBtn').on('click', function () {
        $('.completed-projects-slider').slick('slickPrev');
    });

    //пэйджер страницы проектов
    (function () {
        var slider = $('.projects-card-slider');

        slider.each(function (i) {

            $(this).addClass('projects-card-slider-' + i).slick({
                slidesToShow: 1,
                slidesToScroll: 1,
                infinite: true,
                asNavFor: '.projects-card-slider-pager-' + i,
                prevArrow: '<div class="customPrevBtn"><img src="assets/templates/market/img/left-progect.svg" alt=""></div>',
                nextArrow: '<div class="customNextBtn"><img src="assets/templates/market/img/right-progect.svg" alt=""></div>',
            });

            $(this).next('.projects-card-slider-pager')
                .addClass('projects-card-slider-pager-' + i).slick({
                slidesToShow: 5,
                slidesToScroll: 1,
                focusOnSelect: true,
                asNavFor: '.projects-card-slider-' + i,
                arrows: false,
                responsive: [
                    {
                        breakpoint: 420,
                        settings: {
                            slidesToShow: 3
                        }
                    },
                    {
                        breakpoint: 580,
                        settings: {
                            slidesToShow: 4
                        }
                    },

                    {
                        breakpoint: 768,
                        settings: {
                            // slidesToShow: 1,
                            // centerMode: true,
                            // arrows: false,
                            // centerPadding: '30px'
                        }
                    }
                ]
            });
        })
    })();

    //слайдер услуг
    $('.card-services-slider').slick({
        slidesToShow: 2,
        slidesToScroll: 1,
        arrow: false,
        responsive: [
            {
                breakpoint: 1025,
                settings: {
                    slidesToShow: 2
                }
            },

            {
                breakpoint: 768,
                settings: {
                    slidesToShow: 1,
                    centerMode: true,
                    arrows: false,
                    centerPadding: '30px'
                }
            }
        ]
    });
    $('.card-services-slider-wrap .customNextBtn').on('click', function () {
        $('.card-services-slider').slick('slickNext');
    });
    $('.card-services-slider-wrap .customPrevBtn').on('click', function () {
        $('.card-services-slider').slick('slickPrev');
    });

    //слайдер услуг
    $('.recomended-slider').slick({
        slidesToShow: 2,
        slidesToScroll: 1,
        arrows: false,
        responsive: [
            {
                breakpoint: 768,
                settings: {
                    slidesToShow: 2,
                    centerMode: true,
                    arrows: false,
                    centerPadding: '30px'
                }
            },
            {
                breakpoint: 561,
                settings: {
                    slidesToShow: 1,
                    centerMode: true,
                    arrows: false,
                    centerPadding: '30px'
                }
            }
        ]
    });
    $('.recomended-slider-wrap .customNextBtn').on('click', function () {
        $('.recomended-slider').slick('slickNext');
    });
    $('.recomended-slider-wrap .customPrevBtn').on('click', function () {
        $('.recomended-slider').slick('slickPrev');
    });


    //слайдер новостей
    $('.news-element-slider').slick({
        slidesToShow: 3,
        slidesToScroll: 1,
        arrows: false,
        responsive: [
            {
                breakpoint: 1042,
                settings: {
                    slidesToShow: 2
                }
            },

            {
                breakpoint: 768,
                settings: {
                    slidesToShow: 2,
                    centerMode: true,
                    arrows: false,
                    centerPadding: '30px'
                }
            },

            {
                breakpoint: 561,
                settings: {
                    slidesToShow: 1,
                    centerMode: true,
                    arrows: false,
                    centerPadding: '30px'
                }
            }
        ]
    });
    $('.news-date.news-slider-wrap .customNextBtn').on('click', function () {
        $('.news-date .news-element-slider').slick('slickNext');
    });
    $('.news-date.news-slider-wrap .customPrevBtn').on('click', function () {
        $('.news-date .news-element-slider').slick('slickPrev');
    });

    //слайдер новостей без даты
    $('.no-date.news-element-slider').slick({
        slidesToShow: 3,
        slidesToScroll: 1,
        arrows: false,
        responsive: [
            {
                breakpoint: 1042,
                settings: {
                    slidesToShow: 2
                }
            },

            {
                breakpoint: 768,
                settings: {
                    slidesToShow: 2,
                    centerMode: true,
                    arrows: false,
                    centerPadding: '30px'
                }
            },

            {
                breakpoint: 561,
                settings: {
                    slidesToShow: 1,
                    centerMode: true,
                    arrows: false,
                    centerPadding: '30px'
                }
            }
        ]
    });
    $('.no-date.news-slider-wrap .customNextBtn').on('click', function () {
        $('.no-date .news-element-slider').slick('slickNext');
    });
    $('.no-date.news-slider-wrap .customPrevBtn').on('click', function () {
        $('.no-date .news-element-slider').slick('slickPrev');
    });


    //слайдер сертификатов
    $('.sertificates-slider').slick({
        slidesToShow: 4,
        slidesToScroll: 1,
        arrows: false,
        responsive: [
            {
                breakpoint: 768,
                settings: {
                    slidesToShow: 4,
                    centerMode: true,
                    arrows: false,
                    centerPadding: '30px'
                }
            },

            {
                breakpoint: 561,
                settings: {
                    slidesToShow: 3,
                    centerMode: true,
                    arrows: false,
                    centerPadding: '30px'
                }
            },

            {
                breakpoint: 360,
                settings: {
                    slidesToShow: 1,
                    centerMode: true,
                    arrows: false,
                    centerPadding: '30px'
                }
            }
        ]
    });
    $('.sertificates-slider-wrap .customNextBtn').on('click', function () {
        $('.sertificates-slider').slick('slickNext');
    });
    $('.sertificates-slider-wrap .customPrevBtn').on('click', function () {
        $('.sertificates-slider').slick('slickPrev');
    });

    //слайдер сертификатов планшет
    if ($(window).width() < 768) {
        $('.sertificates').slick({
            slidesToShow: 4,
            slideToScroll: 1,
            centerMode: true,
            centerPadding: '30px',
            arrows: false,
            responsive: [
                {
                    breakpoint: 561,
                    settings: {
                        slidesToShow: 3,
                        slidesToScroll: 1,
                        centerMode: true,
                        arrows: false,
                        centerPadding: '30px'
                    }
                },

                {
                    breakpoint: 360,
                    settings: {
                        slidesToShow: 1,
                        centerMode: true,
                        arrows: false,
                        centerPadding: '30px'
                    }
                }
            ]
        });
    }

    //слайдер сотрудников
    if ($(window).width() < 1025) {
        $('.our-specialists-wrap').slick({
            slidesToShow: 2,
            slidesToScroll: 1,
            prevArrow: '<div class="customPrevBtn"><img src="assets/templates/market/img/sprite/arr-slider-prev.png" alt=""></div>',
            nextArrow: '<div class="customNextBtn"><img src="assets/templates/market/img/sprite/arr-slider-next.png" alt=""></div>',
            centerMode: true,
            responsive: [
                {
                    breakpoint: 768,
                    settings: {
                        slidesToShow: 2,
                        slidesToScroll: 1,
                        centerMode: true,
                        arrows: false
                    }
                },

                {
                    breakpoint: 581,
                    settings: {
                        slidesToShow: 1,
                        slidesToScroll: 1,
                        centerMode: true,
                        arrows: false
                    }
                }
            ]
        });
    }

    $(
        ' .fancyshow'
        // ' div.card-gallery-slider__el a'
    ).fancybox({
        closeBtn: true,
        padding: 0,
        helpers: {
            overlay: {
                css: {
                    'background': 'rgba(51,51,51,0.7)'
                }
            }
        }
    });

    //подчеркнутый текст из админки
    function underlineTxt() {
        var arrSpan = $('span[style]');
        arrSpan.each(function () {
            var attr = $(this).attr('style');

            if (~attr.indexOf('text-decoration: underline;')) {
                $(this).addClass('underline-txt');
            }
        });

        var arrTable = $('table[border]');
        arrTable.each(function () {
            $(this).removeAttr('border').addClass('table-border');
        });
    }

    underlineTxt();

    //удаление стрелки для выпадающего списка в телефонах header
    (function () {
        var phone = document.querySelectorAll('.header-phone-wrap');

        if (phone.length) {
            [].slice.call(phone).forEach(function (item) {
                if (!item.querySelector('.header-phones')) {
                    item.classList.add('single-phone')
                }
            })
        }

    })();

    //буквица
    var paragraphCap = $('.cap-fill');

    paragraphCap.each(function () {
        var letter = $(this).text().charAt(0);

        if (letter === 'Q' || letter === 'Д'
            || letter === 'Ц' || letter === 'Щ') {

            $(this).addClass('letter-padding-bottom');

        } else if (letter === 'Ё' || letter === 'Й') {

            $(this).addClass('letter-padding-top');

        } else if (letter === 'J') {
            $(this).addClass('letter-padding-bottom letter-padding-left');
        }
    });


    //перемещение блоков в карточке товара
    if ($(window).width() < 1025) {
        //сокращене слова "артикул" в карточке товара
        var artNo = $('.main-first-info__articul span').text();

        $('.main-first-info__articul').html('Арт.: ' + '<span>' + artNo + '</span>');


        //перемещение блока экономии в карточке товара
        var $mobileCardPrice = $('<div class="mobile-price-wrap"></div>'),
            $cardPrice = $('.main-first-info-presence-wrap-inner .price'),
            $economy = $('.card-buy-economy');

        $('.main-first-info').after($mobileCardPrice.append($cardPrice, $economy));


        //перемещение блоков акции и нашли дешевле
        var $actionMobie = $('<div class="action-mobile-wrap"></div>'),
            $timer = $('.card-buy__promo'),
            $lowCost = $('.card-buy__low-cost');

        $('.main-first-info-presence-wrap-inner .buy-block').before($actionMobie.append($timer, $lowCost));

    }


    //расписание дилеры, разбивка строк по разделителю
    function dividerString(el) {
        el.each(function () {
            var self = $(this),
                newArr = self.text().trim().split(';');

            self.empty();

            newArr.forEach(function (item) {
                var newEl = '<div><div class="contact-dealers-region__schedule-item">' +
                    item + '</div></div>';
                self.append(newEl);
            });

            self.css({'opacity': '1'});
        });
    }

    dividerString($('.contact-dealers-region__schedule'));


    //центрирование по высоте кнопок слайдера карточки товара
    var cardSliderTop = $('div.main-first-image-slider-el a').height() / 2 + 'px';
    $('div.main-first-image-slider .slick-arrow').css({'top': cardSliderTop});

    //какрточка товара, сворачивание таблицы
    var tableMoreTxt = $('.table-more').text();
    $('.card-description').on('click', '.table-more', function () {
        $(this).prev('.card-description__table-wrap').toggleClass('hidden');
        $(this).toggleClass('active');

        if ($(this).hasClass('active')) {
            $(this).text('Свернуть')
                .prev('.card-description__table-wrap')
                .css({'max-height': ''});
        } else {
            $(this).text(tableMoreTxt);
            descriptionTableMaxHeight();
        }
    });

    //max-height таблицы характеристик
    function descriptionTableMaxHeight() {
        if ($('.card-description__table').length) {
            var maxHeight = 0;

            $('.card-description__table tr').each(function (i) {

                if (i < 9) {
                    maxHeight += $(this).height();
                }

            });

            $('.card-description__table-wrap.hidden').css({'max-height': maxHeight + 1 + 'px'});
        }
    }

    descriptionTableMaxHeight();

    //карточка товара
    function cardMore() {
        //карточка товара - описание - кнопка подробнее
        var moreBtnTxt = $('.card-description-more__btn').text();
        $('.card-description-more').on('click', '.card-description-more__btn', function () {

            $(this).prev('.card-description-more__txt').toggleClass('hidden');

            $(this).toggleClass('active');

            if ($(this).hasClass('active')) {
                $(this).text('Свернуть');
            } else {
                $(this).text(moreBtnTxt);
            }
        });

        //карточка товара - краткое описание - клик по кнопке "подробнее"
        $('body').on('click', 'span.presence-description-more', function () {

            var scrollToDescription = $('.card-description-more').offset().top -
                $('.header-scroll').height();

            $('.card-description-more__txt').removeClass('hidden');
            $('.card-description-more__btn').addClass('active').text('Свернуть');

            $('body, html').animate({scrollTop: scrollToDescription}, 500);

        });
    }

    cardMore();

    //скролл кнопки все характеристики для страницы проектов
    $('body').on('click', '.projects-card-description-more', function () {
        var scrollToDescription = $('.card-description.progect-page').offset().top -
            $('.header-scroll').height();

        $('body, html').animate({scrollTop: scrollToDescription}, 500);

    });

    //кнопка открытия карты для мобилок
    var mapButton = $('.map-button-mobile').html();
    var mapButtonActive =
        '<img src="assets/templates/market/img/update/map-loc-cl__m.svg" alt="">'
        + 'ЗАКРЫТЬ КАРТУ';

    $('.main-map-wrapper').on('click', '.map-button-mobile', function () {

        $(this).prev().find('.content').fadeToggle();
        $(this).toggleClass('active');

        if ($(this).hasClass('active')) {
            $(this).html(mapButtonActive);
        } else {
            $(this).html(mapButton);
        }
    });


    //печать документа
    $('.main-first-info__print').on('click', function () {
        window.print();
    });

    //custom scroll table
    $("table[data-table='scroll']").wrap('<div class="table-scroll"></div>');

    $(".table-scroll, .cost-table-scroll").mCustomScrollbar({
        axis: "x",
        scrollInertia: 300,
        scrollbarPosition: "outside",
        mouseWheel: {preventDefault: true}
    });

    //кнопка наверх
    $(window).scroll(function () {
        if ($(this).scrollTop() > 700) {
            $('#toup').show();
        } else {
            $('#toup').hide();
        }
    });

    $(document).on('click', '#toup', function () {
        $('html, body').animate({scrollTop: 0}, 500);
    });

    //блок вы смотрели, белый фон если элемент не пустой
    $('.watched-el').each(function () {
        var $self = $(this);

        if ($self.find('img').length) {
            $self.css({'background-color': '#fff'});
        }
    });

    //удаление пустых параграфов в услугах
    $('.completed-projects-slider__info').each(function () {
        var strInfo = $(this).find('p.description').text();

        if (!strInfo.length) {
            $(this).find('p.description').hide();
        }
    })

});

//появление изображений на слайдерах после загрузки
jQuery(window).bind('load', function () {
    var hiddenBeforLoad = '.slider-main li, ' +
        '.certificates-element, ' +
        '.company-element, ' +
        '.main-first-image-slider-el, ' +
        '.projects-card-slider-pager-el, ' +
        '.projects-card-slider-el, ' +
        '.card-gallery-slider__el, ' +
        '.card-gallery-slider-pager__el, ' +
        '.completed-project-wrapper, ' +
        '.slider-sale-wrap, ' +
        '.custom-select, ' +
        '.filter-select, ' +
        '.desktop-menu, ' +
        '.slider-sale ';
    $(hiddenBeforLoad).css({'opacity': '1'})
});

//определение максимальной высоты
$.fn.setMaxHeights = function () {
    var maxHeight = this.map(function (i, e) {
        return $(e).height();
    }).get();

    return this.height(Math.max.apply(this, maxHeight));
};

//Промотать до верха по клику на логотип скролменю на главной
$(document).on('click', '.logo_scroll_toup', function () {
    $('html, body').animate({scrollTop: 0}, 500);
});

//разметка корзины товаров для мобилки
function basketMobileMarkup() {
    var $row = $('.products_list tr:not([class])'),
        $wrap = $('<div class="basket-wrap-inner"></div>');

    if ($(window).width() < 769 && $('.products_list').length && !$('.basket-wrap-inner').find('.image').length) {

        $row.wrap($wrap);

        $row.each(function () {
            $(this).parent().prepend($(this).find('.image'));
        });

        $('.products_list').css('opacity', '1');

    } else if ($(window).width() > 768 && $('.products_list').length && $('.basket-wrap-inner').find('.image').length) {

        $row.each(function () {
            $(this).prepend($(this).prev('.image')).unwrap();
        })
    }
}

//проверка наличия корзины
function hasBasket() {
    if ($('.header #shopCart').length || $('#shopCart.side-basket').length) {

        $('.header').addClass('has-basket');
        return true;

    } else {

        $('.header').addClass('no-basket');
        return false;

    }
}

//мобильная корзина в скролл-меню
function onMobileBasket() {
    if (hasBasket() && $(window).width() < 1025) {
        $('.search-wrap').show();
    }
}

//вставка иконки svg после надписи "ещё" во flex-menu
function flexMenuArrow() {
    if (calcWindowWidth() > 1024 && $('#menu-flex').length) {


        var timerID = setInterval(function () {

            var $linkTitle = $('#menu-flex .flexMenu-viewMore').children('a'),
                linkTitleText = $linkTitle.text().trim().toLowerCase();

            if (linkTitleText === 'ещё' && !$('#flexMenuArrowDown').length) {
                var options = {
                        type: "image/svg+xml",
                        data: "assets/templates/market/img/update/flexMenu-arrow.svg",
                        id: 'flexMenuArrowDown'
                    },

                    objectEl = new NewElCreate('object', options);

                $linkTitle.append(objectEl);


                flexMenuArrowHover();

                clearInterval(timerID);

            } else if (calcWindowWidth() < 1025) {

                clearInterval(timerID);

            }
        }, 300);
    }
}


function flexMenuArrowHover() {
    var timerId = setInterval(function () {
        if ($('#flexMenuArrowDown').length) {
            var object = document.getElementById("flexMenuArrowDown");
            content = object.contentDocument,
                idel = content.getElementById('id__flexMenuArrow'),
                currentColor = $('#menu-flex .flexMenu-viewMore > a').css('color');

            if (idel) {
                idel.setAttribute('fill', currentColor);

                $('#menu-flex').on('mouseenter', '.flexMenu-viewMore', function () {
                    idel.setAttribute('fill', '#ffffff');
                });

                $('#menu-flex').on('mouseleave', '.flexMenu-viewMore', function () {
                    idel.setAttribute('fill', currentColor);
                });

                if (content) {
                    clearInterval(timerId);
                }
            }
        }

    }, 100);
}

/**
 *
 * @param tagName - string
 * @param attrOptions object for attributes
 * @param innerHtml string innerHTML
 * @param appendChildArr array appendChild elements
 * @returns {DOM Element}
 * @constructor
 */
function NewElCreate(tagName, attrOptions, innerHtml, appendChildArr) {
    var el = document.createElement(tagName),
        i;

    if (attrOptions) {
        for (key in attrOptions) {
            el.setAttribute(key, attrOptions[key]);
        }
    }

    if (innerHtml) {
        el.innerHTML = innerHtml;
    }

    if (appendChildArr && appendChildArr.length) {
        for (i = 0; i < appendChildArr.length; i++) {
            el.appendChild(appendChildArr[i]);
        }
    }

    return el;
}

//показываем содержимое svg image
function svgInner() {
    jQuery('img.svg').each(function (i, item) {
        var $img = jQuery(this);
        var imgID = $img.attr('id');
        var imgClass = $img.attr('class');
        var imgURL = $img.attr('src');

        jQuery.get(imgURL, function (data) {
            // Get the SVG tag, ignore the rest
            var $svg = jQuery(data).find('svg');

            // Add replaced image's ID to the new SVG
            if (typeof imgID !== 'undefined') {
                $svg = $svg.attr('id', imgID);
            }
            // Add replaced image's classes to the new SVG
            if (typeof imgClass !== 'undefined') {
                $svg = $svg.attr('class', imgClass + ' replaced-svg');
            }

            // Remove any invalid XML tags as per http://validator.w3.org
            $svg = $svg.removeAttr('xmlns:a');

            // Replace image with new SVG
            $img.replaceWith($svg);

        }, 'xml');

    });
}

//определение расширения файла
function fileType(el, target) {
    if (el.length) {

        el.each(function () {
            var text = $(this).attr('href'),
                arr = text.split('.'),
                extention = arr[arr.length - 1];

            $(this).parent().parent().find(target).append('<div>' + extention + '</div>')
        });
    }
}

//определение primary-color
function primaryColor() {
    return activeColor = $('.main-menu-left ul.dropdown li.active > .wrap > a').css('color');
}

//стили фильтра при ресайзе
function filterResize() {
    if ($(window).width() < 768 && fromDesktop) {
        fromDesktop = 0;
        $('.filter-section-wrapper').slideUp(0);
        $('.filter').css('opacity', '1');

    } else if ($(window).width() >= 768) {
        setTimeout(function () {
            fromDesktop = 1;
        }, 1000);

        $('.filter-section-wrapper').slideDown(0);
        $('.filter').removeClass('show');
    }
}

//сворачивание блоков фильтра
function asideFilterSlideToggle() {
    if ($(window).width() < 768) {
        $('.filter-arrow')
            .closest('.filter-section')
            .addClass('active')
            .find('.filter-section__item')
            .slideUp(0);

        $('.filter-section-wrapper').slideUp(0);
        $('.filter').css('opacity', '1');
    }

    $(document).on('click', '.filter-arrow', function () {

        if ($(window).width() < 768 && !$(this).closest('.filter-section').find('.filter-section__more').length) {
            $(this)
                .closest('.filter-section')
                .toggleClass('active')
                .find('.filter-section__item')
                .stop()
                .slideToggle(0);

            setTimeout(function () {
                filterSpoilar();
            }, 0)

        } else {
            $(this)
                .closest('.filter-section')
                .toggleClass('active')
                .find('.filter-section__item')
                .stop()
                .slideToggle();
        }
    })
}

//кнопка сворачивания для мобильного фильтра
function filterArrowMobile() {
    var $target = $('.primary-block .filter h4'),
        $span = $('<span class="filter-arrow-mobile uk-icon-angle-down"></span>');
    if ($(window).width() < 768 && !$('.filter-arrow-mobile').length) {
        $target.append($span);
    } else if ($(window).width() >= 768 && $span.length) {
        $span.remove();
    }
}

$(document).on('click', '.filter-form-title', function () {
    $('.filter-section-wrapper').slideToggle();
    $('.filter').toggleClass('show');
});

/**
 * inputs have to parent element label
 */
function checkedInput() {
    var reset = document.querySelectorAll('input[type="reset"]');

    inspectionInputs(document.querySelectorAll('input[type="checkbox"], input[type="radio"]'));

    document.addEventListener('change', function (e) {
        if (e.target.closest('.checkbox') && !e.target.hasAttribute('disabled')) {
            e.target.closest('.checkbox').classList.toggle('active');
        }

        if (e.target.closest('.radio')) {
            inspectionInputs(document.querySelectorAll('input[type="radio"]'));
        }
    });

    document.addEventListener('click', function (e) {
        for (var i = 0; i < reset.length; i++) {
            if (e.target === reset[i]) {
                setTimeout(function () {
                    inspectionInputs(document.querySelectorAll('input[type="checkbox"], input[type="radio"]'));
                }, 0);

                $('select', e.target.closest('form')).select2("val", "");

                if ($('#filter-range', e.target.closest('form')).get(0)) {

                    //сброс ползунка
                    setTimeout(function () {
                        document.getElementById('filter-range').noUiSlider.reset();
                    }, 0);
                } else {
                    //сброс ползунка
                    setTimeout(function () {
                        document.getElementById('filter-range-content').noUiSlider.reset();
                    }, 0);
                }

            }
        }
    })
}

function inspectionInputs(arr) {
    var span;

    for (var i = 0; i < arr.length; i++) {
        if (arr[i].checked) {
            arr[i].parentElement.classList.add('active');

        } else {
            arr[i].parentElement.classList.remove('active');
        }

        if (arr[i].hasAttribute('disabled')) {
            arr[i].parentElement.classList.add('disabled');
        }

        if (
            arr[i].parentElement.classList.contains('select-color')
            && !arr[i].nextElementSibling
        ) {
            span = document.createElement('span');
            span.style.background = arr[i].value;

            arr[i].parentElement.appendChild(span);
        }

        if (
            arr[i].checked
            && arr[i].parentElement.classList.contains('select-color')
        ) {
            arr[i].parentElement.style.borderColor = arr[i].value;
        } else if (
            !arr[i].checked
            && arr[i].parentElement.classList.contains('select-color')
        ) {
            arr[i].parentElement.style.borderColor = '';
        }
    }
}

//переинициализация кастомного селекта (для аяксов)
function customSelectReinit() {
    var $selectInit = $('select').select2({
        minimumResultsForSearch: Infinity,
        width: "100%",
        theme: 'classic'
    }).css('opacity', '1');

    $(document).on("select2-open", "select", function () {
        $('.select2-results').jScrollPane({
            'mouseWheelSpeed': 40
        });
        centeredArrowMultiselect();
    });

    $(document).on("select2-close", "select", function () {
        if ($('.select2-results').data('jsp')) {
            $('.select2-results').data('jsp').destroy();
            centeredArrowMultiselect();
        }

        $('select').select2({
            minimumResultsForSearch: Infinity,
            width: "100%",
            theme: 'classic'
        });
    });

    $(document).on('click', function (e) {
        if (e.target.closest('.modal') && $('.select2-drop-active').length) {
            $selectInit.each(function () {
                $(this).select2("close");
            })
        }
    });

    $(document).on('change.select2', function () {
        centeredArrowMultiselect();
    });

    centeredArrowMultiselect(1000);

    $('.filter-select').css('opacity', '1');
}


function customSelect() {

    var $selectInit = $('select').select2({
        minimumResultsForSearch: Infinity,
        width: "100%",
        theme: 'classic'
    }).css('opacity', '1');

    $('#js-select-region').select2({
        placeholder: "Выберите область",
        minimumResultsForSearch: Infinity,
        allowClear: true

    });

    $('#js-select-city').select2({
        placeholder: "Выберите город",
        minimumResultsForSearch: Infinity,
        allowClear: true
    });


    $(document).on("select2-open", "select", function () {
        $('.select2-results').jScrollPane({
            'mouseWheelSpeed': 40
        });
        centeredArrowMultiselect();
    });

    $(document).on("select2-close", "select", function () {
        $('.select2-results').data('jsp').destroy();
        $('select').select2({
            minimumResultsForSearch: Infinity,
            width: "100%",
            theme: 'classic'
        });
        centeredArrowMultiselect();
    });

    $(document).on('click', function (e) {
        if (e.target.closest('.modal') && $('.select2-drop-active').length) {
            $selectInit.each(function () {
                $(this).select2("close");
            })
        }
    });

    $(document).on('change.select2', function () {
        centeredArrowMultiselect();
    });

    centeredArrowMultiselect(1000);

    // var arrrr = $('.select2-container-multi').next('select').attr('placeholder');
    // console.log(arrrr)
}

//выравнивание стрелки мультиселекта
function centeredArrowMultiselect(time) {
    if (time) {
        setTimeout(function () {
            addClassMultiselect();
        }, time);
    } else {
        addClassMultiselect();
    }


    function addClassMultiselect() {
        var arrrr = $('.select2-container-multi'),
            placeholder;

        arrrr.each(function () {
            var self = $(this);

            //копируем плейсхолдер для мультиселекта
            placeholder = self.next('select').attr('placeholder');

            self.find('.select2-search-field input').attr('placeholder', placeholder);

            if (self.find('.select2-search-choice').length) {
                self.addClass('multi-no-empty');
            } else {
                self.removeClass('multi-no-empty');
            }
        })
    }
}


//спойлер для фильтра
function filterSpoilar() {
    var spoilerArr = document.querySelectorAll('.js-spoiler'),
        fieldArr, // массив полей
        marginHeight, // margin bottom
        fullHeight, //полная высота блока
        height; // вычисленная сумма высот блоков с отступами

    if (spoilerArr.length) {
        for (var i = 0; i < spoilerArr.length; i++) {
            fieldArr = spoilerArr[i].querySelectorAll('.label-field');
            fullHeight = getComputedStyle(spoilerArr[i]).height;
            height = 0;

            //если количество label-field > 5 для бокового фильтра
            if (fieldArr.length > 5 && spoilerArr[i].closest('.left-bar')) {
                for (var k = 0; k < 5; k++) {
                    marginHeight = parseInt(getComputedStyle(fieldArr[k]).marginBottom);
                    height += fieldArr[k].offsetHeight + marginHeight;
                }

                spoilarMoreBtn(spoilerArr[i], fullHeight, height);
            }

            //если высота больше 75px для фильтра контента
            if (spoilerArr[i].offsetHeight > 75 && spoilerArr[i].closest('.primary-block') && $(window).width() > 767) {
                spoilarMoreBtn(spoilerArr[i], fullHeight, 75);
            } else if (spoilerArr[i].offsetHeight > 120 && spoilerArr[i].closest('.primary-block') && $(window).width() < 768) {
                spoilarMoreBtn(spoilerArr[i], fullHeight, 120);
            }
        }
    }
}

//кнопки "показать еще" / "скрыть"
function spoilarMoreBtn(el, fullHeight, hiddenHeight) {

    var txtBtnHidden = 'Показать еще',
        txtBtnShow = 'Скрыть',
        btn = document.createElement('div'),
        html = el.innerHTML,
        wrapperHTML = '<div class="filter-section__wrap">' + html + '</div>',
        wrapperEl;

    if (!$(el).find('.filter-section__more').length) {
        el.innerHTML = wrapperHTML;
        btn.textContent = txtBtnHidden;
        btn.classList.add('filter-section__more');
        html = el.innerHTML;

        wrapperEl = el.firstElementChild;
        wrapperEl.style.height = hiddenHeight - 3 + 'px';
        wrapperEl.classList.add('hidden');

        el.appendChild(btn);

        btn.addEventListener('click', function () {
            this.classList.toggle('show');

            if (this.classList.contains('show')) {
                this.textContent = txtBtnShow;
                wrapperEl.style.height = parseInt(fullHeight) + 5 + 'px';
            } else {
                this.textContent = txtBtnHidden;
                wrapperEl.style.height = hiddenHeight - 3 + 'px';
            }
        })
    }
}

//текущий активный пункт меню
function currentActiveTopNav() {
    var currentLocation = location.pathname.slice(1),
        arrLinksTopNav = document.querySelectorAll('.top-menu a');

    for (var i = 0; i < arrLinksTopNav.length; i++) {
        if (arrLinksTopNav[i].getAttribute('href') === currentLocation) {
            arrLinksTopNav[i].parentElement.classList.add('active');
        }
    }
}

//отключение отправки формы по вводу в input:text
function preventEnterSubmit() {
    $(document).on("keydown", "input[type=text]", function (event) {
        if (event.keyCode == 13) {
            event.preventDefault();
            return false;
        }
    });
}

//левая позиция блока счетчика выбранных элементов фильтра
function filterSelectPosition() {
    if ($('.left-bar').length) {
        var aside = document.querySelector('.left-bar'),
            target = document.querySelectorAll('.filter-selected'),
            leftPosition = aside.offsetLeft + aside.offsetWidth + 'px';

        for (var i = 0; i < target.length; i++) {
            target[i].style.left = leftPosition;
            target[i].style.opacity = 1;
        }
    }
}


//скрипт работы ползунков
//https://refreshless.com/nouislider/
/**
 * @param sliderId - id ползунка
 * @param min - минимальное значение
 * @param max - максимальное значение
 * @param step - шаг слайдера
 * @param initPositionArr - массив начального значения ползунков
 *
 * getData - получение значений
 * setData - установка значений, array
 */
function noUiSliderInit(sliderId, min, max, step, initPositionArr) {
    var keypressSlider = document.getElementById(sliderId);
    var input0 = document.getElementById(sliderId + '__0');
    var input1 = document.getElementById(sliderId + '__1');
    var inputs = [input0, input1];


    noUiSlider.create(keypressSlider, {
        start: initPositionArr,
        connect: true,
        range: {
            //второе число в массиве - это шаг
            'min': [min, step],
            'max': [max, step]
        }
    });

    keypressSlider.noUiSlider.on('update', function (values, handle) {
        //если нужны копейки, убрать parseInt
        inputs[handle].value = parseInt(values[handle]);
    });

    keydownEventsNoUiSlider(inputs);

    //ввод данных с клавиатуры
    function setSliderHandle(i, value) {
        var r = [null, null];
        r[i] = value;
        keypressSlider.noUiSlider.set(r);
    }

    // Listen to keydown events on the input field.
    function keydownEventsNoUiSlider(inputs) {
        inputs.forEach(function (input, handle) {

            input.addEventListener('change', function () {
                setSliderHandle(handle, this.value);
            });

            input.addEventListener('keydown', function (e) {

                var values = keypressSlider.noUiSlider.get();
                var value = Number(values[handle]);

                // [[handle0_down, handle0_up], [handle1_down, handle1_up]]
                var steps = keypressSlider.noUiSlider.steps();

                // [down, up]
                var step = steps[handle];

                var position;

                // 13 is enter,
                // 38 is key up,
                // 40 is key down.
                switch (e.which) {

                    case 13:
                        setSliderHandle(handle, this.value);
                        break;

                    case 38:

                        // Get step to go increase slider value (up)
                        position = step[1];

                        // false = no step is set
                        if (position === false) {
                            position = 1;
                        }

                        // null = edge of slider
                        if (position !== null) {
                            setSliderHandle(handle, value + position);
                        }

                        break;

                    case 40:

                        position = step[0];

                        if (position === false) {
                            position = 1;
                        }

                        if (position !== null) {
                            setSliderHandle(handle, value - position);
                        }

                        break;
                }
            });
        });
    }

    this.getData = function () {
        return keypressSlider.noUiSlider.get()
    };

    this.setData = function (data) {
        keypressSlider.noUiSlider.set(data);
    };
}


//спойлер отзывов для главной страницы
(function () {
    var showedTxt = 'Скрыть',
        hiddenTxt = 'Читать подробнее...';

    $('.card-reviews-el__more').on('click', function (e) {
        e.preventDefault();
        if ($(this).hasClass('active')) {
            $(this).removeClass('active').find('span').text(hiddenTxt);
        } else {
            $(this).addClass('active').find('span').text(showedTxt);
        }

        $(this).closest('.card-reviews-el-inner').toggleClass('show');
    });

})();

function customPlaceholderInit() {
    var els = $('.custom-placeholder-wrap');
    els.each(function () {
        $(this).on('click', clickHandler);
        $(this).find('input, textarea').on('focus', focusHandler);
        $(this).find('a[data-event]').on('click', clickControl);
    });

    textareaDetect();

    function textareaDetect() {
        els.each(function () {
            var textarea = $(this).find('textarea');
            if (textarea.length) {
                $(this).find('.custom-placeholder').addClass('textarea-custom-placeholder');
            }
        });
    }

    function clickControl(e) {
        var el = findParent($(e.target), 'custom-placeholder-wrap');
        el.addClass('custom-placeholder-active');
    }

    function clickHandler(e) {
        var el = findParent($(e.target), 'custom-placeholder-wrap'),
            input = el.find('input, textarea');
        el.addClass('custom-placeholder-active');
        input
            .focus()
            .focusout(function () {
                var self = $(this),
                    val = self.val().trim();

                if (!val && !$(e.target).hasClass('datepicker-form')) {

                    el.removeClass('custom-placeholder-active');

                } else if (!val && $(e.target).hasClass('datepicker-form')) {

                    var that = $(this);
                    $(document).on('click', function () {

                        setTimeout(function () {
                            if (!that.val().trim() && !$('.datepicker-container').is(':visible')) {
                                el.removeClass('custom-placeholder-active');
                            }
                        }, 200);
                    })
                }
            });
    }

    function focusHandler(e) {
        var el = findParent($(e.target), 'custom-placeholder-wrap');
        el.addClass('custom-placeholder-active');

        $(e.target).focusout(function () {
            var val = $(this).val().trim();
            if (!val && !$(e.target).hasClass('datepicker-form')) {
                el.removeClass('custom-placeholder-active');
            } else if (!val && $(e.target).hasClass('datepicker-form')) {

                var that = $(this);
                $(document).on('click', function () {
                    setTimeout(function () {
                        if (!that.val().trim() && !$('.datepicker-container').is(':visible')) {
                            el.removeClass('custom-placeholder-active');
                        }
                    }, 200);
                })
            }
        });
    }
}

function findParent(el, class_) {
    var parent = el.parent();
    if (parent.hasClass(class_)) {
        return parent;
    }
    else {
        return findParent(parent, class_);
    }
}

//ширина экрана
function calcWindowWidth() {
    window.windowWidht = $(window).width();

    return windowWidht;
}

//слайдер на главой
function setHeightMainSliderMobile() {
    if (windowWidht < 481) {
        setTimeout(function () {
            $('.slider-main ul.bx-slider > li').setMaxHeights();
        }, 0)
    }
}

/**
 * jQuery Form Validator
 * ------------------------------------------
 *
 * Russian language package
 *
 * @website http://formvalidator.net/
 */
//валидатор формы попап
function validateForms() {
    var myLanguage = {
        errorTitle: "Ошибка отправки формы!",
        requiredField: "Обязательное поле",
        requiredFields: "Вы задали не все обязательные поля",
        badTime: "Вы задали некорректное время",
        badEmail: "Вы задали некорректный e-mail",
        badTelephone: "Вы задали некорректный номер телефона",
        badSecurityAnswer: "Вы задали некорректный ответ на секретный вопрос",
        badDate: "Вы задали некорректную дату",
        lengthBadStart: "Значение должно быть в диапазоне",
        lengthBadEnd: " символов",
        lengthTooLongStart: "Значение длинее, чем ",
        lengthTooShortStart: "Значение меньше, чем ",
        notConfirmed: "Введённые значения не могут быть подтверждены",
        badDomain: "Некорректное значение домена",
        badUrl: "Некорретный URL",
        badCustomVal: "Введённое значение неверно",
        andSpaces: " и пробелы ",
        badInt: "Значение - не число",
        badSecurityNumber: "Введённый защитный номер - неправильный",
        badUKVatAnswer: "Некорректный UK VAT номер",
        badStrength: "Пароль не достаточно надёжен",
        badNumberOfSelectedOptionsStart: "Вы должны выбрать как минимум ",
        badNumberOfSelectedOptionsEnd: " ответов",
        badAlphaNumeric: "Значение должно содержать только числа и буквы ",
        badAlphaNumericExtra: " и ",
        wrongFileSize: "Загружаемый файл слишком велик (максимальный размер %s)",
        wrongFileType: "Принимаются файлы следующих типов %s",
        groupCheckedRangeStart: "Выберите между ",
        groupCheckedTooFewStart: "Выберите как минимум ",
        groupCheckedTooManyStart: "Выберите максимум из ",
        groupCheckedEnd: " элемент(ов)",
        badCreditCard: "Номер кредитной карты некорректен",
        badCVV: "CVV номер некорректно",
        wrongFileDim: "Неверные размеры графического файла,",
        imageTooTall: "изображение не может быть уже чем",
        imageTooWide: "изображение не может быть шире чем",
        imageTooSmall: "изображение слишком мало",
        min: "минимум",
        max: "максимум",
        imageRatioNotAccepted: "Изображение с таким соотношением сторон не принимается",
        badBrazilTelephoneAnswer: "Введённый номер телефона неправильный",
        badBrazilCEPAnswer: "CEP неправильный",
        badBrazilCPFAnswer: "CPF неправильный"
    };

    $.formUtils.addValidator({
        name: 'datepicker-date-required',
        validatorFunction: function (value, $el, config, language, $form) {
            return parseInt(value, 10) % 2 === 0;
        },
        errorMessage: 'You have to answer an even number',
        errorMessageKey: 'badEvenNumber'
    });

    $.validate({
        modules : 'file,security',
        borderColorOnError: "#F82900",
        language: myLanguage
    });

    // Add custom validation rule

}

/*
 *	Styler number input[type="range"]
 */
(function ($) {
    $.fn.stylerNumber = function () {

        var styler = function () {

            var id;
            var min = false;
            var max = false;
            var step = 1;
            var self = $(this);

            if (self.attr('id')) {
                id = self.attr('id');
            }
            else {
                return;
            }
            if (self.attr('min')) {
                min = self.attr('min');
            }
            if (self.attr('max')) {
                max = self.attr('max');
            }
            if (self.attr('step')) {
                if (getLengthDecimal(self.attr('step')) >= 0 && getLengthDecimal(self.attr('step')) <= 20)
                    step = Number(self.attr('step'));
                else return;
            }

            function getLengthDecimal(number) {
                var number = new String(number);
                var pos = number.indexOf(".");
                if (pos == -1) return 0;
                number = number.substr(pos + 1);
                number = Number(number.length);
                return number;
            }

            $("[data-for='" + id + "']").on("selectstart", function (even) {
                return false;
            });

            $("[data-for='" + id + "']").on("click", function (event) {
                var e = $(this).attr("data-event");
                var f = $(this).attr("data-for");
                var btnClicked = $(this);
                if (!f || !e) return false;
                if (e == "sub") {
                    var value = Number(self.val());
                    var newvalue = Number((value - step).toFixed(getLengthDecimal(step)));
                    if (!min) {
                        self.val(newvalue);
                        self.change();
                    }
                    else if (newvalue >= min) {
                        self.val(newvalue);

                        if (newvalue == min) {
                            btnClicked.addClass('select_none');
                        }

                        self.change();
                    } else if (newvalue < min) {
                        self.val(min);
                    }

                    if (value <= min) {
                        btnClicked.addClass('select_none');
                    }

                    if (btnClicked.parent().find('a[data-event="add"]').hasClass('select_none')) {
                        btnClicked.parent().find('a[data-event="add"]').removeClass('select_none');
                    }

                } else if (e == "add") {
                    var value = Number(self.val());
                    var newvalue = Number((value + step).toFixed(getLengthDecimal(step)));

                    if (!max) {
                        self.val(newvalue);
                        self.change();
                    }
                    else if (newvalue <= max && newvalue >= min) {
                        self.val(newvalue);

                        if (newvalue == max) {
                            btnClicked.addClass('select_none');
                        }

                        self.change();
                    } else if (newvalue < min) {
                        self.val(min);
                    }

                    if (!value) {
                        btnClicked.next().addClass('select_none');
                    }

                    if (btnClicked.parent().find('a[data-event="sub"]').hasClass('select_none') && value) {
                        btnClicked.parent().find('a[data-event="sub"]').removeClass('select_none');
                    }

                    if (value == max) {
                        btnClicked.addClass('select_none');
                    }
                }
                btnClicked.parent().find('input').focus().blur();
                return false;
            });
        };
        return this.each(styler);
    };
})($);

function addInputTypeFile() {
    var fileBtn = new NewElCreate('span', {class: 'file-btn'}, 'Добавить файл'),
        fileTitle = new NewElCreate('span', {class: 'file-title'}, 'Выберите файл'),
        inputTypeFile = new NewElCreate('input', {class: 'filename', type: 'file'}),
        inputWrapper = new NewElCreate('label', {class: 'label-wrap-file'}, null, [fileBtn, fileTitle, inputTypeFile]),
        closeBtn = new NewElCreate('span', {class: 'file-remove-btn'}, ''),
        labelWrapper = new NewElCreate('div', {class: 'file-wrapper'}, null, [inputWrapper, closeBtn]);

    return labelWrapper;
}

function addFile() {
    $(document).on('click', '.add-file-field', function () {
        var $self = $(this);

        if ($self.closest('.field__wrap').find('.file-wrapper').last().find('.filename').val() !== '') {
            $self.before(addInputTypeFile());
        } else {
            $self.closest('.field__wrap')
                .find('.file-wrapper').last().find('.label-wrap-file')
                .css('animation','blinkBg 0.5s ease');

            setTimeout(function () {
                $self.closest('.field__wrap')
                    .find('.file-wrapper').last().find('.label-wrap-file')
                    .css('animation','');
            }, 500);
        }

    })
}

function tabs() {
    $('.tab').on('click', function () {
        $(this).closest('.tabs-wrap').find('.tab, .panel').removeClass('active');
        $(this).addClass('active').closest('.tabs-wrap')
            .find('div[data-id="' + $(this).attr('data-id') + '"]').addClass('active');
    });
}

//счетчик товаров
function setCounterValue() {
    var counterValue = parseInt($('#cartInner .header-basket__count').text()) || parseInt($('.side-basket__count').text()) || 0;

    $('.header-scroll .header-basket__count').html(counterValue);
}

//растягивание textarea по высоте колонки
function setMaxHeightTextarea() {
    var height = $('.feedback-form-wrap .field-half-wrap:first-of-type').height(),
        $target = $('textarea.js_full-height');

    $target.css({"height": height  + "px", "opacity": "1"});
}

//scroll-menu
function scrollMenu() {
    var showPosition = $('.header').outerHeight() - $('.header-scroll').outerHeight();

    $(window).scroll(function () {
        $('#search-panel-top').removeClass('fix').hide();

        if ($(this).scrollTop() >= showPosition) {
            $('.header-scroll.active').addClass('show');
        }
        else {
            $('.header-scroll.active').removeClass('show');
            $('.basket-under-header').stop().removeClass('active');
        }
    });

    if ($(window).scrollTop() >= showPosition) {
        $('.header-scroll.active').addClass('show');
    } else {
        $('.header-scroll.active').removeClass('show');
        $('.basket-under-header').stop().removeClass('active');
    }
}

//удаление лишних scroll-menu
function delScrollMenu() {
    var scrollMenus = $('.header-scroll');

    scrollMenus.each(function () {
        if (!$(this).hasClass('active')) {
            $(this).remove();
        }
    });
}

//боковая плавающая корзина-----------------------
function sideBasket() {
    //отключение выпадающей корзины в header
    if ($('.side-basket').hasClass('enabled')) {
        $('.basket-under-header').remove();
    }

    if (calcWindowWidth() > 767) {
        $(document).off('click', sideBasketMobileListener);
        $(document).on('click', '.side-basket__label', sideBasketDesktopListener);
    } else {
        $(document).off('click', '.side-basket__label', sideBasketDesktopListener);
        $(document).on('click', '.side-basket__label', sideBasketMobileListener);
    }


    $(document).on('click', function (e) {
        if ($('.side-basket.enabled').hasClass('show')
            && !$(e.target).closest('.side-basket').length
            && !$(e.target).closest('#stuffHelper').length) {

            e.preventDefault();
            $('.side-basket').removeClass('show');
            $('html').removeClass('side-basket-enabled');
            $('#stuffHelper').remove();

            //действия при клике на кнопку "продолжить покупки"
        } else if ($('.side-basket.enabled').hasClass('show')
            && $(e.target).closest('.side-basket__continue').length) {

            e.preventDefault();
            $('.side-basket').removeClass('show');
            $('html').removeClass('side-basket-enabled');
            $('#stuffHelper').remove();
        }
    });
}

function sideBasketDesktopListener() {
    $('.side-basket').toggleClass('show');

    $('html').toggleClass('side-basket-enabled');

    if (!$(this).hasClass('show')) {
        $('#stuffHelper').remove();
    }
}

function sideBasketMobileListener() {
    location.pathname = $(this).data('href');
}

function closeSideBasketOnMobile() {
    if (calcWindowWidth() < 768) {
        $('.side-basket').removeClass('show');
    }
}

//панель кастомных настроек
function customSettingsInit() {
    var $overlay = $('.fixed-overlay'),
        $mainEl = $('.customer-settings'),
        $mainElBtn = $mainEl.find('.customer-settings__btn'),
        $content = $('.customer-settings-content');


    //отключение скрола на неактивных блоках
    $('.customer-settings-content').bind('mousewheel DOMMouseScroll', offScroll);
    $overlay.bind('mousewheel DOMMouseScroll', offScroll);

    function offScroll(e) {
        var e0 = e.originalEvent,
            delta = e0.wheelDelta || -e0.detail;

        this.scrollTop += ( delta < 0 ? 1 : -1 ) * 30;
        e.preventDefault();
    }

    //логика работы попап
    $(document).on('click', function (e) {
        if ($(e.target).closest('.customer-settings__btn').length) {
            $mainEl.toggleClass('active');
            $overlay.fadeToggle();
            $mainElBtn.toggleClass('active');
        }

        if ($(e.target).hasClass('fixed-overlay') && $mainEl.hasClass('active')) {
            $mainEl.removeClass('active');
            $overlay.fadeOut();
            $mainElBtn.removeClass('active');
        }
    });

    $('.customer-settings-content-wrap').jScrollPane({
        'mouseWheelSpeed': 0,
        autoReinitialise: true
    });
}

function colorPickerInit() {

    var colorPicker = $.farbtastic('#picker-window'),
        $picker = $('#picker-window'), //куда вставляется пикер
        $customColor;

    //установка фона кастомных кнопок
    $('.input-color').each(function () {
        var self = $(this),
            color = self.val();

        self.prev().css({'background-color': color});
    });

    if ($picker) {
        $picker.append(
            $('<input>', {
                type: 'text',
                id: 'set-custom-color'
            }).attr("autocomplete", "off"),

            $('<span />', {
                id: 'set-color__ok',
                text: 'Ок'
            }),

            $('<span />', {
                id: 'set-color__cancel',
                text: 'Закрыть'
            })
        );

        $customColor = $("#set-custom-color");
        colorPicker.linkTo(pickerUpdate);
    }

    function pickerUpdate(color) {

        //цвета input в окне выбора
        $customColor.closest('.picker-window-wrap').find('.input-color').val(color);
        $customColor.val(color).css("background-color", color);

        //цвет иконки и фона кнопки
        $customColor.closest('.picker-window-wrap').css({'border-color': color});
        $customColor.closest('.picker-window-wrap').find('.custom-color__vis').css({'background-color': color});

        autoColor();
    }

    //автоподстройка цвета текста и заливки иконки (было 0,5)
    function autoColor() {
        if (colorPicker.hsl[2] > 0.6) {
            $customColor.css("color", "#000000");
            $customColor.closest('.picker-window-wrap').find('.custom-color__vis').css({'fill': "#000000"});
        } else {
            $customColor.css("color", "#ffffff");
            $customColor.closest('.picker-window-wrap').find('.custom-color__vis').css({'fill': "#ffffff"});
        }
    }

    //обработчики
    $(document).on('click', function (e) {
        var valueColor = $(e.target).find('.input-color').val(),
            $currentEl = $(e.target);

        if ($currentEl.hasClass('custom-color') && $currentEl.next('#picker-window').length) {
            //сработал в блоке, где был вставлен
            $picker.toggle();

        } else if ($currentEl.hasClass('custom-color') && !$currentEl.next('#picker-window').length) {
            //переключили на другой блок
            $picker.hide();
            $currentEl.parent().append($picker);
            $picker.show();

            //установка цветов при открытии окна
            colorPicker.setColor(valueColor);
            pickerUpdate(valueColor);
        }

        //закрыть пикер по клику вне его
        if (
            $picker.is(':visible')
            && !$currentEl.closest('.picker-window-wrap').length
        ) {
            $picker.hide();
        }

        setTimeout(function () {
            //если ушли с выбора цвета на предустановленный
            if (
                $currentEl.closest('.select-color').length
                && !$currentEl.closest('.settings-bordered-item').find('.custom-color').hasClass('active')
            ) {
                $currentEl.closest('.settings-bordered-item').find('.picker-window-wrap').css({"border-color": ""});
            }

            //установка цвета активного бордера
            if ($currentEl.hasClass('custom-color') && $currentEl.hasClass('active')) {
                $currentEl.parent().css({'border-color': valueColor});
            }
        }, 0);
    });

    $(document).on("keydown", "#set-custom-color", function (event) {
        var self = $(this);
        setTimeout(function () {
            var value = self.val(),
                isOk = /(^#[0-9A-F]{6}$)|(^#[0-9A-F]{3}$)/i.test(value);

            if (isOk) {
                colorPicker.setColor(value);
                autoColor();
            }
        }, 0)
    });

    $(document).on('click', '#set-color__cancel', function () {
        $picker.hide();
    });

    $(document).on('click', '#set-color__ok', function () {
        console.log($('#set-custom-color').get(0).value, $('#set-custom-color'))
    });
}

/*Кнопка продолжить покупку в плавающей корзине*/
/*$(document).ready(function () {
    $(document).on('click', '.side-basket__continue', function (event) {
        event.preventDefault();
        $('.filter-section-wrapper').slideToggle();
        $('#shopCart').toggleClass('show');
    });
});*/

/*Маска ввода телефона в форме обратной связи*/
$(document).ready(function () {

    var maskList = $.masksSort($.masksLoad("../assets/templates/market/libs/inputmask-multi/data/phone-codes.json"),
        ['#'], /[0-9]|#/, "mask");

    var maskOpts = {
        inputmask: {
            definitions: {
                '#': {
                    validator: "[0-9]",
                    cardinality: 1
                }
            },
            //clearIncomplete: true,
            showMaskOnHover: false,
            autoUnmask: true
        },
        match: /[0-9]/,
        replace: '#',
        list: maskList,
        listKey: "mask",
        onMaskChange: function (maskObj, completed) {
            if (completed) {
                var hint = maskObj.name_ru;
                if (maskObj.desc_ru && maskObj.desc_ru != "") {
                    hint += " (" + maskObj.desc_ru + ")";
                }
                //$(".descr").html(hint);
            } else {
                //$(".descr").html("");
            }
            $(this).attr("placeholder", $(this).inputmask("getemptymask"));
        }
    };
    $('input[name="phone"]').inputmasks(maskOpts);
});