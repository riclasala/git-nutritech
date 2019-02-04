
		<!-- Page Heading -->
		<h1 class="my-4"><?= $title ?></h1>
		<div class="row">
			<?php foreach($items as $row) { ?>
				<div class="col-lg-3 col-md-4 col-sm-6 portfolio-item">
					<div class="card h-100">
						<img class="card-img-top" src="<?php echo base_url(); ?>assets/images/products/<?php echo $row['item_photo']; ?>" alt="<?php echo $row['item_description'] ?>">
						<div class="card-body">
							<h6 class="card-title">
								<?php echo $row['item_description']; ?>
							</h6>
							<p class="card-text">
								₱<?php echo number_format($row['unit_price'], 2); ?> - 
								$<?php echo number_format($row['unit_price'] / $usd_rate, 2); ?>
								<?php if(count($row['promo_array']) >= 1) { ?>
									<?php foreach($row['promo_array'] as $promo) { ?>
										<hr />
										<div class="row">
											<div class="col-lg-12 col-md-4 col-sm-4 col-xs-4">
												<small>
													<b>PROMO</b>:<br /><?php echo $promo['promo_description']; ?><br />
													<b>₱<?php echo number_format($promo['tsp'], 2); ?> - $<?php echo number_format($promo['tsp'] / $usd_rate, 2); ?></b>
												</small>
											</div>
											<div class="col-lg-12 col-md-5 col-sm-5 col-xs-5">
												<small>
													<b>BONUS</b>:<br />
													<?php if(count($promo['breakdown_array']) >= 1) { ?>
														<ul>
															<?php foreach($promo['breakdown_array'] as $brk) { ?>
																<?php if ($brk['transaction_qty'] == 1) { ?>
																	<li><?php echo $brk['item_description']; ?></li>
																<?php } else { ?>
																	<li><?php echo $brk['transaction_qty']; ?> x <?php echo $brk['item_description']; ?></li>
																<?php } ?>
															<?php } ?>
														</ul>
													<?php } else { ?>
														-
													<?php } ?>
												</small>
											</div>

											<div class="col-lg-12 col-md-3 col-sm-3 col-xs-3 text-center">
												<?php echo form_open('carts/create'); ?>
													<input type="hidden" name="item_id" value="<?php echo $row['item_id']; ?>" />
													<input type="hidden" name="promo_id" value="<?php echo $promo['promo_id']; ?>" />
													<button type="submit" class="btn btn-success btn-sm" name="Buy">
														<i class="fas fa-check"></i> Buy Now
													</button>
													<button type="submit" class="btn btn-warning btn-sm" name="Add">
														<i class="fas fa-shopping-cart"></i> Add to Cart
													</button>
												</form>
											</div>
										</div> <!--<div class="row">-->
									<?php } ?> <!-- foreach($row['promo_array'] as $promo)  -->
								<?php } else { ?>
									<?php echo form_open('carts/create'); ?>
										<div class="row">
											<div class="col-lg-12 col-md-3 col-sm-3 col-xs-3 text-center">
												<input type="text" name="item_id" value="<?php echo $row['item_id']; ?>" />
												<input type="text" name="promo_id" value="0" />
												<button type="submit" class="btn btn-success btn-sm">
													<i class="fas fa-shopping-cart"></i> Add to Cart
												</button>
											</div>
										</div>
									</form>
								<?php } ?>
							</p> <!-- <p class="card-text"> -->
						</div> <!-- <div class="card-body"> -->
					</div> <!-- <div class="card h-100"> -->
				</div> <!-- <div class="col-lg-3 col-md-4 col-sm-6 portfolio-item"> -->
			<?php } ?> <!-- foreach($items as $row) { -->
		</div> <!-- <div class="row"> -->