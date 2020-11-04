<div class="sidebar">
									<div class="category-box">
										<h3>Danh mục sản phẩm</h3>
										<div class="content-cat">
											<ul>
												<?php
												$args = array(
												    'type'      => 'product',
												    'child_of'  => 0,
												    'parent'    => 0,
												    'taxonomy'	=>'product_cat',
												);
												$categories = get_categories( $args );
												foreach ( $categories as $category ) { ?>
													<li><i class="fa fa-angle-right"></i> 
														<a href="<?php  echo get_term_link($category->slug, 'product_cat');?>"><?php echo $category->name ; ?>
														</a></li>
												<?php } ?>
											</ul>
										</div>
									</div>
									<div class="widget">
										<h3>
											<i class="fa fa-bars"></i>
											Tin tức
										</h3>
										<div class="content-w">
											<ul>
									
												<li>
													<?php 
										$args = array(
											'post_status' => 'publish',
											'post_type' => 'post', 
											'showposts' => 12, 
											//'cat' => 1, // lấy bài viết trong chuyên mục có id là 1
										);
									?>
									<?php $getposts = new WP_query($args); ?>
									<?php global $wp_query; $wp_query->in_the_loop = true; ?>
									<?php while ($getposts->have_posts()) : $getposts->the_post(); ?>
										<a href="#"><img src="<?php echo get_the_post_thumbnail(get_the_ID(), 'full', array( 'class' =>'thumnail') ); ?></a>
													<h4><a href="#"><?php the_title(); ?></a></h4>
													<div class="clear"></div>
									<?php endwhile; wp_reset_postdata(); ?>
													
												</li>
												
												
											</ul>
										</div>
									</div>
									<div class="widget">
										<h3>
											<i class="fa fa-bars"></i>
											Quảng cáo
										</h3>
										<div class="content-banner">
											<a href="#">
												<img src="<?php bloginfo('stylesheet_directory'); ?>/images/banner.png" alt="">
											</a>
										</div>
									</div>
									<div class="widget">
										<h3>
											<i class="fa fa-facebook"></i>
											Facebook
										</h3>
										<div class="content-fb">
											<div class="fb-page" data-href="https://www.facebook.com/huykiradotnet/" data-tabs="timeline" data-width="" data-height="200" data-small-header="false" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true"></div>
										</div>
									</div>
								</div>