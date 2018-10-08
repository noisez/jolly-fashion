$( document ).ready(function() {
    console.log( "readyyyyy!" );
    $('.price-filter').click(function (e) {
        $('.widget_price_filter').toggleClass('widget_open');
    });
});