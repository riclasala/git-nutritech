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

		<link rel="stylesheet" type="text/css" href="<?= base_url('assets/css/bootstrap-imageupload.css'); ?>">

		<!-- Load first jquery to do custom js-->
		<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/jquery-3.3.1.min.js"></script>
	</head>
	<body>
		<!-- Navigation -->
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
			<div class="container">
				<small>
					<a href="<?php echo base_url(); ?>members/carts" class="text-white" style="text-decoration: none;"><i class="fas fa-shopping-cart"></i> My Cart </a> &nbsp;&nbsp;
					<a href="<?php echo base_url(); ?>members/checkout" class="text-white" style="text-decoration: none;"><i class="fas fa-check"></i> Check Out </a>
				</small>
				<small class="pull-right">
					<a href="<?php echo base_url(); ?>members/logout" class="text-white" style="text-decoration: none;"><i class="fas fa-power-off"></i> Sign Out</a>
				</small>
			</div>
		</nav>
		<nav class="navbar navbar-expand-lg navbar-light fixed-top" style="background-color: #e3f2fd; margin-top: 33px;">
			<div class="container">
				<a class="navbar-brand" href="<?php echo base_url(); ?>members">
					<div class="row">
						<div class="col-2"><img src="<?php echo base_url(); ?>assets/images/logo.png" width="30" height="30"></div>
						<div class="col-4"><small>Welcome <?php echo $_SESSION['brand_title']; ?></small></div>
					</div>
				</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarResponsive">
					<ul class="navbar-nav ml-auto">
						<li class="nav-item active">
							<a class="nav-link" href="<?php echo base_url(); ?>members">Home <span class="sr-only">(current)</span></a>
						</li>
						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								Cooking
							</a>
							<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
								<a class="dropdown-item" href="<?php echo base_url(); ?>members/cookware_specials">Cookware Specials</a>
								<a class="dropdown-item" href="<?php echo base_url(); ?>members/touch_of_class">A Touch of Class Cookware</a>
								<a class="dropdown-item" href="<?php echo base_url(); ?>members/fine_bone_china">Fine Bone China Collection</a>
								<a class="dropdown-item" href="<?php echo base_url(); ?>members/cyrstal">Fine Crystal Collection</a>
								<a class="dropdown-item" href="<?php echo base_url(); ?>members/tableware">Adrian Fine Tableware w/ Inlaid Gold</a>
								<a class="dropdown-item" href="<?php echo base_url(); ?>members/cutlery">Professional Cutlery Collection</a>
							</div>
						</li>
						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								Drinking
							</a>
							<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
								<a class="dropdown-item" href="<?php echo base_url(); ?>members/food_processing">Professional Juice and Food Processing</a>
								<a class="dropdown-item" href="<?php echo base_url(); ?>members/water_filtration">Water Filtration</a>
							</div>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="<?php echo base_url(); ?>members/air_purification">Breathing</a>
						</li>
						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								Lifestyle
							</a>
							<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
								<a class="dropdown-item" href="<?php echo base_url(); ?>members/fastbreak">Fastbreak</a>
								<a class="dropdown-item" href="<?php echo base_url(); ?>members/kitchen_accessories">Kitchen Accessories</a>
							</div>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="<?php echo base_url(); ?>members/first_class">First Class Collection</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="<?php echo base_url(); ?>members/booster">Booster</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="<?php echo base_url(); ?>members/membership">Membership</a>
						</li>
					</ul>
				</div>
			</div>
		</nav>

		<!-- Page Content -->
		<div class="container">