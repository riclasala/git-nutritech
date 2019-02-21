<link rel="stylesheet" type="text/css" href="<?= base_url('assets/css/bootstrap-imageupload.css'); ?>">
<link rel="stylesheet" type="text/css" href="<?= base_url('assets/css/bootstrap-datetimepicker.min.css'); ?>">
<style type="text/css">
.imageupload
	{
		position:relative;
		width:100%;
		height:100%;
	}
	.imageupload img {
	    display: block;
	    margin-left: auto;
	    margin-right: auto;
	}
</style>
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

<div class="container-fluid">
	<?php echo form_open_multipart("idcf/save_idcf", array("id" => "form-idcf", "class" => "needs-validation", "novalidate" => "")) ?>
		<center><h4 class="my-4">CERTIFIED CONSULTANT'S INFORMATION</h4></center>
		<div class = 'the-message'></div>
		<div class="row">
			<div class="col-sm-3">
				<!--Image Upload Here-->
				<div class = "imageupload">
					<div class = "file-tab">
						<img class="rounded-circle" id="dummy_file_img1" src = "<?= base_url('assets/images/avatar.png') ?>" style = "width: 200px; min-width: 150px; max-width: 250px; height: 200px; min-height: 150px; max-height: 250px; border: 1px solid #000; padding: 4px; margin-bottom: 10px;" alt = "Image Preview" />
						<center>
							<label class = "btn btn-primary btn-file my-auto">
								<span >Choose Picture</span>
								<!-- The file is stored here. -->
								<input type = "file" name = "image_file" id = "d_file_img" accept='image/*' />
							</label>
							<button type = "button" class = "btn btn-primary" id = "r_img">Remove</button>	
						</center>
					</div>
				</div>
	    	</div>
			<div class="col-sm-9">
				<div class="row">
	        		<div class="form-group col-xs-12 col-sm-12 col-md-4 col-lg-4">
	        			<label for = "last_name">Last Name *</label>
            			<input type = "text" class = "form-control" placeholder = "Last Name" id = "last_name" name = "last_name" autocomplete = "off" required />
            			<div class="invalid-feedback">
							Valid last name is required.
						</div>
	        		</div>
	        		<div class="form-group col-xs-12 col-sm-12 col-md-4 col-lg-4">
	        			<label for = "first_name">First Name *</label>
						<input type = "text" class = "form-control" placeholder = "First Name" id = "first_name" name = "first_name" autocomplete = "off" required />
						<div class="invalid-feedback">
							Valid first name is required.
						</div>
	        		</div>
	        		<div class="form-group col-xs-12 col-sm-12 col-md-4 col-lg-4">
	        			<label for = "middle_name">Middle Name </label>
						<input type = "text" class = "form-control" placeholder = "Middle Name" id = "middle_name" name = "middle_name" autocomplete = "off" />
	        		</div>
	        		<div class="form-group col-xs-12 col-sm-12 col-md-4 col-lg-4">
	        			<label for = "nick_name">Nick Name</label>
						<input type = "text" class = "form-control" placeholder = "Nick Name" id = "nick_name" name = "nick_name"  autocomplete = "off" />
	        		</div>
	        		<div class = "form-group col-xs-12 col-sm-12 col-md-4 col-lg-4">
						<label for = "tin">TIN</label>
						<input type = "text" class = "form-control" placeholder = "TIN" id = "tin_no" name = "tin_no"  autocomplete = "off" />
					</div>
					<div class = "form-group col-xs-12 col-sm-12 col-md-4 col-lg-4">
						<label for = "sss">SSS#</label>
						<input type = "text" class = "form-control" placeholder = "SSS#" id = "sss_no" name = "sss_no" autocomplete = "off" />
					</div>
					<div class = "form-group col-xs-12 col-sm-12 col-md-12 col-lg-12">
						<label for = "home_address">NutriTECHian's Complete Home/Mailing Address *</label>
						<input type = "text" class = "form-control" placeholder = "Complete Address" id = "home_address"  name = "home_address" autocomplete = "off" required = ""/>
						<div class="invalid-feedback">
							Valid Home/Mailing Address is required.
						</div>
					</div>
			    </div>
			</div>
		</div>
		<div class = "row" >
			<div class = "form-group col-xs-12 col-sm-12 col-md-3 col-lg-3">
				<!-- start birthdate must display 18 years old & up-->
				<!--<?php $time = strtotime("-18 year", time());?>
				<label for = "bday" >Birthday *</label>
				<input type = "date" class = "form-control" placeholder = "Birthday" id = "bday" name = "bday" min = "1900-01-01" max=<?= date("Y-m-d", $time); ?> />-->
				<label for = "bday" >Birthday *</label>
				<div class="controls input-append date form_date " data-date="" data-date-format="mm/dd/yyyy" data-link-format="mm/dd/yyyy" >
                    <input size="12" type="text" class = "form-control" placeholder = "" id = "bday" name = "bday" autocomplete = "off" required>
                    <span class="add-on"><i class="icon-remove"></i></span>
					<span class="add-on"><i class="icon-th"></i></span>
					<div class="invalid-feedback">
						Valid birthday is required.
					</div>
                </div>
			</div>
			<div class = "form-group col-xs-12 col-sm-12 col-md-3 col-lg-3">
				<label for = "gender">Gender</label>	
				<select class = "form-control" id = "gender" name = "gender">
					<option value = "male">Male</option>
					<option value = "female">Female</option>
				</select>
			</div>
			<div class = "form-group col-xs-12 col-sm-12 col-md-3 col-lg-3">
				<label for = "civil_status">Status</label>	
				<select class = "form-control" id = "civil_status" name = "civil_status">
					<option value = "single">Single</option>
					<option value = "married">Married</option>
					<option value = "separated">Separated</option>
					<option value = "widow">Widow</option>
				</select>
			</div>
			<div class = "form-group col-xs-12 col-sm-12 col-md-3 col-lg-3">
				<label for = "email">Email</label>
				<input type = "email" class = "form-control" placeholder = "you@example.com" id = "email" name = "email" autocomplete = "off" />
			</div>
			<div class = "form-group col-xs-12 col-sm-12 col-md-3 col-lg-3">
				<label for = "mobile_no">Mobile No*</label>
				<input type = "text" class = "form-control" placeholder = "09XXXXXXXXX" id = "mobile_no" name = "mobile_no" autocomplete = "off" required maxlength='11' minlength='11' pattern="[0-9]{4}-[0-9]{7}"/>
				<div class="invalid-feedback">
					Valid mobile number is required.
				</div>
			</div>
			<div class = "form-group col-xs-12 col-sm-12 col-md-3 col-lg-3">
				<label for = "mobile_no_2">Mobile No2</label>
				<input type = "number" class = "form-control" placeholder = "Mobile No." id = "mobile_no_2" name = "mobile_no_2" autocomplete = "off" />
			</div>
			<div class = "form-group col-xs-12 col-sm-12 col-md-3 col-lg-3">
				<label for = "home_tel_no">Landline</label>
				<input type = "number" class = "form-control" placeholder = "Landline" id = "home_tel_no" name = "home_tel_no" autocomplete = "off"/>
			</div>
			<div class = "form-group col-xs-12 col-sm-12 col-md-3 col-lg-3">
				<label for = "office_tel_no">Office Tel. No.</label>
				<input type = "number" class = "form-control" placeholder = "Office Tel. No." id = "office_tel_no" name = "office_tel_no" autocomplete = "off" />
			</div>
		</div>
		<center><h4 class="my-4">SPOUSE'S INFORMATION</h4></center>
		<div class = "row">
			<div class = "form-group col-xs-12 col-sm-12 col-md-3 col-lg-3">
				<label for = "s_last_name">Last Name</label>
				<input type = "text" class = "form-control spouse_info" placeholder = "Last Name" id = "s_last_name" name = "s_last_name" autocomplete = "off" />
			</div>
			<div class = "form-group col-sm-12 col-md-3 col-lg-3">
				<label for = "s_first_name">First Name</label>
				<input type = "text" class = "form-control spouse_info" placeholder = "First Name" id = "s_first_name" name = "s_first_name" autocomplete = "off" />
			</div>
			<div class = "form-group col-xs-12 col-sm-12 col-md-3 col-lg-3">
				<label for = "s_middle_name">Middle Name</label>
				<input type = "text" class = "form-control spouse_info" placeholder = "Middle Name" id = "s_middle_name"  name = "s_middle_name" autocomplete = "off" />
			</div>
			<div class = "form-group col-xs-12 col-sm-12 col-md-3 col-lg-3">
				<label for = "s_mobile_no">Mobile</label>
				<input type = "text" class = "form-control spouse_info" placeholder = "Mobile No." id = "s_mobile_no"  name = "s_mobile_no" autocomplete = "off" />
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
					<input type = "text" class = "form-control" placeholder = "Team Name" id = "sponsor_team_name"  readonly = "" value = "<?= $distributor['team_area']; ?>" />
				</div>
			<?php } ?>
		</div>
		<div class = "row">
			<div class = "form-group col-xs-12 col-sm-12 col-md-6 col-lg-6">
				Investment
				<div class = 'row'>
					<input type = "hidden" class = "form-control" placeholder = "ID" id = "cash_payment" name = "cash_payment" readonly = "" value = "N" />
					<div class = "form-group col-xs-12 col-sm-12 col-md-3 col-lg-3">
						<label for = "ia_2990" class = "radio-inline"><input type = "radio" name = "admin_fee" id = "ia_2990" value = "5500.00" onchange = "makeRemarksRequired(true);" /><b> CASH - &#8369;<?= number_format(5500, 2); ?></b></label>
					</div>
					<div class = "form-group col-xs-12 col-sm-12 col-md-3 col-lg-3">
						<label for = "ia_12920" class = "radio-inline"><input type = "radio" name = "admin_fee" id = "ia_12920" value = "14920.00" onchange = "makeRemarksRequired(true);" /><b> CASH - &#8369;<?= number_format(14920, 2); ?></b></label>
					</div>
					<div class = "form-group col-xs-12 col-sm-12 col-md-3 col-lg-3">
						<label for = "ia_3500" class = "radio-inline"><input type = "radio" name = "admin_fee" id = "ia_3500"  value = "5500.00"  onchange = "makeRemarksRequired(false);" /><b> CREDIT CARD - &#8369;<?= number_format(5500, 2); ?></b></label>
					</div>
					<div class = "form-group col-xs-12 col-sm-12 col-md-3 col-lg-3">
						<label for = "ia_13920" class = "radio-inline"><input type = "radio" name = "admin_fee" id = "ia_13920"  value = "14920.00" onchange = "makeRemarksRequired(false);" checked="checked" /><b> CREDIT CARD - &#8369;<?= number_format(14920, 2); ?></b></label>
					</div>
				</div>
			</div>
			<div class = "form-group col-xs-12 col-sm-12 col-md-6 col-lg-6">
				Remarks
				<div class = 'row' id = 'r_card' >
					<div class = "form-group col-xs-12 col-sm-12 col-md-12 col-lg-12">
						<textarea class = "form-control noresize" id = "remarks_ta" style = "resize: none;"  name = "remarks" ></textarea>
					</div>
				</div>
				<div class = 'row' id = 'r_cash' style='display:none;'>
					<div class = "form-group col-xs-12 col-sm-12 col-md-12 col-lg-12">
						<label for = "rd1" class = "font_light rm_cash">
							<input class = "rm_cash" type = "radio" name = "remarks" value = "deposit_payment" id = "rd1" checked="checked" />
							Payment is deposited at the bank
							<select name = "depositing_bank" id = "sel_bnk">
								<option value = "BDO">BDO</option>
								<option value = "Metrobank">Metrobank</option>
								<option value = "BPI">BPI</option>
								<option value = "Union Bank">Union Bank</option>
								<option value = "UCPB">UCPB</option>
								<option value = "RCBC">RCBC</option>
								<option value = "PNB">PNB</option>
							</select>
							with reference no
							<input type = "" name = "deposit_ref_no" id = "deposit_ref_no" style = "border-top: 0px; border-right: 0px; border-left: 0px; border-bottom: 1px solid black; width: 100px;" />
						</label>
					</div>
					<div class = "form-group col-xs-12 col-sm-12 col-md-12 col-lg-12">
						<label for = "rd2" class = "font_light rm_cash" >
							<input class = "rm_cash" type = "radio" name = "remarks" value = "office_payment" id = "rd2" /> Will submit payment at NutriTECH 
							<select name = "office" id = "sel_bnk1">
								<option value = "Head">Head</option>
								<option value = "Cebu">Cebu</option>
								<option value = "Davao">Davao</option>
							</select>
							Office
						</label>		
					</div>
					<div class = "form-group col-xs-12 col-sm-12 col-md-12 col-lg-12">
						<label for = "rd3" class = "font_light rm_cash">
							<input class = "rm_cash" type = "radio" name = "remarks" value = "function_payment" id = "rd3" /> Will submit payment at NutriTECH Function
						</label>
					</div>
				</div>
			</div>
		</div>
		<div class = "row">
			<div class = "col-xs-12 col-sm-12 col-md-12 col-lg-12" >
				<div class="custom-control custom-checkbox">
					<input type="checkbox" class="custom-control-input" id="terms" name="terms" required="">
					<label class="custom-control-label" for="terms" style="text-align:justify;">
						I have reviewed the details of my idcf completely.
						I also agree to the <a href="" data-toggle="modal" data-target="#exampleModalCenter">Terms and Conditions</a>.
						I also agree that <i>Nutri</i><b>TECH</b> reserves the right to request additional information to comply with the foregoing requirements.  
					</label>
				</div>
			</div>
		</div>		
		<hr class="mb-4">

		<button class="btn btn-primary btn-lg btn-block" type="submit">Submit</button>
	</form>
