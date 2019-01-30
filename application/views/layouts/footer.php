			
		</div>

		<!-- Footer -->
		<footer>
			<div class="container">
				<div class="row text-center">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<hr />
						<a id="back-to-top" href="#" class="fixed-bottom btn btn-primary btn-lg back-to-top" role="button" title="Click to return on the top page" data-toggle="tooltip" data-placement="left">
						<span class="glyphicon glyphicon-chevron-up"> ^ </span>
						</a>
						<p class="m-0">Copyright &copy; NutriTECH Alliance Corporation 2019</p>
						<br />
					</div>
				</div>
				<div class="row">
					<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
						<ul>
							<span>Address</span>
							<li>
								<small>Main Office: Suite 1901 Centerpoint Bldg. Garnet Rd. cor. Julia Vargas Ave. Ortigas, Pasig City</small>
							</li>
							<li>
								<small>Antipolo Showroom: #66 M.L Quezon Ext. Brgy. Dalig, Antipolo City</small>
							</li> 
							<li>
								<small>Cebu Showroom: #17 Trilliom Residences, 3rd Floor Molave St. cor. Escario St., Brgy. Kamputhaw, Cebu City</small>
							</li>
							<li>
								<small>Davao Showroom: Unit C09 Palmetto Place, Ground Floor Ma-a Rd. cor Eden St., Don Julian Rodriguez Sr. Ave., Talomo, Davao City</small>
							</li>  
							<li>
								<small>Mindoro Showroom: NutriTECH Bldg. 2nd Floor Brgy. Lumambayan, Calapan City, Oriental Mindoro</small>
							</li> 
						</ul>
					</div>

					<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
						<ul>
							<span>Contact Us</span>
							<li>
								<small><i class="fas fa-phone"></i> Phone: (632) 631-7515 | (632) 631-7516 | (632) 910-5390</small>
							</li> 
							<li>
								<small><i class="fas fa-fax"></i> Fax: (632) 631-7517</small>
							</li>
							<li>
								<small><i class="fas fa-envelope"></i> Email: customercare@wnutritech.com</small>
							</li>
						</ul>
					</div>

					<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
						<ul class="no-dots">
							<span>Payment Methods</span>
							<li>
								<img src="<?php echo base_url(); ?>assets/images/visa.png" title="Visa">
								<img src="<?php echo base_url(); ?>assets/images/mastercard.png" title="Mastercard">
								<img src="<?php echo base_url(); ?>assets/images/jcb.png" title="JCB Co., Ltd">
								<img src="<?php echo base_url(); ?>assets/images/american-express.png" title="American Express"> 
								<img src="<?php echo base_url(); ?>assets/images/bdoinstall.png" title="BDO Installment"> 
							</li> 
						</ul>
					</div>

					<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
						<ul class="no-dots">
							<span>Social</span>
							<li>
								<h4>
									<a href="https://www.twitter.com/josnutritech" target="_blank" style="text-decoration: none;">
										<i class="fab fa-twitter"></i>
									</a> | <a id="instagram" href="https://www.instagram.com/josnutritech" target="_blank" style="text-decoration: none;">
										<i class="fab fa-instagram"></i>
									</a> | <a id="facebook" href="https://www.facebook.com/ntach.ntach.18" target="_blank" style="text-decoration: none;">
										<i class="fab fa-facebook"></i>
									</a>
								</h4>
							</li> 
						</ul>
					</div>
				</div> 
			</div>
		</footer>

		<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/jquery-3.3.1.min.js"></script>
		<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/popper.min.js"></script>
		<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/bootstrap.min.js"></script>
		<script type="text/javascript">
			$(document).ready(function(){
				$(window).scroll(function () {
					if ($(this).scrollTop() > 50) {
						$('#back-to-top').fadeIn();
					} else {
						$('#back-to-top').fadeOut();
					}
				});

				// scroll body to 0px on click
				$('#back-to-top').click(function () {
					$('body,html').animate({
						scrollTop: 0
					}, 800);
					return false;
				});
			});
		</script>
	</body>
</html>