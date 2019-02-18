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
	</head>
	<body>
		<!-- Navigation -->
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
			<div class="container">
				<small>
					<a href="<?php echo base_url(); ?>carts" class="text-white" style="text-decoration: none;"><i class="fas fa-shopping-cart"></i> My Cart </a> &nbsp;&nbsp;
					<a href="<?php echo base_url(); ?>checkout" class="text-white" style="text-decoration: none;"><i class="fas fa-check"></i> Check Out </a>
				</small>
				<small class="pull-right">
					<a href="<?php echo base_url(); ?>logout" class="text-white" style="text-decoration: none;"><i class="fas fa-power-off"></i> Sign Out</a>
				</small>
			</div>
		</nav>
		<nav class="navbar navbar-expand-lg navbar-light fixed-top" style="background-color: #e3f2fd; margin-top: 33px;">
			<div class="container">
				<a class="navbar-brand" href="<?php echo base_url(); ?>">
					<img src="<?php echo base_url(); ?>assets/images/logo.png" width="150" height="30" alt="NutriTECH">
				</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarResponsive">
					<ul class="navbar-nav ml-auto">
						<li class="nav-item active">
							<a class="nav-link" href="<?php echo base_url(); ?>">Home <span class="sr-only">(current)</span></a>
						</li>
						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								Cooking
							</a>
							<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
								<a class="dropdown-item" href="<?php echo base_url(); ?>cookware_specials">Cookware Specials</a>
								<a class="dropdown-item" href="<?php echo base_url(); ?>touch_of_class">A Touch of Class Cookware</a>
								<a class="dropdown-item" href="<?php echo base_url(); ?>fine_bone_china">Fine Bone China Collection</a>
								<a class="dropdown-item" href="<?php echo base_url(); ?>cyrstal">Fine Crystal Collection</a>
								<a class="dropdown-item" href="<?php echo base_url(); ?>tableware">Adrian Fine Tableware w/ Inlaid Gold</a>
								<a class="dropdown-item" href="<?php echo base_url(); ?>cutlery">Professional Cutlery Collection</a>
							</div>
						</li>
						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								Drinking
							</a>
							<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
								<a class="dropdown-item" href="<?php echo base_url(); ?>food_processing">Professional Juice and Food Processing</a>
								<a class="dropdown-item" href="<?php echo base_url(); ?>water_filtration">Water Filtration</a>
							</div>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="<?php echo base_url(); ?>air_purification">Breathing</a>
						</li>
						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								Lifestyle
							</a>
							<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
								<a class="dropdown-item" href="<?php echo base_url(); ?>fastbreak">Fastbreak</a>
								<a class="dropdown-item" href="<?php echo base_url(); ?>kitchen_accessories">Kitchen Accessories</a>
							</div>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="<?php echo base_url(); ?>first_class">First Class Collection</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="<?php echo base_url(); ?>booster">Booster</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="<?php echo base_url(); ?>membership">Membership</a>
						</li>
					</ul>
				</div>
			</div>
		</nav>

		<!-- Page Content -->
		<div class="container">