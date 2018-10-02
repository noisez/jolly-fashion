<?php
/**
 * The template for displaying the footer.
 *
 * Contains the closing of the #content div and all content after
 *
 * @package storefront
 */

?>

		</div><!-- .col-full -->
	</div><!-- #content -->

	<?php do_action( 'storefront_before_footer' ); ?>

	<footer id="colophon" class="site-footer" role="contentinfo">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-md-3">
                    <a href="<?php echo get_home_url(); ?>">
                        <img src="<?php echo get_stylesheet_directory_uri() ?>/assets/images/logo_footer.png" alt="" class="footer__logo">
                    </a>
                </div>
                <div class="col-md-3">
                    <ul class="">
                        <li class="footer__menu_item">
                            <a href="#" class="footer__menu_link">Политика конфиденциальности</a>
                        </li>
                        <li class="footer__menu_item">
                            <a href="#" class="footer__menu_link">Условия пользования</a>
                        </li>
                        <li class="footer__menu_item">
                            <a href="#" class="footer__menu_link">Карта сайта</a>
                        </li>
                    </ul>
                </div>
                <div class="col-md-3">
                    <ul class="footer__menu">
                        <li class="footer__menu_item">
                            <a href="#" class="footer__menu_link">О Нас</a>
                        </li>
                        <li class="footer__menu_item">
                            <a href="#" class="footer__menu_link">Оплата / Доставка</a>
                        </li>
                        <li class="footer__menu_item">
                            <a href="#" class="footer__menu_link">Статьи</a>
                        </li>
                    </ul>
                </div>
                <div class="col-md-3">
                    <div class="footer__socials">
                        <p class="footer__socials_text">Мы в социальных сетях</p>
                        <ul class="footer__socials_list d-flex justify-content-between">
                            <li class="footer__socials_item">
                                <a href="#" class="footer__socials_link">
                                    <img src="<?php echo get_stylesheet_directory_uri() ?>/assets/images/facebook.png" alt="" class="footer__socials_img">
                                </a>
                            </li>
                            <li class="footer__socials_item">
                                <a href="#" class="footer__socials_link">
                                    <img src="<?php echo get_stylesheet_directory_uri() ?>/assets/images/googleplus.png" alt="" class="footer__socials_img">
                                </a>
                            </li>
                            <li class="footer__socials_item">
                                <a href="#" class="footer__socials_link">
                                    <img src="<?php echo get_stylesheet_directory_uri() ?>/assets/images/instagram.png" alt="" class="footer__socials_img">
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
	</footer><!-- #colophon -->

	<?php do_action( 'storefront_after_footer' ); ?>

</div><!-- #page -->

<?php wp_footer(); ?>

</body>
</html>
