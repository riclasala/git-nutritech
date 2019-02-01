<div class = "single-product-area">
	<div class = "zigzag-bottom"></div>
	<div class = "container">
		<div class = "col-sm-12 col-md-12 col-xs-12 col-lg-12">
			<?php echo form_open_multipart("pages/save_idcf", array("id" => "form-idcf", "class" => "form-horizontal")) ?>
				<div class = "panel panel-default">
					<div class = "panel-heading">
						<h3 class = "panel-title text-center">CERTIFIED CONSULTANT'S INFORMATION</h3>
					</div>
					<div class = "panel-body">
						<p class = "text-center" style = "color: red; font-weight: bolder;">* REQUIRED INFORMATION TO BE FILLED IN</p>
						<div class = "row">
							<div class = "col-xs-12 col-sm-12 col-md-9 col-lg-9">
								<div class = "form-group col-xs-12 col-sm-12 col-md-4 col-lg-4">
									<label for = "last_name">Last Name *</label>
									<input type = "text" class = "form-control" placeholder = "Last Name" id = "last_name" name = "last_name" />
								</div>
								<div class = "form-group col-xs-12 col-sm-12 col-md-4 col-lg-4">
									<label for = "first_name">First Name *</label>
									<input type = "text" class = "form-control" placeholder = "First Name" id = "first_name" name = "first_name" />
								</div>
								<div class = "form-group col-xs-12 col-sm-12 col-md-4 col-lg-4">
									<label for = "middle_name">Middle Name </label>
									<input type = "text" class = "form-control" placeholder = "Middle Name" id = "middle_name" name = "middle_name" />
								</div>
								<div class = "form-group col-xs-12 col-sm-12 col-md-4 col-lg-4">
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
									<label for = "bday">Birthday *</label>
									<input type = "date" class = "form-control" placeholder = "Birthday" id = "bday" name = "bday" />
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
							<div class = "col-xs-12 col-sm-12 col-md-3 col-lg-3">
								<!--
								<div class = "col-sm-12 col-md-12 col-xs-12 col-lg-12">
									<label for = "civil_stat">Civil Status</label>
									<select name = "civil_status" class = "form-control" id = "civil_stat">
										<option>-- Select one --</option>
										<option value = "single">Single</option>
										<option value = "married">Married</option>
										<option value = "separated">Separated</option>
										<option value = "widow">Widow</option>
									</select>
								</div>
								-->
								<!--
								<div class = "col-xs-12 col-sm-12 col-md-12 col-lg-12">
									<p>Investment:</p>
									<label for = "ia_2990" class = "radio-inline"><input type = "radio" name = "admin_fee" id = "ia_2990" value = "5500.00" /><b>&#8369;<?= number_format(5500, 2); ?></b></label>
									<label for = "ia_12920" class = "radio-inline"><input type = "radio" name = "admin_fee" id = "ia_12920" checked = "" value = "14920.00" /><b>&#8369;<?= number_format(14920, 2); ?></b></label>
								</div>
								-->
								<!--
								<img style = "border: 1px dashed black; height: 250px; width: 100%;" id = "d_img" />
								<br/>
								<br/>
								<input type = "file" name = "distributor_photo" id = "" />-->
								<br/>
								<div class = "imageupload panel panel-default" style = "margin-bottom: 0px; margin-top: 4px;">
									<div Class = "panel-heading clearfix">
										<h3 Class = "panel-title pull-left text-center">Upload Image *</h3>
										<!--
										<div Class = "btn-group pull-right">
											<button type="button" Class = "btn btn-default active">File</button>
											<button type="button" Class = "btn btn-default">URL</button>
										</div>
										-->
									</div>
									<div Class = "file-tab panel-body" style = "height: 220px; min-height: 220px;">
										<img src = "<?= base_url('assets/images/avatar.png') ?>" id = "dummy_file_img" style = "width: 100%; height: 150px; min-height: 150px; border: 1px solid #ddd; margin-bottom: 10px; padding: 4px;" alt = "Image Preview" />
										<label Class = "btn btn-default btn-file">
											<span>Browse</span>
											<!-- The file is stored here. -->
											<input type = "file" name = "image_file" id = "d_file_img" <!--required style = "display: block; font-size: inherit; width: 100%;"--> />
										</label>
										<button type = "button" class = "btn btn-default" id = "r_img">Remove</button>
									</div>
									<!--
									<div Class = "url-tab panel-body">
										<div Class = "input-group">
											<input type="text" Class = "form-control hasclear" placeholder="Image URL">
											<div Class = "input-group-btn">
												<button type="button" Class = "btn btn-default">Submit</button>
											</div>
										</div>
										<button type="button" Class = "btn btn-default">Remove</button>
										<input type="hidden" name="image-url">
									</div>
									-->
								</div>
							</div>
						</div>

					</div>
				</div>
				<div class = "panel panel-default">
					<div class = "panel-heading">
						<h3 class = "panel-title text-center">SPOUSE'S INFORMATION <!--(<label for = "chk_na"><input type = "checkbox" id = "chk_na" /> Not Applicable</label>)--></h3>
					</div>
					<div class = "panel-body">
						<div class = "row">
							<div class = "col-xs-12 col-sm-12 col-md-12 col-lg-12">
								<div class = "col-xs-12 col-sm-12 col-md-3 col-lg-3">
									<label for = "spouse_last_name">Last Name</label>
									<input type = "text" class = "form-control spouse_info" placeholder = "Last Name" id = "s_last_name" name = "s_last_name" />
								</div>
								<div class = "col-xs-12 col-sm-12 col-md-3 col-lg-3">
									<label for = "spouse_first_name">First Name</label>
									<input type = "text" class = "form-control spouse_info" placeholder = "First Name" id = "s_first_name" name = "s_first_name" />
								</div>
								<div class = "col-xs-12 col-sm-12 col-md-3 col-lg-3">
									<label for = "spouse_middle_name">Middle Name</label>
									<input type = "text" class = "form-control spouse_info" placeholder = "Middle Name" id = "s_middle_name"  name = "s_middle_name" />
								</div>
								<div class = "col-xs-12 col-sm-12 col-md-3 col-lg-3">
									<label for = "spouse_mobile_no">Mobile</label>
									<input type = "text" class = "form-control spouse_info" placeholder = "Mobile No." id = "s_mobile_no"  name = "s_mobile_no" />
								</div>
							</div>
						</div>
					</div>
				</div>
				<input type = "submit" name = "m_submit" value = "SUBMIT" class = "btn btn-primary btn-block" />
			</form>
		</div>
	</div>
</div>

<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/script-idcf.js"></script>