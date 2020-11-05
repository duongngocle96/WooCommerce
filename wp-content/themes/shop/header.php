<!DOCTYPE html>
<html lang="vi">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Website bán hàng đơn giản</title>
		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,500,500i">
		<?php wp_head(); ?>
	</head>
	<body>
		<div id="wallpaper">
			<header>
				<div class="top">
					<div class="container">
						<div class="row">
							<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
								<p>Chào mừng đến với shop bán hàng!</p>
							</div>
							<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
								<div class="top-menu">
											<?php 
					            wp_nav_menu( 
					                  array( 
					                      'theme_location' => 'header-top',
					                      'container' => 'false',
					                      'menu_class' => 'top-menu"',
					                      'menu_id' => '',
					                   ) 
					                ); ?>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="main-header">
					<div class="container">
						<div class="row">
							<div class="col-6 col-xs-6 col-sm-6 col-md-3 col-lg-3 order-md-0 order-0">
								<div class="logo">
									<a href="#"><img src="<?php bloginfo('stylesheet_directory'); ?>/images/logo.png" alt=""></a>
									<h1><?php bloginfo('name') ?></h1>
								</div>
							</div>
							<div class="col-12 col-xs-12 col-sm-12 col-md-6 col-lg-6 order-md-1 order-2">
								

								<div class="form-seach-product">


								<form action="<?php bloginfo('url'); ?>/" method="GET" role="form">
	
								<select name="product_cat" id="input" class="form-control" required="required">
									<option value="">Chọn danh mục</option>
									<?php $args = array( 
									    'hide_empty' => 0,
									    'taxonomy' => 'product_cat',
									    'orderby' => id,
									    ); 
									    $cates = get_categories( $args ); 
									    foreach ( $cates as $cate ) {  ?>
											<option value="<?php echo $cate->slug; ?>"><?php echo $cate->name; ?></option>
									<?php } ?>
								</select>
								<div class="input-seach">
								<input type="hidden" name="post_type" value="product">
								<input type="text" class="form-control" id="name" name="s" placeholder="Nhập tên sản phẩm...">
							<button type="submit" class="btn-search-pro"><i class="fa fa-search"></i></button>
						</div>
										<div class="clear"></div>

							</form>




								</div>
							</div>
							<div class="col-6 col-xs-6 col-sm-6 col-md-3 col-lg-3 order-md-2 order-1" style="text-align: right">
								<a href="<?php bloginfo('url') ?>/cart" class="icon-cart">
									<div class="icon">
										<i class="fa fa-shopping-cart" aria-hidden="true"></i>
										<span>3</span>
									</div>
									<div class="info-cart">
										<p>Giỏ hàng</p>
										<span>2.500.000đ</span>
									</div>
									<span class="clear"></span>
								</a>
							</div>
						</div>
					</div>
				</div>
				<div class="main-menu-header">
					<div class="container">
						<div id="nav-menu">
							 <?php 
					            wp_nav_menu( 
					                  array( 
					                      'theme_location' => 'header-main',
					                      'container' => 'false',
					                      'menu_class' => 'current-menu-item',
					                      'menu_id' => '',
					                   ) 
					                ); ?>
							<div class="clear"></div>
						</div>
					</div>
				</div>
			</header>