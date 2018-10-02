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