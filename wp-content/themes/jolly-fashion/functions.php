<?php
add_action( 'wp_enqueue_scripts', 'enqueue_parent_styles' );
    
function enqueue_parent_styles() {
   wp_enqueue_style( 'parent-style', get_template_directory_uri().'/style.css' );
}

add_action( 'after_setup_theme', 'woocommerce_support' );
function woocommerce_support() {
    add_theme_support( 'woocommerce' );
}


function wptuts_scripts_with_jquery()
{
    // Register the script like this for a theme:
    wp_register_script( 'custom-script', get_theme_file_uri() . '/assets/js/script.js' );
    // For either a plugin or a theme, you can then enqueue the script:
    wp_enqueue_script( 'custom-script' );
}
add_action( 'wp_enqueue_scripts', 'wptuts_scripts_with_jquery' );

/* Регистрация меню */
register_nav_menus(array(
    'top'    => 'Верхнее меню',    //Название месторасположения меню в шаблоне
));

/* Убираем обертку меню */
add_filter( 'wp_nav_menu_args', 'my_wp_nav_menu_args' );
function my_wp_nav_menu_args( $args='' ){
    $args['container'] = '';
    return $args;
}

/* Убираем сайдбар */
add_action( 'get_header', 'remove_storefront_sidebar' );
function remove_storefront_sidebar() {
    if ( is_woocommerce() ) {
        remove_action( 'storefront_sidebar', 'storefront_get_sidebar', 10 );
    }
}

/* Количество колонок в каталоге */
add_filter('loop_shop_columns',function($col){
    return 4 ;
});

/* Количество колонок в похожих товарах */
function woocommerce_output_related_products() {
    woocommerce_related_products(4,4); // Показать 4 товара а 4 колонки
}

/* Обрезка изображений */
add_filter('woocommerce_get_image_size_thumbnail','add_thumbnail_size',1,10);
function add_thumbnail_size($size){

    $size['width'] = 320;
    $size['height'] = 410;
    $size['crop']   = 0; //0 - не обрезаем, 1 - обрезка
    return $size;
}

add_filter('woocommerce_get_image_size_single','add_single_size',1,10);
function add_single_size($size){

    $size['width'] = 455;
    $size['height'] = 581;
    $size['crop']   = 0;
    return $size;
}

//add_filter('woocommerce_get_image_size_gallery_thumbnail','add_gallery_thumbnail_size',1,10);
//function add_gallery_thumbnail_size($size){
//
//    $size['width'] = 100;
//    $size['height'] = 100;
//    $size['crop']   = 1;
//    return $size;
//}

/* Меняем надпись Распродажа на Скидка */
add_filter('woocommerce_sale_flash', 'my_custom_sale_flash', 10, 3);
function my_custom_sale_flash($text, $post, $_product) {
    return '
<span class="onsale"> Скидка </span>
';
}