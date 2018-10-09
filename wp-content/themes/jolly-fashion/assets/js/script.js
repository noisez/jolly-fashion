$( document ).ready(function() {

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
});