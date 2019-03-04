
			<!-- Page Heading -->
			<h1 class="my-4"><?= strtoupper($title); ?></h1>
			<div class="row">
				<?php foreach($items as $row) { ?>
					<div class="col-lg-3 col-md-4 col-sm-6 portfolio-item">
						<div class="card h-100">
							<img class="card-img-top" src="<?php echo base_url(); ?>assets/images/products/250x180/<?php echo $row['item_photo']; ?>" alt="<?php echo $row['item_description']; ?>">
							<div class="card-body">
								<h6 class="card-title"><?php echo $row['item_description']; ?></h6>
								<p class="card-text">
									<?php if ($row['membership'] == "Y") { ?>
										<s>₱<?php echo number_format($row['unit_price'], 2); ?> - $<?php echo number_format($row['unit_price'] / $usd_rate, 2); ?></s>
										<div class="row">
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 text-center">
												<h3>₱<?php echo number_format(14920, 2); ?></h3>
												<a href="<?php echo base_url(); ?>membership" class="btn btn-success btn-sm"><i class="far fa-address-card"></i> Member Now !</a>
											</div>
										</div>
									<?php } else { ?>
										₱<?php echo number_format($row['unit_price'], 2); ?> - $<?php echo number_format($row['unit_price'] / $usd_rate, 2); ?>
										<?php if(count($row['promo_array']) >= 1) { ?>
											<?php foreach($row['promo_array'] as $promo) { ?>
												<hr />
												<div class="row">
													<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
														<small>
															<b>PROMO</b>:<br /><?php echo $promo['promo_description']; ?><br />
															<b>₱<?php echo number_format($promo['tsp'], 2); ?> - $<?php echo number_format($promo['tsp'] / $usd_rate, 2); ?></b>
														</small>
													</div>
													<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
														<small>
															<?php if(count($promo['breakdown_array']) > 0) { ?>
																<b>BONUS</b>:<br />
																<ul>
																	<?php foreach($promo['breakdown_array'] as $brk) { ?>
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

													<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 text-center">
														<?php echo form_open('carts/create'); ?>
															<input type="hidden" name="item_id" id="item_id_0_x_<?php echo $promo['promo_id']; ?>" value="0" />
															<input type="hidden" name="promo_id" id="promo_id_0_x_<?php echo $promo['promo_id']; ?>" value="<?php echo $promo['promo_id']; ?>" />
															<button type="submit" class="btn btn-success btn-sm" name="Buy">
																<i class="fas fa-check"></i> Buy Now
															</button>
															<button type="button" class="btn btn-warning btn-sm" uniq="yes" id="btn_0_x_<?php echo $promo['promo_id']; ?>">
																<i class="fas fa-shopping-cart"></i> Add to Cart
															</button>
														</form>
													</div>
												</div> <!--<div class="row">-->
											<?php } ?> <!-- foreach($row['promo_array'] as $promo)  -->
										<?php } else { ?>
											<?php echo form_open('carts/create'); ?>
												<div class="row">
													<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 text-center">
														<input type="hidden" name="item_id" id="item_id_<?php echo $row['item_id']; ?>_x_0" value="<?php echo $row['item_id']; ?>" />
														<input type="hidden" name="promo_id" id="promo_id_<?php echo $row['item_id']; ?>_x_0" value="0" />
														<button type="submit" class="btn btn-success btn-sm" name="Buy">
															<i class="fas fa-check"></i> Buy Now
														</button>
														<button type="button" class="btn btn-warning btn-sm" uniq="yes" id="btn_<?php echo $row['item_id']; ?>_x_0">
															<i class="fas fa-shopping-cart"></i> Add to Cart
														</button>
													</div>
												</div>
											</form>
										<?php } ?>
									<?php } ?>
								</p> <!-- <p class="card-text"> -->
							</div> <!-- <div class="card-body"> -->
						</div> <!-- <div class="card h-100"> -->
					</div> <!-- <div class="col-lg-3 col-md-4 col-sm-6 portfolio-item"> -->
				<?php } ?> <!-- foreach($items as $row) { -->
			</div> <!-- <div class="row"> -->

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