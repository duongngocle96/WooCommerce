		<div class="product-section">
									<h2 class="title-product">
										<a href="#" class="title">Sản phẩm nổi bật</a>
										<div class="bar-menu"><i class="fa fa-bars"></i></div>
										<div class="list-child">

											<ul>
												<?php
												$args = array(
												    'type'      => 'product',
												    'child_of'  => 0,
												    'parent'    => 0,
												    'taxonomy'	=>	'product_cat',
												);
												$categories = get_categories( $args );
												foreach ( $categories as $category ) { ?>
													<li><a href="<?php echo get_term_link($category->slug, 'product_cat');?>"><?php echo $category->name ; ?></a></li>
												<?php } ?>
											
												
												
											</ul>
										</div>
										<div class="clear"></div>
									</h2>
									<div class="content-product-box">
								<div class="row">
										<?php
											$tax_query[] = array(
											    'taxonomy' => 'product_visibility',
											    'field'    => 'name',
											    'terms'    => 'featured',
											    'operator' => 'IN',
											);
										?>
							<?php $args = array( 'post_type' => 'product','posts_per_page' => 10,'ignore_sticky_posts' => 1, 'tax_query' => $tax_query); ?>
							<?php $getposts = new WP_query( $args);?>
							<?php global $wp_query; $wp_query->in_the_loop = true; ?>
							<?php while ($getposts->have_posts()) : $getposts->the_post(); ?>
							<?php global $product; ?>
								<div class="col-xs-12 col-sm-6 col-md-4 col-lg-3">
												<div class="item-product">
													<div class="thumb">
														<a href="<?php the_permalink(); ?>"></a>
														<?php echo get_the_post_thumbnail(get_the_ID(), 'full', array( 'class' =>'thumnail') ); ?>
														<?php if($product->is_on_sale()){ ?>
														<span class="sale">Giảm <br> 15%
													<!-- <?php// echo sale($product->rel_regular_price(), $product->rel_sale_price()); ?> -->	
														</span>
													<?php } ?>
														<div class="action">
															<a href="?add_to_cart=<?php the_ID(); ?>" class="buy"><i class="fa fa-cart-plus"></i>Mua ngay</a>
															<a href="#" class="like"><i class="fa fa-heart"></i> Yêu thích</a>
															<div class="clear"></div>
														</div>
													</div>
													<div class="info-product">
														<h4><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h4>
														<div class="price">
															<?php echo $product->get_price_html(); ?>															<!-- <span class="price-old">33.990.000₫</span> -->
														</div>
														<a href="<?php the_permalink(); ?>" class="view-more">Xem chi tiết</a>
													</div>
												</div>
											</div>
								<?php endwhile; wp_reset_postdata(); ?>
										</div>
									</div>
								</div>
								
								<br>
								<br>
								<div class="product-section">
									<h2 class="title-product">
										<?php $cat = get_term_by( 'id' , 17 , 'product_cat');?>
									<a href="<?php echo get_term_link($cat->slug,'product_cat');?>" class="title"><?php echo $cat->name ; ?></a> 
										<div class="bar-menu"><i class="fa fa-bars"></i></div>
										<div class="list-child">
											<ul>
												<?php
												$args = array(
												    'type'      => 'product',
												    'child_of'  => 0,
												    'parent'    => $cat->term_id,
												    'taxonomy'	=>	'product_cat',
												    'number'    => 5,
												    'hide_empty'=>0,
													);
												$categories = get_categories( $args );
												foreach ( $categories as $category ) { ?>
													<li><a href="<?php echo get_term_link($category->slug, 'product_cat');?>"><?php echo $category->name ; ?></a></li>
												<?php } ?>
											
												
												
											</ul>
										</div>
										<div class="clear"></div>
									</h2>
									<div class="content-product-box">
										<div class="row">
										
							<?php $args = array( 'post_type' => 'product',
							'posts_per_page' => 10,
							'ignore_sticky_posts' => 1,
							'product_cat' => $cat->slug
							); ?>
							<?php $getposts = new WP_query( $args);?>
							<?php global $wp_query; $wp_query->in_the_loop = true; ?>
							<?php while ($getposts->have_posts()) : $getposts->the_post(); ?>
							<?php global $product; ?>
											<div class="col-xs-12 col-sm-6 col-md-4 col-lg-3">
												<div class="item-product">
													<div class="thumb">
														<a href="<?php the_permalink(); ?>"></a>
														<?php echo get_the_post_thumbnail(get_the_ID(), 'full', array( 'class' =>'thumnail') ); ?>
														<?php if($product->is_on_sale()){ ?>
														<span class="sale">Giảm <br> 15%
													<!-- <?php// echo sale($product->rel_regular_price(), $product->rel_sale_price()); ?> -->	
														</span>
													<?php } ?>
														<div class="action">
															<a href="?add_to_cart=<?php the_ID(); ?>" class="buy"><i class="fa fa-cart-plus"></i> Mua ngay</a>
															<a href="#" class="like"><i class="fa fa-heart"></i> Yêu thích</a>
															<div class="clear"></div>
														</div>
													</div>
													<div class="info-product">
														<h4><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h4>
														<div class="price">
															<?php echo $product->get_price_html(); ?>															<!-- <span class="price-old">33.990.000₫</span> -->
														</div>
														<a href="<?php the_permalink(); ?>" class="view-more">Xem chi tiết</a>
													</div>
												</div>
											</div>
											<?php endwhile; wp_reset_postdata(); ?>
										</div>
									</div>
								</div>


								<div class="product-section">
									<h2 class="title-product">
										<?php $cat = get_term_by( 'id' , 19 , 'product_cat');?>
									<a href="<?php echo get_term_link($cat->slug,'product_cat');?>" class="title"><?php echo $cat->name ; ?></a> 
										<div class="bar-menu"><i class="fa fa-bars"></i></div>
										<div class="list-child">
											<ul>
												<?php
												$args = array(
												    'type'      => 'product',
												    'child_of'  => 0,
												    'parent'    => $cat->term_id,
												    'taxonomy'	=>	'product_cat',
												    'number'    => 5,
												    'hide_empty'=>0,
													);
												$categories = get_categories( $args );
												foreach ( $categories as $category ) { ?>
													<li><a href="<?php echo get_term_link($category->slug, 'product_cat');?>"><?php echo $category->name ; ?></a></li>
												<?php } ?>
											
												
												
											</ul>
										</div>
										<div class="clear"></div>
									</h2>
									<div class="content-product-box">
										<div class="row">
										
							<?php $args = array( 'post_type' => 'product',
							'posts_per_page' => 10,
							'ignore_sticky_posts' => 1,
							'product_cat' => $cat->slug
							); ?>
							<?php $getposts = new WP_query( $args);?>
							<?php global $wp_query; $wp_query->in_the_loop = true; ?>
							<?php while ($getposts->have_posts()) : $getposts->the_post(); ?>
							<?php global $product; ?>
											<div class="col-xs-12 col-sm-6 col-md-4 col-lg-3">
												<div class="item-product">
													<div class="thumb">
														<a href="<?php the_permalink(); ?>"></a>
														<?php echo get_the_post_thumbnail(get_the_ID(), 'full', array( 'class' =>'thumnail') ); ?>
														<?php if($product->is_on_sale()){ ?>
														<span class="sale">Giảm <br> 15%
													<!-- <?php// echo sale($product->rel_regular_price(), $product->rel_sale_price()); ?> -->	
														</span>
													<?php } ?>
														<div class="action">
															<a href="?add_to_cart=<?php the_ID(); ?>" class="buy"><i class="fa fa-cart-plus"></i> Mua ngay</a>
															<a href="#" class="like"><i class="fa fa-heart"></i> Yêu thích</a>
															<div class="clear"></div>
														</div>
														</div>
													<div class="info-product">
														<h4><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h4>
														<div class="price">
															<?php echo $product->get_price_html(); ?>															<!-- <span class="price-old">33.990.000₫</span> -->
														</div>
														<a href="<?php the_permalink(); ?>" class="view-more">Xem chi tiết</a>
													</div>
												</div>
											</div>
											<?php endwhile; wp_reset_postdata(); ?>
										</div>
									</div>
								</div>