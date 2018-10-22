$( document ).ready(function() {

    $('#menu-item-124').click (function (e) {
        e.preventDefault();
        $('.product-categories').toggleClass('show-list');
    });

    var user = $('.account__name');
    if(user.html() != '') {
        $('.personal__account > a').attr('data-toggle', '');
    }
    else {
        $('.personal__account > a').attr('data-toggle', 'modal');
        user.html("Вход");
    }
    var count = $('.personal__cart_count');
    if(count.html() == 0 ) {
        $('.icons__box:nth-child(2) > a').attr('data-toggle', '');
        count.hide();
    }
    else {
        $('.icons__box:nth-child(2) > a').attr('data-toggle', 'modal');
        count.show();
    }


    $('.add_to_wishlist').attr('title', 'В избранное');


    $('.main-blog__slider_box').slick({
        prevArrow: $('.slblog_prev'),
        nextArrow: $('.slblog_next')
    });


    $('.banners__slider1').slick({
        prevArrow: $('.sl1_prev'),
        nextArrow: $('.sl1_next')
    });
    $('.banners__slider2').slick({
        prevArrow: $('.sl2_prev'),
        nextArrow: $('.sl2_next')
    });
    $('.banners__slider3').slick({
        prevArrow: $('.sl3_prev'),
        nextArrow: $('.sl3_next')
    });


    $('.price-filter').click(function () {
        $('.widget_price_filter').toggleClass('widget_open');
    });

    $('.personal__search').click(function () {
        $('.nav__search').toggleClass('nav__search_open');
    });
});