</div>

<!-- Modal -->
	<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLongTitle">IDCF Terms and Conditions</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body" style="overflow-y: scroll;">
					<label style = "font-weight: normal;text-align:justify">
						Subject to the terms and conditions set forth herein, applicant hereby applies for Independent Distributorship to <i>Nutri</i><b>TECH</b> and agrees to be bound by the guidelines and policies set forth.
					</label>
					<ol start = 1 style="text-align:justify">
						<li>
							The applicant when accepted shall hereinafter be called INDEPENDENT DISTRIBUTOR and <i>Nutri</i><b>TECH</b> herein after be called <b>NTAC</b>.
						</li>
						<li>
							The Distributor is engaged by <b>NTAC</b> as an independent contractor acting in the ordinary course of his/her own business as a distributor of <i>Nutri</i><b>TECH</b> products. The Distributor is not an employee or legal representative nor an agent of <b>NTAC</b>, therefore Distributor will pay all costs of selling and marketing <i>Nutri</i><b>TECH</b> products and agrees to hold <b>NTAC</b> harmless from all costs and means.
						</li>
						<li>
							The Distributor shall exert best efforts to promote and sell the products of <b>NTAC</b>. The Distributor also binds himself/herself to refrain from promoting or selling products which are competitive with those of <b>NTAC</b>. The Distributor further undertakes to conduct himself/herself in proper decorum such that all actions and decisions will be consistent with the attainment of the objectives of this agreement.
						</li>
						<li>
							The Distributor undertakes to hold the products, funds, documents, or other properties of <b>NTAC</b> in trust for the latter and to use, and/or dispose of the same strictly in accordance with this agreement. The Distributor is accountable for any loss or damage which may occur to said products, funds, documents or other properties while in his/her possession.
						</li>
						<li>
							The Distributor undertakes to receive orders, deposits/initial payment pertaining to such orders and to immediately remit to <b>NTAC</b> said order deposits/initial payments less the commission he/she is entitled to deduct therefrom. Apart from the foregoing, no authority is conferred upon the Distributor to enter into or make any binding contracts, obligation and contracts, nor to make any representation for and on behalf of <b>NTAC</b>.
						</li>
						<li>
							An administrative fee must be paid to become a Distributor. A Distributor is not required to make any financial investment nor maintain inventory at any level of the marketing program. Only the payment of the administrative fee is required to become an Independent Distributor of <b>NTAC</b> which is not refundable.
						</li>
						<li>
							This contract is non-assignable unless there is prior written consent from <b>NTAC</b>.
						</li>
						<li>
							All applicants should be eighteen years of age and above.
						</li>
						<li>
							All sales kits, brochures, literatures & others are the property of <b>NTAC</b> and cannot be reproduced without any prior written consent from <b>NTAC</b>.
						</li>
						<li>
							Bonafide Distributors accepted by <b>NTAC</b> agree to comply with all National, Provincial and Municipal ordinances and regulations.
						</li>
						<li>
							Distributor may sell <i>Nutri</i><b>TECH</b> products and sponsor new Distributor anywhere within the Philippines and its territories.
						</li>
						<li>
							During the effectivity of this agreement, <b>NTAC</b> reserves the right to receive, change and/or review from time to time the commission rates and the price of its products. Furthermore, <b>NTAC</b> shall update the list of products to reflect changes in kind/and or number due to product launches and/or discontinuance.
						</li>
						<li>
							The Distributor shall receive commissions at such rates as may be establish by <b>NTAC</b> and in such amount as maybe determined on the basis of his/her sales performances. The Distributor shall remain active for the entitlement of his/her bonus or incentive.
						</li>
						<li>
							In case the Distributor has outstanding account, <b>NTAC</b> is authorized to deduct any amount from his/her commission and apply to the said account.
						</li>
						<li>
							The distributor agrees that the usual character/credit investigation or inquiry on the Distributor maybe made at any time by <b>NTAC</b>.
						</li>
						<li>
							In the event that any provision of this agreement shall be declared contrary to law or unconstitutional, the same shall not render the other provisions in this agreement invalid or void and same provision shall remain in force or in effect.
						</li>
						<li>
							This agreement is made available on equal terms to those who apply and qualify as independent Distributors of <i>Nutri</i><b>TECH</b>.
						</li>
						<li>
							VENUE: It is expressly agreed between the parties that the venue for all legal actions that may arise out of this contract shall be the proper court in the City of San Juan, Metro Manila, Philippines.
						</li>
					</ol>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/bootstrap-imageupload.min.js"></script>
