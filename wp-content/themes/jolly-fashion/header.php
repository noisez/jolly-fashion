<?php
/**
 * The header for our theme.
 *
 * Displays all of the <head> section and everything up till <div id="content">
 *
 * @package storefront
 */

?><!doctype html>
<html <?php language_attributes(); ?>>
<head>
<meta charset="<?php bloginfo( 'charset' ); ?>">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=2.0">
<link rel="profile" href="http://gmpg.org/xfn/11">
<link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>">
<?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>

<?php do_action( 'storefront_before_site' ); ?>

<div id="page" class="hfeed site">
	<?php do_action( 'storefront_before_header' ); ?>

	<header id="masthead" class="site-header" role="banner" style="<?php storefront_header_styles(); ?>">
        <nav class="nav">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-md-3">
                        <a href="<?php echo get_home_url(); ?>">
                            <img src="<?php echo get_stylesheet_directory_uri() ?>/assets/images/logo.png" alt="" class="nav__logo">
                        </a>
                    </div>
                    <div class="col-md-6">
                        <?php
                        wp_nav_menu( array(
                            'menu_class'=>'menu',
                            'theme_location'=>'top',
                            'after'=>''
                        ) );
                        ?>
                    </div>
                    <div class="col-md-3">
                        <ul class="nav__personal">
                            <li class="personal__account">
                                <span class="account__name">Войти</span>
                                <a href="#" class="personal__link">
                                    <img class="account__img" src="<?php echo get_stylesheet_directory_uri() ?>/assets/images/arrow-down.svg" alt="">
                                </a>
                                <div class="account__line"></div>
                            </li>
                            <li class="personal__search">
                                <a href="#" class="personal__link">
                                    <img class="personal__img" src="<?php echo get_stylesheet_directory_uri() ?>/assets/images/magnifying-glass.svg" alt="">
                                </a>
                            </li>
                            <li class="personal__like">
                                <a href="#" class="personal__link">
                                    <img class="personal__img" src="<?php echo get_stylesheet_directory_uri() ?>/assets/images/heart.svg" alt="">
                                </a>
                            </li>
                            <li class="personal__cart">
                                <a href="#" class="personal__link">
                                    <img class="personal__img" src="<?php echo get_stylesheet_directory_uri() ?>/assets/images/shopping-bag.svg" alt="">
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </nav>
	</header><!-- #masthead -->

	<?php
	/**
	 * Functions hooked in to storefront_before_content
	 *
	 * @hooked storefront_header_widget_region - 10
	 * @hooked woocommerce_breadcrumb - 10
	 */
	do_action( 'storefront_before_content' ); ?>

	<div id="content" class="site-content" tabindex="-1">
		<div class="container">

		<?php
		do_action( 'storefront_content_top' );
