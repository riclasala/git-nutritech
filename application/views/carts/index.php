
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

		<div id="cart_items">
			<?php if (count($cart) > 0) { ?>
				<?php foreach ($cart as $item) { ?>
					<div class="row border-bottom">
						<div class="col-2">
							<input type="hidden" id="item_id_<?php echo $item['item_id']; ?>_x_<?php echo $item['promo_id']; ?>" value="<?php echo $item['item_id']; ?>" />
							<input type="hidden" id="promo_id_<?php echo $item['item_id']; ?>_x_<?php echo $item['promo_id']; ?>" value="<?php echo $item['promo_id']; ?>" />
							<button type="button" uniq="yes" class="btn btn-danger btn-sm" id="btn_<?php echo $item['item_id']; ?>_x_<?php echo $item['promo_id']; ?>" style="margin-top: 5px; margin-bottom: 5px;">
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
							<small>₱<?php echo number_format($item['amount'], 2); ?></small> x 
							<?php 
								$options = array();
								foreach (range(1, 10) as $i) {
									$options[$i] = $i;
								}
								echo form_dropdown('quantity', $options, $item['quantity'], 'id="qty_'. $item['item_id'] .'_x_'. $item['promo_id'] .'"'); 
							?>
						</div>
						<div class="col-lg-2 col-md-2 col-sm-4 col-xs-4 text-right">
							₱<?php echo number_format($item['amount'] * $item['quantity'], 2); ?>
						</div>
					</div>
				<?php } ?>
			<?php } else { ?>
				<div class="row border-bottom">
					<div class="col text text-center">
						NO ITEMS FOUND.
					</div>
				</div>
			<?php } ?>
		</div>

		<div id="cart_total">
			<div class="row border-bottom">
				<div class="col text-right">
					<b>TOTAL</b>:
				</div>
				<div class="col text-right">
					<b>₱<?php echo number_format($total, 2); ?></b>
				</div>
			</div>

			<?php if (count($cart) > 0) { ?>
				<br />
				<div class="row text-center">
					<div class="col-12">
						<a href="<?php base_url(); ?>checkout" class="btn btn-success btn-sm">
							<i class="fas fa-check"></i> Proceed to Checkout
						</a>
					</div>
				</div>
				<hr />
			<?php } ?>
		</div>

		<br />
		<div class="row text-center">
			<div class="col-12">
				<a href="<?php base_url(); ?>home" class="btn btn-warning btn-sm">
					<i class="fas fa-shopping-cart"></i> Continue Shopping
				</a>
			</div>
		</div>

		<!-- Small modal delete -->
		<div class="modal fade" id="myModal-delete" tabindex="-1" role="dialog" aria-labelledby="successModal" aria-hidden="true">
			<div class="modal-dialog modal-sm">
				<div class="modal-content text-center">
					<img class="img-fluid" src="<?php echo base_url(); ?>assets/images/check.gif" alt="CHECK" />
					<h6>Successfully Deleted.</h6>
				</div>
			</div>
		</div>

		<!-- Small modal update -->
		<div class="modal fade" id="myModal-update" tabindex="-1" role="dialog" aria-labelledby="successModal" aria-hidden="true">
			<div class="modal-dialog modal-sm">
				<div class="modal-content text-center">
					<img class="img-fluid" src="<?php echo base_url(); ?>assets/images/check.gif" alt="CHECK" />
					<h6>Successfully Updated.</h6>
				</div>
			</div>
		</div>

		<script type="text/javascript">
			$(document).on('click', 'button[uniq="yes"]', function(){
				var btn = this.id;
				var str = btn.substr(btn.indexOf("btn_") + 4);
				deleteCart(str);
			});

			$(document).on('change', 'select', function(){
				var sel = this.id;
				var str = sel.substr(sel.indexOf("qty_") + 4);
				var qty = $(this).children("option:selected").val();
				updateCart(str, qty);
			});

			function deleteCart(str){
				var item_id = $('#item_id_' + str).val();
				var promo_id = $('#promo_id_' + str).val();

				$.ajax({
					url: "<?php echo base_url(); ?>carts/destroy",
					type: 'POST',
					dataType: "json",
					data: {
						item_id: item_id,
						promo_id: promo_id
					},
					success: function(data, status){
						alertDelete();
						$("#cart_items").html(data.cart_items);
						$("#cart_total").html(data.cart_total);
					}
				});
			}

			function updateCart(str, qty){
				var item_id = $('#item_id_' + str).val();
				var promo_id = $('#promo_id_' + str).val();
				$.ajax({
					url: "<?php echo base_url(); ?>carts/update",
					type: 'POST',
					dataType: "json",
					data: {
						item_id: item_id,
						promo_id: promo_id,
						qty: qty
					},
					success: function(data, status){
						alertUpdate();
						$("#cart_items").html(data.cart_items);
						$("#cart_total").html(data.cart_total);
					}
				});
			}

			function alertDelete(){
				$('#myModal-delete').modal();

				setTimeout(function(){
					$('#myModal-delete').modal('hide')
				}, 1500);
			}

			function alertUpdate(){
				$('#myModal-update').modal();

				setTimeout(function(){
					$('#myModal-update').modal('hide')
				}, 1500);
			}
		</script>