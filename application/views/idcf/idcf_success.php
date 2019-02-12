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
		<div class="container px-4 my-0">
			<div class = "row">
				<div class = "mx-auto p-3 border border-dark col-xs-12 col-sm-12 col-md-7 col-lg-7">
					<div>
						<img src = "<?php echo base_url(); ?>assets/images/idcf_member/header.jpg" width='100%' />
					</div><br/>   
					<?php foreach ($member as $row) {?>
						<div>
							<p>
								Happy Day <b><?= $row['last_name'] . ', ' . $row['first_name'] . ' ' . $row['middle_name'] ?></b>!<br/>Welcome to NutriTECH.   
							</p>
							<p>APPLICATION SUCCESSFUL</p>  
							<hr/>   
							Transaction Details :    
							<ol style = "list-style-type: none;"> 
								<li>NutriTECHian Name : <u><?= $row['last_name'] . ', ' . $row['first_name'] . ' ' . $row['middle_name'] ?></u></li> 
								<li>Sponsor : <u>SANTIAGO, CHARITO JORDAN</u></li>
								<li>Team Name : <u>EAGLE - POSITIVE MENTAL ATTITUDE - MINDANAO</u></li>
								<li>Home / Mailing Address : <u><?= $row['n_address'] ?></u></li>
								<li>Birthdate : <u><?= $row['birthdate'] ?></u></li>
								<li>Civil Status : <u><?= $row['civil_status'] ?></u></li>
								<li>Email Address : <u><?= $row['email_address'] ?></u></li>
								<li>Mobile No. : <u><?= $row['n_mobile_no'] ?></u></li>
								<li>Landline : <u><?= $row['home_tel_no'] ?></u></li>    
								<li>Office Tel. No. : <u><?= $row['office_tel_no'] ?></u></li>    
								<li>TIN : <u><?= $row['tin'] ?></u></li>    
								<li>SSS No. : <u><?= $row['sss_no'] ?></u></li>    
								<li>Investment : <u>&#8369; 5,500.00</u></li>
								<li>Spouse's Name : <u>N/A</u></li>
								<li>Spouse's Mobile No. : <u>N/A</u></li>
								<li>Remarks : <u>Will submit payment at NutriTECH Office</u></li>
							</ol>
							<br/>   
							<a href='<?php echo base_url();?>'>Back to home</a>	
						</div>
					<?php }?>
					<div>
					<img src = "<?php echo base_url(); ?>assets/images/idcf_member/footer.jpg" width='100%' />
					</div>
				</div>
			</div>
		</div>
		
		<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/popper.min.js"></script>
		<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/bootstrap.min.js"></script>
	</body>
</html>