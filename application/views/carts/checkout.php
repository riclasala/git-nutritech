	<!--scrollbar for modal-->
	<style type="text/css">
		.modal-dialog{
		      overflow-y: initial !important
		}
		.modal-body{
		  height: 300px;
		  overflow-y: auto;
		}
	</style>

	<div class="py-5 text-center">
		<h2>Checkout Form</h2>
		<p class="lead">Order Summary Information</p>
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
			<?php $attr = array('class' => 'needs-validation', 'novalidate' => ''); ?>
			<?php echo form_open('carts/submit_cart', $attr); ?>

				<hr class="mb-4">
				<div class="custom-control custom-checkbox">
					<input type="checkbox" class="custom-control-input" id="customer-info" name="customer-info">
					<label class="custom-control-label" for="customer-info">I'm the customer</label>
				</div>
				<hr class="mb-4">

				<h4 class="mb-3">Customer Details</h4>
				<div class="row">
					<div class="col-md-4 mb-3">
						<label for="first_name">First Name * </label>
						<input type="text" class="form-control" id="first_name" name="first_name" required="">
						<div class="invalid-feedback">
							Valid first name is required.
						</div>
					</div>
					<div class="col-md-4 mb-3">
						<label for="last_name">Last Name * </label>
						<input type="text" class="form-control" id="last_name" name="last_name" required="">
						<div class="invalid-feedback">
							Valid last name is required.
						</div>
					</div>

					<div class="col-md-4 mb-3">
						<label for="middle_name">Middle Name</label>
						<input type="text" class="form-control" id="middle_name" name="middle_name" value="">
					</div>
				</div>

				<div class="mb-3">
					<label for="email">Email * </label>
					<input type="email" class="form-control" id="email" name="email" placeholder="you@example.com" required="">
					<div class="invalid-feedback">
						Please enter a valid email address for updates.
					</div>
				</div>

				<div class="mb-3">
					<label for="permanent_address">Permanent Address * </label>
					<input type="text" class="form-control" id="permanent_address" name="permanent_address" placeholder="1234 Main St" required="">
					<div class="invalid-feedback">
						Please enter your permanent address.
					</div>
				</div>

				<hr class="mb-4">
				<h6 class="mb-3">Delivery Address</h6>
				<div class="d-block my-3">
					<div class="custom-control custom-radio">
						<input id="pick_up_address" name="opt_address" type="radio" class="custom-control-input" checked="" required="" value="0">
						<label class="custom-control-label" for="pick_up_address">Pick-up to <i>Nutri</i>TECH Office</label>
					</div>
					<div class="custom-control custom-radio">
						<input id="own_address" name="opt_address" type="radio" class="custom-control-input" required="" value="1">
						<label class="custom-control-label" for="own_address">Enter my own delivery address * </label>
					</div>
				</div>

				<div class="mb-3">
					<input type="text" class="form-control" id="delivery_address" name="delivery_address" placeholder="Enter your delivery address" value="Pick-up to NutriTECH Office" required="" readonly>
					<div class="invalid-feedback">
						Please enter your delivery address.
					</div>
				</div>
				<hr class="mb-4">

				<div class="row">
					<div class="col-md-6 mb-3">
						<label for="mobile">Mobile Number * </label>
						<input type="text" class="form-control" id="mobile" name="mobile" placeholder="09XXXXXXXXX" required="">
						<div class="invalid-feedback">
							Please enter your mobile number.
						</div>
					</div>

					<div class="col-md-6 mb-3">
						<label for="telephone">Telephone Number <span class="text-muted">(Optional)</span> </label>
						<input type="text" class="form-control" id="telephone" name="telephone">
					</div>
				</div>

				<div class="row">
					<div class="col-md-6 mb-3">
						<label for="country">Country * </label>
						<?php 
							$options = array();
							foreach ($countries as $key) {
								$code = $key['country_code'];
								$options[$code] = $key['country'];
							}
							echo form_dropdown('country', $options, 'PH', 'class="custom-select d-block w-100" id="country" required=""'); 
						?>
						<div class="invalid-feedback">
							Please select a valid country.
						</div>
					</div>
					<div class="col-md-3 mb-3">
						<label for="zip">Zip Code * </label>
						<input type="text" class="form-control" id="zip" name="zip" required="">
						<div class="invalid-feedback">
							Zip code required.
						</div>
					</div>
				</div>

				<hr class="mb-4">
				<h4 class="mb-3"><i>Nutri</i>TECH Distributor</h4>
				<div class="mb-3">
					<label for="distributor">Distributor Name</label>
					<input type="text" class="form-control" id="distributor" value="<?= $distributor->first_name ?> <?= $distributor->last_name ?>" required="" readonly />
				</div>

				<hr class="mb-4">
				<div class="custom-control custom-checkbox">
					<input type="checkbox" class="custom-control-input" id="save-info" name="save-info">
					<label class="custom-control-label" for="save-info">Save this information for next time</label>
				</div>
				<hr class="mb-4">

				<div class="custom-control custom-checkbox">
					<input type="checkbox" class="custom-control-input" id="terms" name="terms" required="">
					<label class="custom-control-label" for="terms">
						I have reviewed the details of my order completely and therefore accept same as final.
						I also agree to the <a href="" data-toggle="modal" data-target="#exampleModalCenter">Terms and Conditions</a>.
						I also agree that <i>Nutri</i>TECH reserves the right to request additional information to comply with the foregoing requirements.  
					</label>
				</div>
				<hr class="mb-4">

				<button class="btn btn-primary btn-lg btn-block" type="submit">Continue to checkout</button>
			</form>
		</div>
	</div>

	<!-- Modal -->
	<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLongTitle">Sales Terms and Conditions</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body" style="overflow-y: scroll;">
					<ol>
						<li><strong>ABOUT THESE TERMS OF SALE</strong>
							<ul>
								<li>These Terms of Sale (&quot;Terms&quot;) set out the terms and conditions that will apply when you place an order through <i>Nutri</i>TECH Shops Online. Please note that the terms and conditions apply when ordering products. If you are unable to understand, or have any questions about these Terms, please contact <i>Nutri</i>TECH. You will be required to confirm that you have read and accept these Terms before you submit an order to <i>Nutri</i>TECH. Please note that these Terms are subject to change so review and save or print a copy of the current terms and conditions prior to each order that you submit.</li>
							</ul>
						</li>

						<li><strong>ORDER AND ACCEPTANCE</strong>
							<ul>
								<li>Each order submitted constitutes an offer to purchase products. Orders are subject to <i>Nutri</i>TECH's acceptance and may be refused at <i>Nutri</i>TECH's discretion, for example in cases where:</li>
								<li>You must pay in full when you place an order.</li>
								<li>We will charge your credit card only upon confirmation of the order.</li>
								<li>You will receive an email or receive a call from <i>Nutri</i>TECH to confirm order.</li>
								<li>If you have any questions, comments or concerns or if you consider that your order was rejected in error, please contact <i>Nutri</i>TECH.
									<ul>
										<li>Orders cannot be processed due to an error in information you have provided;</li>
										<li>There is an error on the web shop relating to the products that you have ordered, for example an error relating to the price or description of the product as displayed on the web shop; or</li>
										<li>Inconsistencies such as multiple transactions on one card with different billing and shipping addresses, telephone area code and Zip code mismatch.</li>
									</ul>
								</li>
							</ul>
						</li>

						<li><strong>PRICING </strong>
							<ul>
								<li>Prices of products in the website are subject to change without prior notice.</li>
								<li>The price may change from the time you put the item in your shopping cart to the time you check out. For example, discounts are applicable depending on the duration of a promotion and the item's availability. Changes may also be due to the fact that actual store prices change as a consequence of supplier price changes or due to current market situations.</li>
								<li>The customer will be duly notified via email regarding the new price of the item purchased, and the customer has the option to push through with the order (under the current/new price), or cancel the order with no charge at all.</li>
							</ul>
						</li>

						<li><strong>PRODUCT AVAILABILITY</strong>
							<ul>
								<li>NutriTECH will have the right, at any time, to make changes to information about products displayed on the web shops, for example information about prices, description or the availability of products and <i>Nutri</i>TECH may do so without first giving you notice of the changes. <i>Nutri</i>TECH will not, however, make any changes to the price, availability or description of any product after an order has been accepted.</li>
							</ul>
						</li>

						<li><strong>DELIVERY</strong>
							<ul>
								<li>Shipping and handling charges will depend on the value of your order and the country to which the product is being shipped.</li>
								<li>Product that is delivered to you will become your property at the time that you receive it provided that <i>Nutri</i>TECH has received full payment for the product. As soon as <i>Nutri</i>TECH has delivered the product to you, you will become responsible for it and for any loss or damage to it thereafter.</li>
							</ul>
						</li>

						<li><strong>SHIPPING</strong>
							<ul>
								<li>Orders are normally dispatched on the next business day following the day the order was confirmed to the customer. Orders for delivery within Metro Manila will be delivered within 2 to 3 days from the process date of the order. Orders to be delivered to a provincial destination within the Philippine will take 3 to 5 days from the process date to be delivered. For international deliveries, standard delivery schedules apply.</li>
								<li>Please note of shipping restrictions indicated per product. Certain items may only be shipped within the Philippines. Should an order with shipping restrictions be placed, <i>Nutri</i>TECH has a right to cancel the order and an email will be sent to inform you of the status of your order.</li>
								<li>NutriTECH does not assume responsibility for and shall not be liable for any damages, whether direct, incidental, special or consequential, arising from the handling and delivery of order goods by the authorized couriers. However, <i>Nutri</i>TECH shall properly coordinate with its authorized courier who is responsible for the shipment, to properly compensate the customer.</li>
							</ul>
						</li>

						<li><strong>RETURN POLICY</strong>
							<ul>
								<li>You may return a Product when you:
									<ul>
										<li>Receive a product that is fundamentally different in nature from the Product specified in the Customer Contract;</li>
										<li>Receive a faulty or damaged Product;</li>
										<li>Wrong item is delivered;</li>
										<li>Receive a product that has missing parts/items;</li>
									</ul>
								</li>
							</ul>
						</li>

						<li><strong>ORDER CANCELLATION POLICY</strong>
							<ul>
								<li>Cancellation Policy:
									<ul>
										<li>You can cancel your order provided that the order has not undergone our shipping process.</li>
										<li>We will make every effort to cancel your order before your order has been shipped to. Note that we ship all orders within 1 working day of receipt. In the event that a cancellation was submitted (via email), after your order has already been shipped the cancellation will be subject to a 20% restocking fee of the merchandise total, and shipping fees will not be refunded, as per our Returns Policy above. Refunds can only be made once the returned order has been received back at our facility.</li>
										<li>Please submit any cancellation promptly in writing via email to <a href="mailto:customercare@wnutritech.com">customercare@wnutritech.com</a> or call <i>Nutri</i>TECH. Email cancellations must contain the following: First name, last name, order number, and email address. This information must be identical to the information originally submitted on your order. Please provide your phone number so that we may contact you if we have questions in regards to canceling your order, or to make arrangements with you in the event that your order has already been shipped before we received notification of cancellation.</li>
										<li>In the event of a cancellation please do not attempt to accept the package otherwise you will be responsible for paying the return shipping fee and insurance to cover loss or damages.
											<ol type="i">
												<li>Within the Philippines - Replacement shall be done at <i>Nutri</i>TECH based on the proximity to the customer's address. Replacement of item/s from customer's who do not live nearby a <i>Nutri</i>TECH will be dealt with on a case to case basis.</li>
												<li>Outside the Philippines - Replacement shall be sent to the customer's address. A notice of replacement shall be issued to the customer. Product and shipment details will be discussed with customer directly.</li>
											</ol>
										</li>
									</ul>
								</li>
								<li>Replacement terms:
									<ul>
										<li>Within the Philippines - Replacement shall be done at <i>Nutri</i>TECH based on the proximity to the customer's address. Replacement of item/s from customer's who do not live nearby a <i>Nutri</i>TECH will be dealt with on a case to case basis.</li>
										<li>Outside the Philippines - Replacement shall be sent to the customer's address. A notice of replacement shall be issued to the customer. Product and shipment details will be discussed with customer directly.</li>
									</ul>
								</li>
								<li>Return Time Policy - Please note that we cannot, under any circumstances, accept any requests for the Return and refund of your order where the time between Delivery and the claim for a Refund exceeds 14 days. When and if you wish to claim we will require satisfactory evidence from you in the form of a document from courier service that clearly indicates the date you received your product/s. This evidence must be scanned and sent to <i>Nutri</i>TECH by email together with your request for a Refund. A notice of replacement shall be issued to the customer once request is approved.</li>
								<li>Refused Items Policy - If ordered product(s) are refused upon delivery, the returned product/s is subject to a 20% restocking fee plus the shipping and handling fees.</li>
								<li>Opened Items - There is a 20% restocking charge for these returns if the shipping package has not been opened and a 50% restocking fee if the package has been opened whether the products have been used or not. Again, plus the shipping and handling fees.</li>
								<li>Returned &amp; Lost Merchandise Policy – <i>Nutri</i>TECH is not responsible for your returned merchandise which has been lost in transit after you have sent it to us. You may want to insure your return because we cannot be held liable for any refund if we don't receive the merchandise.</li>
								<li>Incorrect Address Supplied - All postal services around the world are bound by regulations to only deliver items that have a full and correct address, particularly when the item has been sent by Registered post. If your address is incorrect or incomplete, then your parcel will be returned to us. When deliveries are returned, <i>Nutri</i>TECH will contact you and will confirm that you have provided us with an incorrect postal address details. When you have reconfirmed or corrected your address details, we will correct the delivery address and place the reshipment on hold. We will release your order as soon as we have received your payment for the additional shipping fees. Once your payment has cleared, <i>Nutri</i>TECH will immediately ship your order to you</li>
								<li>NutriTECH reserves the right to limit the number of times that we will accept returns from you.</li>
							</ul>
						</li>

						<li><strong>REFUND POLICY </strong>
							<ul>
								<li>When you use our website or buy a product using our website you agree that we can collect, use and disclose your personal information in accordance with our Privacy Policy. We may for example, disclose information about you to, or receive information from your credit card provider or bank. You agree that <i>Nutri</i>TECH may disclose personal information in connection with the sales of order products. <i>Nutri</i>TECH will use your personal information to process your order and for the delivery of the products ordered and for other limited purposes.</li>
							</ul>
						</li>

						<li><strong>PRIVACY</strong>
							<ul>
								<li>When you use our website or buy a product using our website you agree that we can collect, use and disclose your personal information in accordance with our Privacy Policy. We may for example, disclose information about you to, or receive information from your credit card provider or bank. You agree that <i>Nutri</i>TECH may disclose personal information in connection with the sales of order products. <i>Nutri</i>TECH will use your personal information to process your order and for the delivery of the products ordered and for other limited purposes.</li>
							</ul>
						</li>

						<li><strong><i>Nutri</i>TECH CUSTOMER SERVICE</strong>
							<ul>
								<li>If you have any questions about these Terms, please contact <i>Nutri</i>TECH from Monday to Friday, 09:00am to 08:30pm or Saturday, 08:00am to 06:30pm.</li>
							</ul>
						</li>
					</ol>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>

	<script src="<?php echo base_url(); ?>assets/js/form-validation.js"></script>
	<script type="text/javascript">
		$('input[type="radio"][name="opt_address"]').change( function(){
			if(this.value == '0') {
				$('#delivery_address').attr('readonly', true);
				$('#delivery_address').val('Pick-up to NutriTECH Office');
			} else {
				$('#delivery_address').attr('readonly', false);
				$('#delivery_address').val('');
			}
		});

		$('#first_name').change( function(){
			var last_name = $('#last_name').val();
			if(last_name == ''){
				return;
			} else {
				get_details();
			}
		});

		$('#last_name').change( function(){
			var first_name = $('#first_name').val();
			if(first_name == ''){
				return;
			} else {
				get_details();
			}
		});

		$('#middle_name').change( function(){
			var first_name = $('#first_name').val();
			var last_name = $('#last_name').val();
			if(first_name == '' || last_name == ''){
				return;
			} else {
				get_details();
			}
		});

		$('#customer-info').click( function(){
			var check_info = $('#customer-info').is(":checked");

			if(check_info == false){
				$("#first_name").val('');
				$("#last_name").val('');
				$("#middle_name").val('');
				$("#email").val('');
				$("#permanent_address").val('');
				$('#pick_up_address').prop('checked', true);
				$('#own_address').prop('checked', false);
				$('#delivery_address').attr('readonly', true);
				$('#delivery_address').val('Pick-up to NutriTECH Office');
				$("#mobile").val('');
				$("#telephone").val('');
				$("#country").val('PH');
				$("#zip").val('');
			} else {
				distributor_customer();
			}
		});

		function distributor_customer(){
			$.ajax({
				url: "<?php echo base_url(); ?>carts/distributor_customer",
				type: "POST",
				dataType: "json",
				success: function(data, status){
					$("#first_name").val(data.first_name);
					$("#last_name").val(data.last_name);
					$("#middle_name").val(data.middle_name);
					$("#email").val(data.email);
					$("#permanent_address").val(data.permanent_address);

					if(data.delivery_address == 'Pick-up to NutriTECH Office'){
						$('#pick_up_address').prop('checked', true);
						$('#own_address').prop('checked', false);
						$('#delivery_address').attr('readonly', true);

					} else {
						$('#pick_up_address').prop('checked', false);
						$('#own_address').prop('checked', true);
						$('#delivery_address').attr('readonly', false);
					}

					$("#delivery_address").val(data.delivery_address);
					$("#mobile").val(data.mobile);
					$("#telephone").val(data.telephone);
					$("#zip").val(data.zip);
				}
			});
		}

		function get_details(){
			var last_name = $("#last_name").val();
			var first_name = $("#first_name").val();
			var middle_name = $("#middle_name").val();

			var tmp_name = $('#distributor').val();
			var name = first_name + ' ' + last_name;
			$('#customer-info').prop('checked', false);
			if(tmp_name == name){
				$('#customer-info').prop('checked', true);
				distributor_customer();
			} else {
				$.ajax({
					url: "<?php echo base_url(); ?>carts/check_customer",
					type: "POST",
					dataType: "json",
					data: {
						first_name: first_name,
						last_name: last_name,
						middle_name: middle_name
					},
					success: function(data, status){
						$("#email").val(data.email);
						$("#permanent_address").val(data.permanent_address);

						if(data.delivery_address == 'Pick-up to NutriTECH Office'){
							$('#pick_up_address').prop('checked', true);
							$('#own_address').prop('checked', false);
							$('#delivery_address').attr('readonly', true);

						} else {
							$('#pick_up_address').prop('checked', false);
							$('#own_address').prop('checked', true);
							$('#delivery_address').attr('readonly', false);
						}

						$("#delivery_address").val(data.delivery_address);
						$("#mobile").val(data.mobile);
						$("#telephone").val(data.telephone);
						$("#zip").val(data.zip);
					}
				});
			}
		}
	</script>