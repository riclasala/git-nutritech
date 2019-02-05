
<div class = "col-xs-12 col-sm-12 col-md-12 col-lg-12">
   	<h4 class="mb-3">CERTIFIED CONSULTANT'S INFORMATION</h4>
    <?php echo form_open_multipart("pages/save_idcf", array("id" => "form-idcf", "class" => "form-horizontal")) ?>
    	<div class="row">
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
         <h4 class="mb-3">SPOUSE'S INFORMATION </h4>
         <div class = "row">			
			<div class = "col-xs-12 col-sm-12 col-md-3 col-lg-3">
				<label for = "s_last_name">Last Name</label>
				<input type = "text" class = "form-control spouse_info" placeholder = "Last Name" id = "s_last_name" name = "s_last_name" />
			</div>
			<div class = "col-xs-12 col-sm-12 col-md-3 col-lg-3">
				<label for = "s_first_name">First Name</label>
				<input type = "text" class = "form-control spouse_info" placeholder = "First Name" id = "s_first_name" name = "s_first_name" />
			</div>
			<div class = "col-xs-12 col-sm-12 col-md-3 col-lg-3">
				<label for = "s_middle_name">Middle Name</label>
				<input type = "text" class = "form-control spouse_info" placeholder = "Middle Name" id = "s_middle_name"  name = "s_middle_name" />
			</div>
			<div class = "col-xs-12 col-sm-12 col-md-3 col-lg-3">
				<label for = "s_mobile_no">Mobile</label>
				<input type = "text" class = "form-control spouse_info" placeholder = "Mobile No." id = "s_mobile_no"  name = "s_mobile_no" />
			</div>
			
		</div>
		<hr class="mb-4">
		<div class = "row">
			<div class = "col-xs-12 col-sm-12 col-md-12 col-lg-12" >
					<label for = "i_agree"><input type = "checkbox" name = "chk_agreement" id = "i_agree" value = "as" /> I agree to the terms and conditions.</label><a class = "idcf_agreement_toggle">Show</a>
					<div class = 'idcf_agreement' style="display:none">
						<label style = "font-weight: normal;text-align:justify">Subject to the terms and conditions set forth herein, applicant hereby applies for Independent Distributorship to <i>Nutri</i><b>TECH</b> and agrees to be bound by the guidelines and policies set forth.</label>
						<ol start = 1 style="text-align:justify">
							<li>The applicant when accepted shall hereinafter be called INDEPENDENT DISTRIBUTOR and <i>Nutri</i><b>TECH</b> herein after be called <b>NTAC</b>.</li>
							<li>The Distributor is engaged by <b>NTAC</b> as an independent contractor acting in the ordinary course of his/her own business as a distributor of <i>Nutri</i><b>TECH</b> products. The Distributor is not an employee or legal representative nor an agent of <b>NTAC</b>, therefore Distributor will pay all costs of selling and marketing <i>Nutri</i><b>TECH</b> products and agrees to hold <b>NTAC</b> harmless from all costs and means.</li>
							<li>The Distributor shall exert best efforts to promote and sell the products of <b>NTAC</b>. The Distributor also binds himself/herself to refrain from promoting or selling products which are competitive with those of <b>NTAC</b>. The Distributor further undertakes to conduct himself/herself in proper decorum such that all actions and decisions will be consistent with the attainment of the objectives of this agreement.</li>
							<li>The Distributor undertakes to hold the products, funds, documents, or other properties of <b>NTAC</b> in trust for the latter and to use, and/or dispose of the same strictly in accordance with this agreement. The Distributor is accountable for any loss or damage which may occur to said products, funds, documents or other properties while in his/her possession.</li>
							<li>The Distributor undertakes to receive orders, deposits/initial payment pertaining to such orders and to immediately remit to <b>NTAC</b> said order deposits/initial payments less the commission he/she is entitled to deduct therefrom. Apart from the foregoing, no authority is conferred upon the Distributor to enter into or make any binding contracts, obligation and contracts, nor to make any representation for and on behalf of <b>NTAC</b>.</li>
							<li>An administrative fee must be paid to become a Distributor. A Distributor is not required to make any financial investment nor maintain inventory at any level of the marketing program. Only the payment of the administrative fee is required to become an Independent Distributor of <b>NTAC</b> which is not refundable.</li>
							<li>This contract is non-assignable unless there is prior written consent from <b>NTAC</b>.</li>
							<li>All applicants should be eighteen years of age and above.</li>
							<li>All sales kits, brochures, literatures & others are the property of <b>NTAC</b> and cannot be reproduced without any prior written consent from <b>NTAC</b>.</li>
							<li>Bonafide Distributors accepted by <b>NTAC</b> agree to comply with all National, Provincial and Municipal ordinances and regulations.</li>
							<li>Distributor may sell <i>Nutri</i><b>TECH</b> products and sponsor new Distributor anywhere within the Philippines and its territories.</li>
							<li>During the effectivity of this agreement, <b>NTAC</b> reserves the right to receive, change and/or review from time to time the commission rates and the price of its products. Furthermore, <b>NTAC</b> shall update the list of products to reflect changes in kind/and or number due to product launches and/or discontinuance.</li>
							<li>The Distributor shall receive commissions at such rates as may be establish by <b>NTAC</b> and in such amount as maybe determined on the basis of his/her sales performances. The Distributor shall remain active for the entitlement of his/her bonus or incentive.</li>
							<li>In case the Distributor has outstanding account, <b>NTAC</b> is authorized to deduct any amount from his/her commission and apply to the said account.</li>
							<li>The distributor agrees that the usual character/credit investigation or inquiry on the Distributor maybe made at any time by <b>NTAC</b>.</li>
							<li>In the event that any provision of this agreement shall be declared contrary to law or unconstitutional, the same shall not render the other provisions in this agreement invalid or void and same provision shall remain in force or in effect.</li>
							<li>This agreement is made available on equal terms to those who apply and qualify as independent Distributors of <i>Nutri</i><b>TECH</b>.</li>
							<li>VENUE: It is expressly agreed between the parties that the venue for all legal actions that may arise out of this contract shall be the proper court in the City of San Juan, Metro Manila, Philippines.</li>
						</ol>
					</div>
				</div>
			</div>		
        <hr class="mb-4">
        <button class="btn btn-primary btn-lg btn-block" type="submit">Submit</button>
	</form>
</div>

<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/script-idcf.js"></script>
<script>
$(document).ready(function(){
  $(".idcf_agreement_toggle").click(function(){
    $(".idcf_agreement").toggle();
  });
});
</script>
