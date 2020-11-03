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
						     <?php get_template_part('content'); ?>
							</div>
						</div>
					</div>
				</div>
			</div>
<?php get_footer(); ?>