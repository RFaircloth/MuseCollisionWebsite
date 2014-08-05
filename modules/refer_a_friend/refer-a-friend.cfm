<!doctype html>
<html lang="en">

<head>

<!---	<cfset qGetSiteMetaData					= createObject('common_data_access.site_meta_data.site-meta-data').mGetSiteMetaData(site_cgi_server_name='#cgi.server_name#') />--->
<!---	<cfset qGetSiteValues			 		= createObject('common_data_access.site_info.site-info').mGetSiteInfo(site_id='#qGetSiteMetaData.site_id#', site_dsn='#qGetSiteMetaData.site_dsn#') />		 --->
		<cfset qGetLastTwoBlogEntries 		= createObject('#application.modulesCFCPath#.blog.blog').mGetLastTwoBlogEntries(site_dsn='#application.site_dsn#') />		
		<cfset qGetLastTwoCustomerComments	= createObject('#application.modulesCFCPath#.customer_comments.customer_comments').mGetLastTwoCustomerComments(site_dsn='#application.site_dsn#') />

		<title>Muse Collision | Refer-a-Friend</title>

		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />

		<link type="text/css" rel="stylesheet" href="/site_wide_assets/css/site-wide-css-mobile-first.css"/>
		<link href='http://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>

		<script src="/site_wide_assets/jquery/jquery-2.1.0.min.js"></script>
		<script src="/site_wide_assets/harvey/harvey.js"></script>
		<script src="/site_wide_assets/harvey/site_wide_harvey.js"></script>
		<script src="/modules/menu/menu.js"></script>
		<script src="/modules/refer_a_friend/refer-a-friend.js"></script>

</head>

