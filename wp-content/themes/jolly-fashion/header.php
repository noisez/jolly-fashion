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

<!-- Modal -->
<div class="modal fade" id="modal_auth" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Вход</h5>
            </div>
            <div class="modal-body">
                <form class="woocommerce-form woocommerce-form-login login" method="post">
                    <p class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide">
                        <input type="text" class="woocommerce-Input woocommerce-Input--text input-text" required name="username" placeholder="Email" id="username" autocomplete="username" value="">			</p>
                    <p class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide">
                        <input class="woocommerce-Input woocommerce-Input--text input-text" type="password" required name="password" placeholder="Пароль" id="password" autocomplete="current-password">
                    </p>
                    <div class="modal__help mt-2">
                        <label class="woocommerce-form__label woocommerce-form__label-for-checkbox inline">
                            <input class="woocommerce-form__input woocommerce-form__input-checkbox" name="rememberme" type="checkbox" id="rememberme" value="forever"> <span>Запомнить меня</span>
                        </label>
                        <p class="woocommerce-LostPassword lost_password">
                            <a href="/my-account/lost-password/">Забыли свой пароль?</a>
                        </p>
                    </div>
                    <?php wp_nonce_field( 'woocommerce-login', 'woocommerce-login-nonce' ); ?>
                    <button href="/my-account" type="submit" class="mt-3 btn btn-modal" name="login" value="Войти">Войти</button>
                    <button type="button" class="mt-1 woocommerce-Button btn-modal btn-modal-bottom" data-dismiss="modal" data-toggle="modal" data-target="#modal_reg">Регистрация</button>
                </form>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="modal_reg" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Регистрация</h5>
            </div>
            <div class="modal-body">
                <form method="post" class="woocommerce-form woocommerce-form-register register">
                    <p class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide">
                        <input type="text" class="woocommerce-Input woocommerce-Input--text input-text" placeholder="Имя пользователя" required name="username" id="reg_username" autocomplete="username" value="">
                    </p>
                    <p class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide">
                        <input type="email" class="woocommerce-Input woocommerce-Input--text input-text" placeholder="Email" required name="email" id="reg_email" autocomplete="email" value="">
                    </p>
                    <p class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide">
                        <input type="password" class="woocommerce-Input woocommerce-Input--text input-text" placeholder="Пароль" required name="password" id="reg_password" autocomplete="new-password">
                    </p>
                    <p class="form-row form-row-wide">
                        <input type="password" class="woocommerce-Input--text input-text input-text" placeholder="Повторите пароль" required name="password2" id="reg_password2" value="">
                    </p>
                    <p class="woocommerce-FormRow form-row">
                        <?php wp_nonce_field( 'woocommerce-register', 'woocommerce-register-nonce' ); ?>
                        <button type="submit" class="mt-4 btn btn-modal" name="register" value="Регистрация">Зарегестрироваься</button>
                        <button type="button" class="mt-1 woocommerce-Button btn-modal btn-modal-bottom" data-dismiss="modal" data-toggle="modal" data-target="#modal_auth">Вход</button>
                    </p>
                </form>
            </div>
        </div>
    </div>
</div>



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
                                <a href="/my-account" data-toggle="modal" data-target="#modal_auth" class="personal__link">
                                    <span class="account__name"><?php echo wp_get_current_user()->user_login; ?></span>
                                    <img class="account__img" src="<?php echo get_stylesheet_directory_uri() ?>/assets/images/arrow-down.svg" alt="">
                                </a>
                                <div class="account__line"></div>
                            </li>
                            <li class="personal__search">
                                    <img class="personal__img" src="<?php echo get_stylesheet_directory_uri() ?>/assets/images/magnifying-glass.svg" alt="">
                            </li>
                            <li class="personal__like">
                                <a href="/favorites" class="personal__link">
                                    <img class="personal__img" src="<?php echo get_stylesheet_directory_uri() ?>/assets/images/heart.svg" alt="">
                                </a>
                            </li>
                            <li class="personal__cart">
                                <a href="/cart" class="personal__link">
                                    <img class="personal__img" src="<?php echo get_stylesheet_directory_uri() ?>/assets/images/shopping-bag.svg" alt="">
                                    <p class="personal__cart_count"><?php echo WC()->cart->get_cart_contents_count(); ?></p>
                                </a>
                            </li>
                            <li>
                                <div class="nav__search">
                                    <?php echo do_shortcode( '[aws_search_form]' ); ?>
                                </div>
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
