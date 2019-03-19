	<div class="py-5 text-center">
		<h2>Checkout Confirmation</h2>
		<p class="lead">Summary Information</p>
	</div>

	<div class="row">
		<div class="col-md-4 order-md-2 mb-4">
			<h4 class="d-flex justify-content-between align-items-center mb-3">
				<span class="text-muted">Your cart</span>
				<span class="badge badge-success badge-pill"><?= $cart_count ?></span>
			</h4>
			<ul class="list-group mb-3">
				<?php foreach ($cart as $item) { ?>
					<li class="list-group-item d-flex justify-content-between lh-condensed">
						<div>
							<h6 class="my-0">
								<?php if ($item['promo_id'] > 0) { ?>
									<small><?php echo $item['promo_description']; ?></small>
								<?php } else { ?>
									<small><?php echo $item['item_description']; ?></small>
								<?php } ?>
							</h6>
							<small class="text-muted">
								₱ <?php echo number_format($item['amount'], 2); ?> x <?php echo $item['quantity']; ?>
							</small>
						</div>
						<span class="text-muted"><?php echo number_format($item['amount'] * $item['quantity'], 2); ?></span>
					</li>
				<?php } ?>
				
				<li class="list-group-item d-flex justify-content-between">
					<span>Total (PHP)</span>
					<strong>₱ <?php echo number_format($total, 2); ?></strong>
				</li>
			</ul>
		</div>
		<div class="col-md-8 order-md-1">
			<form action="<?= $url ?>" method="post" class="needs-validation" novalidate="" id="confirm-order">
				<hr class="mb-4">
				<h4 class="mb-3">Customer Details</h4>
				<div class="mb-3">
					<label>Fullname: </label>
					<span><?php echo $customer->customer_name; ?></span><br />
					<label>Email: </label>
					<span><?php echo $customer->email_user; ?></span><br />
					<label>Permanent Address: </label>
					<span><?php echo $customer->address; ?></span><br />
					<label>Delivery Address: </label>
					<span><?php echo $customer->delivery_address; ?></span><br />
					<label>Mobile Number: </label>
					<span><?php echo $customer->mobile_number; ?></span><br />
					<label>Telephone Number: </label>
					<span><?php echo $customer->tel_no; ?></span><br />
					<label>Country: </label>
					<span><?php echo $customer->country; ?></span><br />
					<label>Zipcode: </label>
					<span><?php echo $customer->zipcode; ?></span><br />
				</div>
				
				<input type="hidden" name="paymentrequest" id="paymentrequest" value="<?php echo $b64string ?>" style="width:800px; padding: 10px;">
				<button class="btn btn-primary btn-lg btn-block" type="submit">Proceed to Payment</button>
			</form>
		</div>
	</div>

	<script type="text/javascript">
		$('#confirm-order').submit();
	</script>