<body>

	<img class="page_background" src="/site_wide_assets/images/nebulosity01.jpg"/>

	<cfinclude template="/modules/misc/screen_width/screen-width.cfm"/>

	<div id="page_wrapper">


		<!--- <span id="header_template"></span> --->




	<!--- [ header ] --->

		<div class="module_100" id="header">

			<div class="logo">

				<img id="logo" src="/site_wide_assets/images/muse_logo_gold_04.png">

				<p id="business_byline">When your car looks great, we look great...</p>

			</div>

			<script src="/modules/header/header.js"></script>


			<!--- [ display for wcreen widths => 800 ] --->

			<span id="menu">MENU</span>

			<div id="social_icons">

				<img src="/site_wide_assets/images/facebook.png"/>
				<img src="/site_wide_assets/images/pinterest.png"/>
				<img src="/site_wide_assets/images/googleplus.png"/>
				<img src="/site_wide_assets/images/twitter.png"/>

			</div>			

			<div id="business_info_container">

				<p id="business_name">Muse Collision</p>
				<p id="business_street_address" class="business_info">14 Brights Lake Road</p>
				<p id="business_city_state_zip" class="business_info">Hinesville, GA 31313</p>
				<p id="header_address_spacer">&nbsp;</p>
				<p id="business_email"><a href="mailto:business_email@business.com" class="business_info">info@musecollision.com</a></p>
				<p id="business_phone" class="business_info">912-977-9393</p>

			</div>

			<div style="clear:both;"></div>

		</div> <!--- [ module_100 #header ] --->




		<cfinclude template = "/modules/menu/menu.cfm"/>




		<!--- [ contact info, smaller screens ] ------------------------------------------------------------>

		<!--- <div class="module_100" id="contact_info_smaller">

			<div id="contact_info_smaller_container">

				<p id="business_street_address">14 Brights Lake Road</p>
				<p id="business_city_state_zip" class="business_info">Hinesville, GA 31313</p>
				<p id="business_email"><a href="mailto:business_email@business.com" class="business_info">info@musecollision.com</a></p>
				<p id="business_phone" class="business_info">912-977-9393</p>

			</div>

		</div> --->






					<div id="refer_friend_container">

								<h4 id="refer_friend_heading">Refer-a-Friend <span class="required_note">( <span class="required_asterick">*</span> required field )</span></h4>

						<form id="refer_friend_form" class="refer_friend_form" action="" method="">

							<p>Do you know of someone who might benefit from our services?</p>
							<p>&nbsp;</p>
							<p>If you do, consider sending them a note using the form below.
						   	We will include a link to our website, along with other contact information, as part of your note. We will not contact your
						   	friend directly. We just want to provide you with a convenient way to refer a friend to us for assistance.</p>
						   <p>&nbsp;</p>
						   <p>&nbsp;</p>

							<div id="refer_friend_sender_first_name_div" class="text_input_container_div">

								<label for="refer_friend_sender_first_name" id="refer_friend_sender_first_name_label">Your First Name
									<span class="required_asterick">*</span></label>
									<span id="refer_friend_sender_first_name_error" class="error_message"></span>
									<span class="field_valid" id="refer_friend_sender_first_name_valid">
									<img  class="validation_image_status" src="../../site_wide_assets/images/valid.png"></span><br/>
									<input id="refer_friend_sender_first_name" name="refer_friend_sender_first_name" type="text" value="">

							</div> <!--- [ #refer_friend_sender_first_name_div ] --->

							<div id="refer_friend_sender_last_name_div" class="text_input_container_div">

								<label for="refer_friend_sender_last_name" id="refer_friend_sender_last_name_label">Your Last Name
									<span class="required_asterick">*</span></label>
									<span id="refer_friend_sender_last_name_error" class="error_message"></span>
									<span class="field_valid" id="refer_friend_sender_last_name_valid">
									<img  class="validation_image_status" src="../../site_wide_assets/images/valid.png"></span><br/>
									<input id="refer_friend_sender_last_name" name="refer_friend_sender_last_name" type="text" value="">

							</div> <!--- [ #refer_friend_sender_last_name_div ] --->

							<div id="refer_friend_sender_email_div" class="text_input_container_div">

								<label for="refer_friend_sender_email" id="refer_friend_sender_email_label">Your Email Address
									<span class="required_asterick">*</span></label>
									<span id="refer_friend_sender_email_error" class="error_message"></span>
									<span class="field_valid" id="refer_friend_sender_email_valid">
									<img  class="validation_image_status" src="../../site_wide_assets/images/valid.png"></span><br/>
									<input id="refer_friend_sender_email" name="refer_friend_sender_email" type="text" value="">

							</div> <!--- [ #refer_friend_sender_email_div ] --->

							<div id="refer_friend_sender_email_confirmation_div" class="text_input_container_div">

								<label for="refer_friend_sender_email_confirmation" id="refer_friend_sender_email_confirmation_label">Re-Enter Your Email
									<span class="required_asterick">*</span></label>
									<span id="refer_friend_sender_email_confirmation_error" class="error_message"></span>
									<span class="field_valid" id="refer_friend_sender_email_confirmation_valid">
									<img  class="validation_image_status" src="../../site_wide_assets/images/valid.png"></span><br/>
									<input id="refer_friend_sender_email_confirmation" name="refer_friend_sender_email_confirmation" type="text" value="">

							</div> <!--- [ #refer_friend_sender_email_confirmation_div ] --->


							<div style="height:2em; clear:both;"></div>

							<!--- [ friend's info ] --->

							<div id="refer_friend_sender_friend_first_name_div" class="text_input_container_div">

								<label for="refer_friend_sender_friend_first_name" id="refer_friend_sender_friend_first_name_label">Your Friend's First Name
									<span class="required_asterick">*</span></label>
									<span id="refer_friend_sender_friend_first_name_error" class="error_message"></span>
									<span class="field_valid" id="refer_friend_sender_friend_first_name_valid">
									<img  class="validation_image_status" src="../../site_wide_assets/images/valid.png"></span><br/>
									<input id="refer_friend_sender_friend_first_name" name="refer_friend_sender_friend_first_name" type="text" value="">

							</div> <!--- [ #refer_friend_sender_friend_first_name_div ] --->

							<div id="refer_friend_sender_friend_last_name_div" class="text_input_container_div">

								<label for="refer_friend_sender_friend_last_name" id="refer_friend_sender_friend_last_name_label">Your Friend's Last Name
									<span class="required_asterick">*</span></label>
									<span id="refer_friend_sender_friend_last_name_error" class="error_message"></span>
									<span class="field_valid" id="refer_friend_sender_friend_last_name_valid">
									<img  class="validation_image_status" src="../../site_wide_assets/images/valid.png"></span><br/>
									<input id="refer_friend_sender_friend_last_name" name="refer_friend_sender_friend_last_name" type="text" value="">

							</div> <!--- [ #refer_friend_sender_friend_last_name_div ] --->

							<div id="refer_friend_sender_friend_email_div" class="text_input_container_div">

								<label for="refer_friend_sender_friend_email" id="refer_friend_sender_friend_email_label">Your Friend's Email
									<span class="required_asterick">*</span></label>
									<span id="refer_friend_sender_friend_email_error" class="error_message"></span>
									<span class="field_valid" id="refer_friend_sender_friend_email_valid">
									<img  class="validation_image_status" src="../../site_wide_assets/images/valid.png"></span><br/>
									<input id="refer_friend_sender_friend_email" name="refer_friend_sender_friend_email" type="text" value="">

							</div> <!--- [ #refer_friend_sender_friend_email_div ] --->

							<div id="refer_friend_sender_friend_email_confirmation_div" class="text_input_container_div">

								<label for="refer_friend_sender_friend_email_confirmation" id="refer_friend_sender_friend_email_confirmation_label">Re-Enter Friend's Email
									<span class="required_asterick">*</span></label>
									<span id="refer_friend_sender_friend_email_confirmation_error" class="error_message"></span>
									<span class="field_valid" id="refer_friend_sender_friend_email_confirmation_valid">
									<img  class="validation_image_status" src="../../site_wide_assets/images/valid.png"></span><br/>
									<input id="refer_friend_sender_friend_email_confirmation" name="refer_friend_sender_friend_email_confirmation" type="text" value="">

							</div> <!--- [ #refer_friend_sender_friend_email_confirmation_div ] --->




							<div style="height:2em; clear:both;"></div>

							<div id="refer_friend_sender_comments_div" class="text_input_container_div">

								<label for="refer_friend_sender_comments" id="refer_friend_sender_comments_label">Send Your Friend a Note
									<span class="required_asterick">*</span></label>
									<span id="refer_friend_sender_comments_error" class="error_message"></span>
									<span class="field_valid" id="refer_friend_sender_comments_valid">
									<img  class="validation_image_status" src="../../site_wide_assets/images/valid.png"></span><br/>
									<textarea id="refer_friend_sender_comments" name="refer_friend_sender_comments" type="textarea"></textarea>

							</div> <!--- [ #refer_friend_sender_comments_div ] --->							
							

							<input id="refer_friend_submit_button" class="submit" type="button" value=" Refer-A-Friend "> &nbsp;&nbsp; <span id="processing_text"></span>

							<input id="email" name="email" type="hidden" value="" />

							<input id="site_dsn" name="site_dsn" type="hidden" value="<cfoutput>#application.site_dsn#</cfoutput>" />
							<input id="site_short_domain" name="site_short_domain" type="hidden" value="<cfoutput>#application.site_short_domain#</cfoutput>" />
							<input id="site_name" name="site_name" type="hidden" value="<cfoutput>#application.site_name#</cfoutput>" />
							<input id="site_contact_email_recipient" name="site_contact_email_recipient" type="hidden" value="<cfoutput>#application.site_contact_email_recipient#</cfoutput>" />
							<input id="site_refer_friend_business_email_recipient" name="site_refer_friend_business_email_recipient" type="hidden" value="<cfoutput>#application.site_refer_friend_business_email_recipient#</cfoutput>" />
							<input id="site_refer_friend_business_email_responder" name="site_refer_friend_business_email_responder" type="hidden" value="<cfoutput>#application.site_refer_friend_business_email_responder#</cfoutput>" />
							<input id="site_phone_number" name="site_phone_number" type="hidden" value="<cfoutput>#application.site_phone_number#</cfoutput>" />
							<input id="site_street_address" name="site_street_address" type="hidden" value="<cfoutput>#application.site_street_address#</cfoutput>" />
							<input id="site_city" name="site_city" type="hidden" value="<cfoutput>#application.site_city#</cfoutput>" />
							<input id="site_state" name="site_state" type="hidden" value="<cfoutput>#application.site_state#</cfoutput>" />
							<input id="site_zip_code" name="site_zip_code" type="hidden" value="<cfoutput>#application.site_zip_code#</cfoutput>" />

						</form>

					</div> <!--- [ refer_friend_container ] --->










					<div id="customer_comments_right_container">

							<h4 id="customer_comments_right_heading">Customer Comments</h4>

							<cfoutput query = "qGetLastTwoCustomerComments" >

								<p class="customer_comments_right_text">#replace(comments, '#chr(13)#', '<br/>', 'all')#
									<span class="customer_comment_right_tag">#customer_tag#</span></p>

								<br/>

							</cfoutput>

					</div> <!--- [ customer_comments ] --->




					<div id="contact_info_smaller_pages_container">

						<div id="contact_info_smaller_pages">

							<p id="business_street_address"><a href="/modules/location_map/location-map.cfm">14 Brights Lake Road</a></p>
							<p id="business_city_state_zip" class="business_info"><a href="/modules/location_map/location-map.cfm">Hinesville, GA 31313</a></p>
							<p>&nbsp;</p>
							<p id="business_email"><a href="mailto:business_email@business.com" class="business_info">info@musecollision.com</a></p>
							<p id="business_phone" class="business_info">912-977-9393</p>

						</div>

					</div>					


					<div style="clear:both;"></div>



					<cfinclude template="/modules/footer/footer.cfm" />



	</div> <!--- [ #page_wrapper ] --->

</body>