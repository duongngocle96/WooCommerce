<?php get_header(); ?>

			<div id="content">
				<div class="container">
					<div class="slider">
					<?php get_template_part('slider'); ?>						
					</div>
				</div>
				<div class="product-box">
					<div class="container">
						<div class="row">
							<div class="col-xs-12 col-sm-12 col-md-12 col-lg-3 order-lg-0 order-1">			<?php get_sidebar(); ?>
							</div>
							<div class="col-xs-12 col-sm-12 col-md-12 col-lg-9 order-lg-1 order-0">
						     <h1><?php single_cat_title();// get_template_part('content'); ?></h1>
						      <?php if (have_posts()) : ?>
              					<?php while (have_posts()) : the_post(); ?>
              						<div class="list-new">
              							<div class="row">
              								<div class="col-xs-12 col-sm-12 col-md-3 col-lg-3">	
              									<a href="<?php the_permalink(); ?>">
              										<?php echo get_the_post_thumbnail( get_the_ID(),'thumbnail' ); ?>
              									</a>
              								</div>
              								<div class="col-xs-12 col-sm-12 col-md-8 col-lg-8">	
              									<a href="<?php the_permalink(); ?>"><h4><?php the_title(); ?></h4></a>
              										<?php the_excerpt();?>
              									<a href="<?php the_permalink(); ?>" class="read-more">Xem chi tiet</a>
              								</div>

              							</div>
              						</div>

              							</br>
              							</br>
              						 <?php endwhile; ?>
              						 <?php endif; ?>
					              
							</div>
						</div>
					</div>
				</div>
			</div>
<?php get_footer(); ?>