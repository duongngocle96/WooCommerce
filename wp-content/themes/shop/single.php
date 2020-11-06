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
							<div class="col-xs-12 col-sm-12 col-md-12 col-lg-3 order-lg-0 order-1">			
								<?php get_sidebar(); ?>
							</div>
							<div class="col-xs-12 col-sm-12 col-md-12 col-lg-9 order-lg-1 order-0">
						      <?php if (have_posts()) : ?>
              					<?php while (have_posts()) : the_post(); ?>
              						<h1 class="single-title"><?php the_title(); ?></h1>
              						<div class="meta-single">
              							<span> Author : <?php the_author(); ?> </span>
              						</div>
              						<div class="single-content">
              							<?php the_content();?>
              						</div>
              						 <?php endwhile; ?>
              						 <?php endif; ?>
					              
							</div>
						</div>
					</div>
				</div>
			</div>
<?php get_footer(); ?>