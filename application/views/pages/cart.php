
		<!-- Page Heading -->
		<h1 class="my-4"><?= $title ?></h1>
		<div class="row border-top border-bottom text-center">
			<div class="col-lg-1 col-md-1 col-sm-2 col-xs-2 d-none d-lg-block">
				&nbsp;
			</div>
			<div class="col-lg-5 col-md-5 col-sm-10 col-xs-10">
				<b>Product</b>
			</div>
			<div class="col-lg-4 col-md-4 col-sm-8 col-xs-8">
				<b>Price x Quantity</b>
			</div>
			<div class="col-lg-2 col-md-2 col-sm-4 col-xs-4">
				<b>Subtotal</b>
			</div>
		</div>
		<?php foreach ($cart as $item) { ?>
			<div class="row border-bottom">
				<div class="col-2">
					<button type="button" class="btn btn-danger btn-sm" style="margin-top: 5px; margin-bottom: 5px;">
						<i class="fas fa-times"></i>
					</button>
				</div>
				<div class="col">
					<?php if ($item['promo_id'] > 0) { ?>
						<small><?php echo $item['promo_description']; ?></small>
					<?php } else { ?>
						<small><?php echo $item['item_description']; ?></small>
					<?php } ?>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-8 col-xs-8 text-center">
					<small>₱<?php echo number_format($item['amount'], 2); ?></small> x <?php echo $item['quantity'] ?>
				</div>
				<div class="col-lg-2 col-md-2 col-sm-4 col-xs-4 text-right">
					₱<?php echo number_format($item['amount'] * $item['quantity'], 2); ?>
				</div>
			</div>
		<?php } ?>
		<div class="row border-bottom">
			<div class="col text-right">
				<b>TOTAL</b>:
			</div>
			<div class="col text-right">
				<b>₱<?php echo number_format($total, 2); ?></b>
			</div>
		</div>
		<br />
		<div class="row text-center">
			<div class="col-12">
				<a href="<?php base_url(); ?>checkout" class="btn btn-success btn-sm">
					<i class="fas fa-check"></i> Proceed to Checkout
				</a>
			</div>
		</div>
		<hr />
		<br />
		<div class="row text-center">
			<div class="col-12">
				<a href="<?php base_url(); ?>home" class="btn btn-warning btn-sm">
					<i class="fas fa-shopping-cart"></i> Continue Shopping
				</a>
			</div>
		</div>