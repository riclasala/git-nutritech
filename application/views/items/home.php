	<div class="row">
		<div class="col-lg-3">
			<h1 class="my-4">Shop Online</h1>
			<div class="list-group">
				<a href="<?php echo base_url(); ?>booster" class="list-group-item">Booster Promo</a>
				<a href="<?php echo base_url(); ?>specials" class="list-group-item">Specials Promo</a>
				<a href="<?php echo base_url(); ?>other_promo" class="list-group-item">Other Promos</a>
			</div>
		</div>
		<!-- /.col-lg-3 -->

		<div class="col-lg-9">
			<div id="carouselExampleIndicators" class="carousel slide my-4" data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
			</ol>
			<div class="carousel-inner" role="listbox">
				<div class="carousel-item active">
				<img class="d-block img-fluid" src="<?php echo base_url(); ?>assets/images/slide-1.jpg" alt="First slide">
				</div>
				<div class="carousel-item">
				<img class="d-block img-fluid" src="<?php echo base_url(); ?>assets/images/slide-2.jpg" alt="Second slide">
				</div>
				<div class="carousel-item">
				<img class="d-block img-fluid" src="<?php echo base_url(); ?>assets/images/slide-3.jpg" alt="Third slide">
				</div>
				<div class="carousel-item">
				<img class="d-block img-fluid" src="<?php echo base_url(); ?>assets/images/slide-4.jpg" alt="Fourth slide">
				</div>
			</div>
			<a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a>
			<a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
			</div>
		</div>

		<div class="col-lg-12">
			<h4>SPECIALS PROMO</h4>
			<div class="row">
				<?php foreach($promos1 as $row) { ?>
					<div class="col-lg-3 col-md-4 col-sm-6 portfolio-item">
						<div class="card h-100">
							<img class="card-img-top" src="<?php echo base_url(); ?>assets/images/products/<?php echo $row['item_photo']; ?>" alt="<?php echo $row['promo_description']; ?>">
							<div class="card-body">
								<h6 class="card-title"><?php echo $row['promo_description']; ?></h6>
								<p class="card-text">
									₱<?php echo number_format($row['tsp'], 2); ?> - $<?php echo number_format($row['tsp'] / $usd_rate, 2); ?>
									<div class="row">
										<div class="col-lg-12 col-md-5 col-sm-5 col-xs-5">
											<small>
												<?php if(count($row['breakdown_array']) > 0) { ?>
													<b>BONUS</b>:<br />
													<ul>
														<?php foreach($row['breakdown_array'] as $brk) { ?>
															<?php if ($brk['transaction_qty'] == 1) { ?>
																<li><?php echo $brk['item_description']; ?></li>
															<?php } else { ?>
																<li>(<?php echo $brk['transaction_qty']; ?>) <?php echo $brk['item_description']; ?></li>
															<?php } ?>
														<?php } ?>
													</ul>
												<?php } ?>
											</small>
										</div>

										<div class="col-lg-12 col-md-3 col-sm-3 col-xs-3 text-center">
											<?php echo form_open('carts/create'); ?>
												<input type="hidden" name="item_id" id="item_id_0_x_<?php echo $row['promo_id']; ?>" value="0" />
												<input type="hidden" name="promo_id" id="promo_id_0_x_<?php echo $row['promo_id']; ?>" value="<?php echo $row['promo_id']; ?>" />
												<button type="submit" class="btn btn-success btn-sm" name="Buy">
													<i class="fas fa-check"></i> Buy Now
												</button>
												<button type="button" class="btn btn-warning btn-sm" uniq="yes" id="btn_0_x_<?php echo $row['promo_id']; ?>">
													<i class="fas fa-shopping-cart"></i> Add to Cart
												</button>
											</form>
										</div>
									</div>
								</p> <!-- <p class="card-text"> -->
							</div> <!-- <div class="card-body"> -->
						</div> <!-- <div class="card h-100"> -->
					</div> <!-- <div class="col-lg-3 col-md-4 col-sm-6 portfolio-item"> -->
				<?php } ?> <!-- foreach($items as $row) { -->
			</div> <!-- <div class="row"> -->

			<?php if (count($promos) > 0) { ?>
				<hr />
				<h4>OTHER PROMO</h4>
				<div class="row">
					<?php foreach($promos as $row) { ?>
						<div class="col-lg-3 col-md-4 col-sm-6 portfolio-item">
							<div class="card h-100">
								<img class="card-img-top" src="<?php echo base_url(); ?>assets/images/products/<?php echo $row['item_photo']; ?>" alt="<?php echo $row['promo_description']; ?>">
								<div class="card-body">
									<h6 class="card-title"><?php echo $row['promo_description']; ?></h6>
									<p class="card-text">
										₱<?php echo number_format($row['tsp'], 2); ?> - $<?php echo number_format($row['tsp'] / $usd_rate, 2); ?>
										<div class="row">
											<div class="col-lg-12 col-md-5 col-sm-5 col-xs-5">
												<small>
													<?php if(count($row['breakdown_array']) > 0) { ?>
														<b>BONUS</b>:<br />
														<ul>
															<?php foreach($row['breakdown_array'] as $brk) { ?>
																<?php if ($brk['transaction_qty'] == 1) { ?>
																	<li><?php echo $brk['item_description']; ?></li>
																<?php } else { ?>
																	<li>(<?php echo $brk['transaction_qty']; ?>) <?php echo $brk['item_description']; ?></li>
																<?php } ?>
															<?php } ?>
														</ul>
													<?php } ?>
												</small>
											</div>

											<div class="col-lg-12 col-md-3 col-sm-3 col-xs-3 text-center">
												<?php echo form_open('carts/create'); ?>
													<input type="hidden" name="item_id" id="item_id_0_x_<?php echo $row['promo_id']; ?>" value="0" />
													<input type="hidden" name="promo_id" id="promo_id_0_x_<?php echo $row['promo_id']; ?>" value="<?php echo $row['promo_id']; ?>" />
													<button type="submit" class="btn btn-success btn-sm" name="Buy">
														<i class="fas fa-check"></i> Buy Now
													</button>
													<button type="button" class="btn btn-warning btn-sm" uniq="yes" id="btn_0_x_<?php echo $row['promo_id']; ?>">
														<i class="fas fa-shopping-cart"></i> Add to Cart
													</button>
												</form>
											</div>
										</div>
									</p> <!-- <p class="card-text"> -->
								</div> <!-- <div class="card-body"> -->
							</div> <!-- <div class="card h-100"> -->
						</div> <!-- <div class="col-lg-3 col-md-4 col-sm-6 portfolio-item"> -->
					<?php } ?> <!-- foreach($items as $row) { -->
				</div> <!-- <div class="row"> -->
			<?php } ?>
		</div> <!-- /.col-lg-12 -->
	</div> <!-- /.row -->

	<!-- Small modal -->
	<div class="modal fade bd-example-modal-sm" id="myModal" tabindex="-1" role="dialog" aria-labelledby="successModal" aria-hidden="true">
		<div class="modal-dialog modal-sm">
			<div class="modal-content text-center">
				<img class="img-fluid" src="<?php echo base_url(); ?>assets/images/check.gif" alt="CHECK" />
				<h6>Successfully Added to your Cart.</h6>
			</div>
		</div>
	</div>

	<script type="text/javascript">
		$("button[uniq='yes']").click(function(){
			var btn = this.id;
			var str = btn.substr(btn.indexOf("btn_") + 4);

			addRecords(str);
		});

		function addRecords(str){
			var item_id = $('#item_id_' + str).val();
			var promo_id = $('#promo_id_' + str).val();

			$.ajax({
				url: "<?php echo base_url(); ?>carts/create",
				type: 'POST',
				data: {
					item_id: item_id,
					promo_id: promo_id
				},
				success: function(data, status){
					alertSuccess();
				}
			});
		}

		function alertSuccess(){
			$('#myModal').modal();

			setTimeout(function(){
				$('#myModal').modal('hide')
			}, 4000);
		}
	</script>