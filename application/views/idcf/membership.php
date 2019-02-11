<div class="container-fluid">
	<?php echo form_open_multipart("idcf/save_idcf", array("id" => "form-idcf", "class" => "form-horizontal")) ?>
		<center><h4 class="my-4">CERTIFIED CONSULTANT'S INFORMATION</h4></center>
		<div class="row">
			<div class="col-sm-3">
				<!--Image Upload Here-->
	    		<div class = "imageupload panel panel-default">
					<div Class = "file-tab panel-body" style = "height: 220px; min-height: 220px;">
						<img src = "<?= base_url('assets/images/avatar.png') ?>" class="img-circle" style = "width: 100%; height: 150px; min-height: 150px; border: 1px solid #ddd; margin-bottom: 10px; padding: 4px;" alt = "Image Preview" />
						<label Class = "btn btn-default btn-file">
							<span>Choose Profile</span>
							<!-- The file is stored here. -->
							<input type = "file" name = "image_file" id = "d_file_img" accept='image/*' style = "display: block; font-size: inherit; width: 100%;"/>
						</label>
						<button type = "button" class = "btn btn-default" id = "r_img">Remove</button>
					</div>			
				</div>
	    	</div>
			<div class="col-sm-9"">
				<div class="row">
	        		<div class="form-group col-xs-12 col-sm-12 col-md-4 col-lg-4">
	        			<label for = "last_name">Last Name *</label>
            			<input type = "text" class = "form-control" placeholder = "Last Name" id = "last_name" name = "last_name" />
	        		</div>
	        		<div class="form-group col-xs-12 col-sm-12 col-md-4 col-lg-4">
	        			<label for = "first_name">First Name *</label>
						<input type = "text" class = "form-control" placeholder = "First Name" id = "first_name" name = "first_name" />
	        		</div>
	        		<div class="form-group col-xs-12 col-sm-12 col-md-4 col-lg-4">
	        			<label for = "middle_name">Middle Name </label>
						<input type = "text" class = "form-control" placeholder = "Middle Name" id = "middle_name" name = "middle_name" />
	        		</div>
	        		<div class="form-group col-xs-12 col-sm-12 col-md-4 col-lg-4">
	        			<label for = "nick_name">Nick Name</label>
						<input type = "text" class = "form-control" placeholder = "Nick Name" id = "nick_name" name = "nick_name"  />
	        		</div>
	        		<div class = "form-group col-xs-12 col-sm-12 col-md-4 col-lg-4">
						<label for = "tin">TIN</label>
						<input type = "text" class = "form-control" placeholder = "TIN" id = "tin_no" name = "tin_no"  />
					</div>
					<div class = "form-group col-xs-12 col-sm-12 col-md-4 col-lg-4">
						<label for = "sss">SSS#</label>
						<input type = "text" class = "form-control" placeholder = "SSS#" id = "sss_no" name = "sss_no"  />
					</div>
					<div class = "form-group col-xs-12 col-sm-12 col-md-12 col-lg-12">
						<label for = "home_address">NutriTECHian's Complete Home/Mailing Address *</label>
						<input type = "text" class = "form-control" placeholder = "Complete Address" id = "home_address"  name = "home_address" />
					</div>
					<div class = "form-group col-xs-12 col-sm-12 col-md-4 col-lg-4">
						<!-- start birthdate must display 18 years old & up-->
						<?php $time = strtotime("-18 year", time());?>
						<label for = "bday">Birthday *</label>
						<input type = "date" class = "form-control" placeholder = "Birthday" id = "bday" name = "bday" min = "1900-01-01" max=<?= date("Y-m-d", $time); ?> />
					</div>
					<div class = "form-group col-xs-12 col-sm-12 col-md-4 col-lg-4">
						<label for = "civil_status">Status</label>	
						<select class = "form-control" id = "civil_status" name = "civil_status">
							<option value = "single">Single</option>
							<option value = "married">Married</option>
							<option value = "separated">Separated</option>
							<option value = "widow">Widow</option>
						</select>
					</div>
					<div class = "form-group col-xs-12 col-sm-12 col-md-4 col-lg-4">
						<label for = "email">Email</label>
						<input type = "email" class = "form-control" placeholder = "Email Address" id = "email" name = "email" autocomplete = "off" />
					</div>
					<div class = "form-group col-xs-12 col-sm-12 col-md-4 col-lg-4">
						<label for = "mobile_no">Mobile *</label>
						<input type = "" class = "form-control" placeholder = "Mobile No." id = "mobile_no" name = "mobile_no" autocomplete = "off" />
					</div>
					<div class = "form-group col-xs-12 col-sm-12 col-md-4 col-lg-4">
						<label for = "home_tel_no">Landline</label>
						<input type = "" class = "form-control" placeholder = "Landline" id = "home_tel_no" name = "home_tel_no" />
					</div>
					<div class = "form-group col-xs-12 col-sm-12 col-md-4 col-lg-4">
						<label for = "office_tel_no">Office Tel. No.</label>
						<input type = "" class = "form-control" placeholder = "Office Tel. No." id = "office_tel_no" name = "office_tel_no" />
					</div>
			    </div>
			</div>
	    	
		</div>
		<center><h4 class="my-4">SPOUSE'S INFORMATION</h4></center>
		<div class = "row">
			<div class = "form-group col-xs-12 col-sm-12 col-md-3 col-lg-3">
				<label for = "s_last_name">Last Name</label>
				<input type = "text" class = "form-control spouse_info" placeholder = "Last Name" id = "s_last_name" name = "s_last_name" />
			</div>
			<div class = "form-group col-sm-12 col-md-3 col-lg-3">
				<label for = "s_first_name">First Name</label>
				<input type = "text" class = "form-control spouse_info" placeholder = "First Name" id = "s_first_name" name = "s_first_name" />
			</div>
			<div class = "form-group col-xs-12 col-sm-12 col-md-3 col-lg-3">
				<label for = "s_middle_name">Middle Name</label>
				<input type = "text" class = "form-control spouse_info" placeholder = "Middle Name" id = "s_middle_name"  name = "s_middle_name" />
			</div>
			<div class = "form-group col-xs-12 col-sm-12 col-md-3 col-lg-3">
				<label for = "s_mobile_no">Mobile</label>
				<input type = "text" class = "form-control spouse_info" placeholder = "Mobile No." id = "s_mobile_no"  name = "s_mobile_no" />
			</div>
		</div>
		<center><h4 class="my-4">SPONSOR'S INFORMATION</h4></center>
		<div class = "row">
			<?php foreach($member as $distributor){ ?>
				<input type = "hidden" class = "form-control" placeholder = "ID" id = "sponsor_id" name = "sponsor_id" readonly = "" value = "<?= $distributor['id']; ?>" />
				<div class = "form-group col-xs-12 col-sm-12 col-md-2 col-lg-2">
					<label for = "sponsor_last_name">Last Name *</label>
					<input type = "text" class = "form-control" placeholder = "Last Name" id = "sponsor_last_name" readonly = "" value = "<?= $distributor['last_name']; ?>" />
				</div>
				<div class = "form-group col-xs-12 col-sm-12 col-md-2 col-lg-2">
					<label for = "sponsor_first_name">First Name *</label>
					<input type = "text" class = "form-control" placeholder = "First Name" id = "sponsor_first_name" readonly = "" value = "<?= $distributor['first_name']; ?>" />
				</div>
				<div class = "form-group col-xs-12 col-sm-12 col-md-2 col-lg-2">
					<label for = "sponsor_middle_name">Middle Name *</label>
					<input type = "text" class = "form-control" placeholder = "Middle Name" id = "sponsor_middle_name" readonly = "" value = "<?= $distributor['middle_name']; ?>" />
				</div>
				<div class = "form-group col-xs-12 col-sm-12 col-md-2 col-lg-2">
					<label for = "sponsor_ntac_code">NTAC Code *</label>
					<input type = "text" class = "form-control" placeholder = "NTAC Code" id = "sponsor_ntac_code"  readonly = "" value = "<?= $distributor['distributor_code']; ?>" />
				</div>
				<div class = "form-group col-xs-12 col-sm-12 col-md-4 col-lg-4">
					<label for = "sponsor_team_name">Team Name *</label>
					<input type = "text" class = "form-control" placeholder = "NTAC Code" id = "sponsor_team_name"  readonly = "" value = "<?= $distributor['team_area']; ?>" />
				</div>
			<?php } ?>
		</div>
		<button class="btn btn-primary btn-lg btn-block" type="submit">Submit</button>
	</form>
</div>

<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/bootstrap-imageupload.min.js"></script>
<script>
	
	var $imageupload = $('.imageupload');
	$imageupload.imageupload();

	$('#imageupload-disable').on('click', function() {
		$imageupload.imageupload('disable');
		$(this).blur();
	})

	$('#imageupload-enable').on('click', function() {
		$imageupload.imageupload('enable');
		$(this).blur();
	})

	$('#imageupload-reset').on('click', function() {
		$imageupload.imageupload('reset');
		$(this).blur();
	});
	$("#r_img").on("click", function(){
		//$("#dummy_file_img").removeClass("thumbnail");
		$("#dummy_file_img").attr("src", "<?= base_url('assets/images/avatar.png') ?>");
		$("#dummy_file_img").attr("style", "width: 100%; height: 150px; min-height: 150px; border: 1px solid #ddd; margin-bottom: 10px; padding: 4px;");

	});
</script>

		
