<?php 

	define( 'THEME_URL' , get_stylesheet_directory());
    define('CORE', THEME_URL . "/core");
    require_once( CORE . "/init.php" );
		//code mặc định khi lập trình thêm woo
function my_custom_wc_support(){
		add_theme_support('woocommerce');
		add_theme_support('wc-product-gallery-lightbox');
		add_theme_support('wc-product-gallery-slide');

	}
  		add_action('after_setup_theme','my_custom_wc_support');


function initTheme(){
		//chuyển trình saọn thảo phiên bản mới về cũ
		add_filter('use_block_editor_for_post','__return_false');
		//đăng kí các menu..

		register_nav_menu('header-main',__('menu main'));
		register_nav_menu('header-top',__('menu top'));
		register_nav_menu('menu_footer',__('menu footer'));
		
		//đăng kí saidebar..
		if (function_exists('register_sidebar')){
    		register_sidebar(array(
			    'name'=> 'Cột bên',
			    'id' => 'sidebar',
		));
		}
}		
		add_action('init', 'initTheme');

    //add css.js
function styles_css()
{
    wp_enqueue_style('custom', get_template_directory_uri() . '/libs/bootstrap/css/bootstrap.min.css', 'all');
    wp_enqueue_style('style', get_template_directory_uri() . '/css/style.css', 'all');

    wp_enqueue_style('templatemo-stand-blog', get_template_directory_uri() . '/libs/font-awesome/css/font-awesome.min.css', 'all');
    wp_enqueue_style('fontawesome', get_template_directory_uri() . '/css/responsive.css', 'all');
    wp_enqueue_style('owl', get_template_directory_uri() . '/css/main.css', 'all');
}
	add_action( 'wp_enqueue_scripts', 'styles_css' );

function style_js()
{
    //add style.js
    wp_enqueue_script( 'jquery', get_template_directory_uri() . '/js/main.js',[], null, true);
   
    wp_enqueue_script( 'owl', get_template_directory_uri() . '/libs/bootstrap/js/bootstrap.min.js',[], null, true);
    wp_enqueue_script( 'slick', get_template_directory_uri() . '/libs/jquery-3.4.1.min.js',[], null,true);

}
	add_action( 'wp_enqueue_scripts', 'style_js' );

//show giá sale
function sale($price , $price_sale ){
	$sale = ($price_sale*100)/$price;
	$sale1 = 100 -$sale;
	return number_format($sale1);
	
}	

//them option

function setting_footer(){
    global $tp_options;
    echo '' . $tp_options['footer'];
}
function sdt(){
    global $tp_options;
    echo '' . $tp_options['sdt'];
}
function Email(){
    global $tp_options;
    echo '' . $tp_options['mail'];
}
function add(){
    global $tp_options;
    echo '' . $tp_options['add'];
}
function www(){
    global $tp_options;
    echo '' . $tp_options['www'];
}


if ( ! function_exists( 'thachpham_logo' ) ) {
  function thachpham_logo() {?>
    <?php
      global $tp_options;
    ?>
 
    <?php if ( $tp_options['logo-on'] == 1 ) : ?>
 
      <div class="logo">
      	<a href="#">
      	<img src="<?php echo $tp_options['logo-image']['url']; ?>">
      </a>
      </div> 
      <?php endif;
  }
}

function wp_get_pagination($getposts)
{
  $big = 999999999; // need an unlikely integer
  //global $wp_query;
  $pages = paginate_links(array(
    'base' => str_replace($big, '%#%', esc_url(get_pagenum_link($big))),
    'format' => '?paged=%#%',
    'prev_text'    => __('<<'),
    'next_text'    => __('>>'),
    'current' => max(1, get_query_var('paged')),
    'total' => $getposts->max_num_pages,
    'type'  => 'array',

  ));
  
    if( is_array( $pages ) ) {
        $paged = ( get_query_var('paged') == 0 ) ? 1 : get_query_var('paged');
        echo '<div class="col-lg-12 pagination">';
        foreach ( $pages as $page ) {
                echo "$page";
        }
       echo '</ul></div>';
        }
}
 ?>