<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/bootstrap-datetimepicker.js"></script>
<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/form-validation.js"></script>

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
		$("#dummy_file_img").attr("class", "rounded-circle");
		$("#dummy_file_img").attr("src", "<?= base_url('assets/images/avatar.png') ?>");
		$("#dummy_file_img").attr("style", "width: 200px; min-width: 150px; max-width: 250px; height: 200px; min-height: 150px; max-height: 250px; border: 1px solid #000; padding: 4px; margin-bottom: 10px;");
	});

	function makeRemarksRequired(granted){
		if(granted){ //cash
			$('#r_cash').attr('style','display:block;');
			$('#r_card').attr('style','display:none;');
			$('#cash_payment').attr('value','Y');
			$('input[id=rd1]').attr('checked',true);
		}else{ //credit
			$('#r_cash').attr('style','display:none;');
			$('#r_card').attr('style','display:block;');
			$('#cash_payment').attr('value','N');
			$('#rd1').removeAttr('checked');
		}
	}
	
	$(".idcf_agreement_toggle").click(function(){
    	$(".idcf_agreement").toggle();
  	});
  	$('.form_date').datetimepicker({
        language:  'en',
        weekStart: 1,
        todayBtn:  1,
		autoclose: 1,
		todayHighlight: 1,
		startView: 2,
		minView: 2,
		forceParse: 0,
		changeMonth: true,
		changeYear: true,
		startDate: new Date('1900-01-01'),
		endDate: '-18y'
    }).mask('99/99/9999');
   // $('input.date').datepicker({changeMonth: true, changeYear: true}).mask('99/99/9999');
</script>

		
