<!DOCTYPE html>
<html lang="en">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="description" content="Shop Online Page and Portal Page for Nutritech Alliance Corporation.">
		<meta name="author" content="Jomar Gregorio, Ricardo Lasala, and Other contributors">
		<meta name="generator" content="Shop Online 2.0.0">
		<title>Nutritech - Shop Online</title>
		<!-- Website Icon -->
		<link rel="icon" type="image/png" href="<?php echo base_url(); ?>assets/images/favicon.ico" />
		<!-- Bootstrap core CSS -->
		<link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/css/bootstrap.min.css" />
		<!-- Icons -->
		<link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/fontawesome/css/all.min.css" />
		<!-- Custom styles for this template -->
		<link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/css/custom.css" />

		<!-- Load first jquery to do custom js-->
		<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/jquery-3.3.1.min.js"></script>
		<link rel="stylesheet" type="text/css" href="<?= base_url('assets/css/form-validation.css'); ?>">
	</head>
	<body>
		
		<div class="container px-4 my-0">
			<div class = "row">
				<div class = "mx-auto p-3 border border-dark col-xs-12 col-sm-12 col-md-6 col-lg-6">
					<div>
						<img src = "<?php echo base_url(); ?>assets/images/idcf_member/header.jpg" width='100%' />
					</div><br/>   
						<?php foreach ($member as $row) {?>
							
						<div class = 'row'>
							<div class = 'col-xs-12 col-sm-12 col-md-12 col-lg-12'>
								<p>
								Happy Day <b><?= $row['full_name']?></b>!<br/>Welcome to NutriTECH.   
							</p>
							<p>APPLICATION SUCCESSFUL</p> 
								<hr/>   
								Transaction Details :
								<div class= 'row'>
									<div class = 'col-xs-12 col-sm-12 col-md-4 col-lg-4'>
										NutriTECHian Name :
									</div>
									<div class = 'col-xs-12 col-sm-12 col-md-8 col-lg-8'>
										<?= $row['full_name']?>
									</div>
									<div class = 'col-xs-12 col-sm-12 col-md-4 col-lg-4'>
										Sponsor :
									</div>
								
									<div class = 'col-xs-12 col-sm-12 col-md-8 col-lg-8'>
										<?=$row['sp_full_name'];?>
									</div>
									<div class = 'col-xs-12 col-sm-12 col-md-4 col-lg-4'>
										Team Name :
									</div>
									<div class = 'col-xs-12 col-sm-12 col-md-8 col-lg-8'>
										<?=$row['team_area'];?>
									</div>
								
									<div class = 'col-xs-12 col-sm-12 col-md-4 col-lg-4'>
										Home / Mailing Address :
									</div>
									<div class = 'col-xs-12 col-sm-12 col-md-8 col-lg-8'>
										<?= $row['n_address'] ?>
									</div>
									<div class = 'col-xs-12 col-sm-12 col-md-4 col-lg-4'>
										Birthdate :
									</div>
									<div class = 'col-xs-12 col-sm-12 col-md-8 col-lg-8'>
										<?= $row['birthdate'] ?>
									</div>
									<div class = 'col-xs-12 col-sm-12 col-md-4 col-lg-4'>
										Civil Status :
									</div>
									<div class = 'col-xs-12 col-sm-12 col-md-8 col-lg-8'>
										<?= $row['civil_status'] ?>
									</div>
									<div class = 'col-xs-12 col-sm-12 col-md-4 col-lg-4'>
										Email Address :
									</div>
									<div class = 'col-xs-12 col-sm-12 col-md-8 col-lg-8'>
										<?= $row['email'] ?>
									</div>
									<div class = 'col-xs-12 col-sm-12 col-md-4 col-lg-4'>
										Mobile No. :
									</div>
									<div class = 'col-xs-12 col-sm-12 col-md-8 col-lg-8'>
										<?= $row['mobile_no'] ?>
									</div>
									<div class = 'col-xs-12 col-sm-12 col-md-4 col-lg-4'>
										Landline :
									</div>
									<div class = 'col-xs-12 col-sm-12 col-md-8 col-lg-8'>
										<?= $row['home_no'] ?>
									</div>
									<div class = 'col-xs-12 col-sm-12 col-md-4 col-lg-4'>
										Office Tel. No. :
									</div>
									<div class = 'col-xs-12 col-sm-12 col-md-8 col-lg-8'>
										<?= $row['office_no'] ?>
									</div>
									<div class = 'col-xs-12 col-sm-12 col-md-4 col-lg-4'>
										TIN No. :
									</div>
									<div class = 'col-xs-12 col-sm-12 col-md-8 col-lg-8'>
										<?= $row['tin_no'] ?>
									</div>
									<div class = 'col-xs-12 col-sm-12 col-md-4 col-lg-4'>
										SSS No. :
									</div>
									<div class = 'col-xs-12 col-sm-12 col-md-8 col-lg-8'>
										<?= $row['sss_no'] ?>
									</div>
									<div class = 'col-xs-12 col-sm-12 col-md-4 col-lg-4'>
										Spouse's Name :
									</div>
									<div class = 'col-xs-12 col-sm-12 col-md-8 col-lg-8'>
										<?= $row['s_full_name']?>
									</div>
									<div class = 'col-xs-12 col-sm-12 col-md-4 col-lg-4'>
										Spouse's Mobile No. :
									</div>
									<div class = 'col-xs-12 col-sm-12 col-md-8 col-lg-8'>
										<?= $row['s_mobile_no']?>
									</div>
									<div class = 'col-xs-12 col-sm-12 col-md-4 col-lg-4'>
										Investment : 
									</div>
									<div class = 'col-xs-12 col-sm-12 col-md-8 col-lg-8'>
										&#8369; <?= $row['admin_fee']?>
									</div>
									<div class = 'col-xs-12 col-sm-12 col-md-4 col-lg-4'>
										Remarks :
									</div>
									<div class = 'col-xs-12 col-sm-12 col-md-8 col-lg-8'>
										<?= $row['remarks']?>
									</div>
								</div>
							</div>
						</div>

						
					<?php }?>
					<a href='<?php echo base_url();?>'>Back to home</a>
					<div>
						<img src = "<?php echo base_url(); ?>assets/images/idcf_member/footer.jpg" width='100%' />
					</div>
				</div>
			</div>
		</div>
		<!--
 <div class="container">
      <div class="py-5 text-center">
        <img class="d-block mx-auto mb-4" src="https://getbootstrap.com/docs/4.0/assets/brand/bootstrap-solid.svg" alt="" width="72" height="72">
        <h2>Checkout form</h2>
        <p class="lead">Below is an example form built entirely with Bootstrap's form controls. Each required form group has a validation state that can be triggered by attempting to submit the form without completing it.</p>
      </div>

      <div class="row">
        <div class="col-md-4 order-md-2 mb-4">
          <h4 class="d-flex justify-content-between align-items-center mb-3">
            <span class="text-muted">Your cart</span>
            <span class="badge badge-secondary badge-pill">3</span>
          </h4>
          <ul class="list-group mb-3">
            <li class="list-group-item d-flex justify-content-between lh-condensed">
              <div>
                <h6 class="my-0">Product name</h6>
                <small class="text-muted">Brief description</small>
              </div>
              <span class="text-muted">$12</span>
            </li>
            <li class="list-group-item d-flex justify-content-between lh-condensed">
              <div>
                <h6 class="my-0">Second product</h6>
                <small class="text-muted">Brief description</small>
              </div>
              <span class="text-muted">$8</span>
            </li>
            <li class="list-group-item d-flex justify-content-between lh-condensed">
              <div>
                <h6 class="my-0">Third item</h6>
                <small class="text-muted">Brief description</small>
              </div>
              <span class="text-muted">$5</span>
            </li>
            <li class="list-group-item d-flex justify-content-between bg-light">
              <div class="text-success">
                <h6 class="my-0">Promo code</h6>
                <small>EXAMPLECODE</small>
              </div>
              <span class="text-success">-$5</span>
            </li>
            <li class="list-group-item d-flex justify-content-between">
              <span>Total (USD)</span>
              <strong>$20</strong>
            </li>
          </ul>

          <form class="card p-2">
            <div class="input-group">
              <input type="text" class="form-control" placeholder="Promo code">
              <div class="input-group-append">
                <button type="submit" class="btn btn-secondary">Redeem</button>
              </div>
            </div>
          </form>
        </div>
        <div class="col-md-8 order-md-1">
          <h4 class="mb-3">Billing address</h4>
          <form class="needs-validation" novalidate>
            <div class="row">
              <div class="col-md-6 mb-3">
                <label for="firstName">First name</label>
                <input type="text" class="form-control" id="firstName" placeholder="" value="" required>
                <div class="invalid-feedback">
                  Valid first name is required.
                </div>
              </div>
              <div class="col-md-6 mb-3">
                <label for="lastName">Last name</label>
                <input type="text" class="form-control" id="lastName" placeholder="" value="" required>
                <div class="invalid-feedback">
                  Valid last name is required.
                </div>
              </div>
            </div>

            <div class="mb-3">
              <label for="username">Username</label>
              <div class="input-group">
                <div class="input-group-prepend">
                  <span class="input-group-text">@</span>
                </div>
                <input type="text" class="form-control" id="username" placeholder="Username" required>
                <div class="invalid-feedback" style="width: 100%;">
                  Your username is required.
                </div>
              </div>
            </div>

            <div class="mb-3">
              <label for="email">Email <span class="text-muted">(Optional)</span></label>
              <input type="email" class="form-control" id="email" placeholder="you@example.com">
              <div class="invalid-feedback">
                Please enter a valid email address for shipping updates.
              </div>
            </div>

            <div class="mb-3">
              <label for="address">Address</label>
              <input type="text" class="form-control" id="address" placeholder="1234 Main St" required>
              <div class="invalid-feedback">
                Please enter your shipping address.
              </div>
            </div>

            <div class="mb-3">
              <label for="address2">Address 2 <span class="text-muted">(Optional)</span></label>
              <input type="text" class="form-control" id="address2" placeholder="Apartment or suite">
            </div>

            <div class="row">
              <div class="col-md-5 mb-3">
                <label for="country">Country</label>
                <select class="custom-select d-block w-100" id="country" required>
                  <option value="">Choose...</option>
                  <option>United States</option>
                </select>
                <div class="invalid-feedback">
                  Please select a valid country.
                </div>
              </div>
              <div class="col-md-4 mb-3">
                <label for="state">State</label>
                <select class="custom-select d-block w-100" id="state" required>
                  <option value="">Choose...</option>
                  <option>California</option>
                </select>
                <div class="invalid-feedback">
                  Please provide a valid state.
                </div>
              </div>
              <div class="col-md-3 mb-3">
                <label for="zip">Zip</label>
                <input type="text" class="form-control" id="zip" placeholder="" required>
                <div class="invalid-feedback">
                  Zip code required.
                </div>
              </div>
            </div>
            <hr class="mb-4">
            <div class="custom-control custom-checkbox">
              <input type="checkbox" class="custom-control-input" id="same-address">
              <label class="custom-control-label" for="same-address">Shipping address is the same as my billing address</label>
            </div>
            <div class="custom-control custom-checkbox">
              <input type="checkbox" class="custom-control-input" id="save-info">
              <label class="custom-control-label" for="save-info">Save this information for next time</label>
            </div>
            <hr class="mb-4">

            <h4 class="mb-3">Payment</h4>

            <div class="d-block my-3">
              <div class="custom-control custom-radio">
                <input id="credit" name="paymentMethod" type="radio" class="custom-control-input" checked required>
                <label class="custom-control-label" for="credit">Credit card</label>
              </div>
              <div class="custom-control custom-radio">
                <input id="debit" name="paymentMethod" type="radio" class="custom-control-input" required>
                <label class="custom-control-label" for="debit">Debit card</label>
              </div>
              <div class="custom-control custom-radio">
                <input id="paypal" name="paymentMethod" type="radio" class="custom-control-input" required>
                <label class="custom-control-label" for="paypal">Paypal</label>
              </div>
            </div>
            <div class="row">
              <div class="col-md-6 mb-3">
                <label for="cc-name">Name on card</label>
                <input type="text" class="form-control" id="cc-name" placeholder="" required>
                <small class="text-muted">Full name as displayed on card</small>
                <div class="invalid-feedback">
                  Name on card is required
                </div>
              </div>
              <div class="col-md-6 mb-3">
                <label for="cc-number">Credit card number</label>
                <input type="text" class="form-control" id="cc-number" placeholder="" required>
                <div class="invalid-feedback">
                  Credit card number is required
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-md-3 mb-3">
                <label for="cc-expiration">Expiration</label>
                <input type="text" class="form-control" id="cc-expiration" placeholder="" required>
                <div class="invalid-feedback">
                  Expiration date required
                </div>
              </div>
              <div class="col-md-3 mb-3">
                <label for="cc-expiration">CVV</label>
                <input type="text" class="form-control" id="cc-cvv" placeholder="" required>
                <div class="invalid-feedback">
                  Security code required
                </div>
              </div>
            </div>
            <hr class="mb-4">
            <button class="btn btn-primary btn-lg btn-block" type="submit">Continue to checkout</button>
          </form>
        </div>
      </div>
 <script>
      // Example starter JavaScript for disabling form submissions if there are invalid fields
      (function() {
        'use strict';

        window.addEventListener('load', function() {
          // Fetch all the forms we want to apply custom Bootstrap validation styles to
          var forms = document.getElementsByClassName('needs-validation');

          // Loop over them and prevent submission
          var validation = Array.prototype.filter.call(forms, function(form) {
            form.addEventListener('submit', function(event) {
              if (form.checkValidity() === false) {
                event.preventDefault();
                event.stopPropagation();
              }
              form.classList.add('was-validated');
            }, false);
          });
        }, false);
      })();
    </script>
  -->
		<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/popper.min.js"></script>
		<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/bootstrap.min.js"></script>
	</body>
</html>