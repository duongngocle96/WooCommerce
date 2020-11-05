 <footer>
				<div class="container">
					<div class="row">
						<div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
							<div class="box-footer info-contact">
								<h3>Thông tin liên hệ</h3>
								<div class="content-contact">
									<p><?php
					                    setting_footer();
					                    ?></p>
									<p>
										<strong>Địa chỉ:</strong><?php add(); ?>
									</p>
									<p>
										<strong>Email: </strong><?php Email(); ?>
									</p>
									<p>
										<strong>Điện thoại: </strong><?php sdt(); ?>
									</p>
									<p>
										<strong>Điện thoại: </strong><?php www(); ?>
									</p>
									
								</div>
							</div>
						</div>
						<div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
							<div class="box-footer info-contact">
								<h3>Thông tin khác</h3>
								<div class="content-list">
									<?php 
					            	wp_nav_menu( 
					               array( 
					                      'theme_location' => 'menu_footer',
					                      'container' => 'false',
					                      'menu_class' => 'menu_footer',
					                      'menu_id' => 'menu_footer',
					                   ) 
					                ); ?>
									
								</div>
							</div>
						</div>
						<div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
							<div class="box-footer info-contact">
								<h3>Form liên hệ</h3>
								<div class="content-contact">
									<form action="/" method="GET" role="form">
										<div class="row">
											<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
												<input type="text" name="" id="" class="form-control" placeholder="Họ và Tên">
											</div>
											<div class="col-xs-12 col-sm-12 col-md-12 col-lg-6">
												<input type="email" name="" id="" class="form-control" placeholder="Địa chỉ mail">
											</div>
											<div class="col-xs-12 col-sm-12 col-md-12 col-lg-6">
												<input type="text" name="" id="" class="form-control" placeholder="Số điện thoại">
											</div>
											<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
												<input type="text" name="" id="" class="form-control" placeholder="Tiêu đề">
											</div>
											<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
												<textarea name="" id="" cols="30" rows="10" class="form-control"></textarea>
											</div>
										</div>
										<button type="submit" class="btn-contact">Liên hệ ngay</button>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="copyright">
					<p>Copyright © 2020 HKSHOP All Rights Reserved - Design by THIETKEWEB43.COM</p>
				</div>
			</footer>
		</div>
		<?php wp_footer() ?>
		<div id="fb-root"></div>
		<div id="fb-root"></div>
		<script async defer crossorigin="anonymous" src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v8.0" nonce="iVTBFlSH"></script>
		<script async defer crossorigin="anonymous" src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v6.0"></script>
	</body>
</html>