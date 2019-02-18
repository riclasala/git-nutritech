<!DOCTYPE html>
<html lang="en">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<meta name="description" content="Shop Online Page and Portal Page for Nutritech Alliance Corporation.">
		<meta name="author" content="Jomar Gregorio, Ricardo Lasala, and Other contributors">
		<meta name="generator" content="Shop Online 2.0.0">
		<title>Nutritech - Shop Online</title>
		<!-- Website Icon -->
		<link rel="icon" type="image/png" href="<?php echo base_url(); ?>assets/images/favicon.ico" />
		<!-- Bootstrap core CSS -->
		<link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/css/bootstrap.min.css" />
		<!-- Custom styles for this template -->
		<link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/css/floating-labels.css" />
		<!-- Icons -->
		<link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/fontawesome/css/all.min.css" />
		<style>
			.bd-placeholder-img {
				font-size: 1.125rem;
				text-anchor: middle;
			}

			@media (min-width: 768px) {
				.bd-placeholder-img-lg {
					font-size: 3.5rem;
				}
			}
		</style>
		<!-- Load first jquery to do custom js-->
		<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/jquery-3.3.1.min.js"></script>
	</head>
	<body>
		<?php echo form_open('members/signin', 'class="form-signin"'); ?>
			<div class="text-center mb-4">
				<img class="mb-4" src="<?php echo base_url(); ?>assets/images/big-logo.png" width="360" alt="NutriTECH">
				<h1 class="h3 mb-3 font-weight-normal">Shop Online</h1>
				<p class="mt-5 mb-3 text-muted text-center">Please Sign In</p>
			</div>
			<div class="form-label-group">
				<input type="username" id="inputuser" name="username" class="form-control" placeholder="NTACH Code" required autofocus>
				<label for="inputuser">NTACH Code</label>
				<span id="user_details"><?= $error ?></span>
			</div>

			<div class="form-label-group">
				<input type="password" id="inputpassword" name="password" class="form-control" placeholder="Password" required>
				<label for="inputpassword">Password</label>
			</div>
			
			<button class="btn btn-lg btn-primary btn-block" type="submit" name="signin">Sign in</button><br />
			<p>Happy Day! Please enter a <code>valid transaction only</code>. Refrain from testing as it may lead to blocking your account. Thank you.
			</p>
			<p class="mt-5 mb-3 text-muted text-center">Copyright &copy; NutriTECH Alliance Corporation 2019</p>
		</form>
	</body>

	<script type="text/javascript">
		$('#inputuser').change( function(){
			var username = $('#inputuser').val();
			checkUser(username);
		});

		function checkUser(username){
			page_type = 'member';

			$.ajax({
				url: "<?php echo base_url(); ?>login/check_user",
				type: 'POST',
				data: {
					username: username,
					page_type: page_type
				},
				success: function(data, status){
					$('#user_details').html(data);
				}
			});
		}
	</script>
</html>