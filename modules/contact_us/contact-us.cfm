<!doctype html>
<html lang="en">

<head>

		<cfset qGetLastTwoCustomerComments	= createObject('#application.modulesCFCPath#.customer_comments.customer_comments').mGetLastTwoCustomerComments(site_dsn='#application.site_dsn#') />

		<title>Muse Collision | Auto Painting &amp; Body Repair</title>

		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />

		<link type="text/css" rel="stylesheet" href="/site_wide_assets/css/site-wide-css-mobile-first.css"/>
		<link href='http://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>

		<script src="/site_wide_assets/jquery/jquery-2.1.0.min.js"></script>
		<script src="/site_wide_assets/harvey/harvey.js"></script>
		<script src="/site_wide_assets/harvey/site_wide_harvey.js"></script>
		<script src="/modules/menu/menu.js"></script>
		<script src="/modules/contact_us/contact-us.js"></script>

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

		<!-------------------------------------------------------------------------------------------------->



<!--- 		<div class="module_100" id="large_photo_container">

			<div id="large_photo">

				<div id="large_photo_message">

					<h4>Our Promise To You</h4>

					<p id="para_1">Muse Collision Center will stand by you each step of the way and repair your vehicle back to its pre-loss condition.</p>
					<p id="para_2">&nbsp;</p>
					<p id="para_3">Whether it's a small scratch, door ding or major-collision repair, Muse Collision Center will go the extra mile to completely satisfy each customer with their auto body repair.</p>
					<p id="para_4">Whether it's a small scratch or major-collision repair, we will stand by you each step of the way and go the extra mile to ensure your complete satisfaction with your auto body repair.</p>
					<p id="para_5">No matter how large or small the repair, we will work with you to ensure your complete satisfaction.</p>

				</div>

			</div>

		</div> --->




					<div id="contact_us_content_container">

						<h4 id="contact_us_heading">Contact Us <span class="required_note">( <span class="required_asterick">*</span> denotes required field )</span></h4>

						<form id="contact_us_form" class="contact_us_form" action="" method="">

							<p id="contact_us_intro">Have a question or comment?<br/>
							<br/>
							Let us know and we'll be glad to help!</p>
		
							<div id="contact_us_first_name_div" class="text_input_container_div">

								<label for="contact_us_first_name" id="contact_us_first_name_label">Your First Name
									<span class="required_asterick">*</span></label>
									<span id="contact_us_first_name_error" class="error_message"></span>
									<span class="field_valid" id="contact_us_first_name_valid">
									<img  class="validation_image_status" src="/site_wide_assets/images/valid.png"></span><br/>
									<input id="contact_us_first_name" name="contact_us_first_name" type="text" value="">

							</div> <!--- [ #contact_us_first_name_div ] --->

							<div id="contact_us_last_name_div" class="text_input_container_div">

								<label for="contact_us_last_name" id="contact_us_last_name_label">Your Last Name
									<span class="required_asterick">*</span></label>
									<span id="contact_us_last_name_error" class="error_message"></span>
									<span class="field_valid" id="contact_us_last_name_valid">
									<img  class="validation_image_status" src="/site_wide_assets/images/valid.png"></span><br/>
									<input id="contact_us_last_name" name="contact_us_last_name" type="text" value="">

							</div> <!--- [ #contact_us_last_name_div ] --->

							<div id="contact_us_email_div" class="text_input_container_div">

								<label for="contact_us_email" id="contact_us_email_label">Your Email Address
									<span class="required_asterick">*</span></label>
									<span id="conact_us_email_error" class="error_message"></span>
									<span class="field_valid" id="contact_us_email_valid">
									<img  class="validation_image_status" src="/site_wide_assets/images/valid.png"></span><br/>
									<input id="contact_us_email" name="contact_us_email" type="text" value="">

							</div> <!--- [ #contact_us_email_div ] --->

							<div id="contact_us_email_confirmation_div" class="text_input_container_div">

								<label for="contact_us_email_confirmation" id="contact_us_email_confirmation_label">Re-Enter Your Email
									<span class="required_asterick">*</span></label>
									<span id="contact_us_email_confirmation_error" class="error_message"></span>
									<span class="field_valid" id="contact_us_email_confirmation_valid">
									<img  class="validation_image_status" src="/site_wide_assets/images/valid.png"></span><br/>
									<input id="contact_us_email_confirmation" name="contact_us_email_confirmation" type="text" value="">

							</div> <!--- [ #contact_us_email_confirmation_div ] --->


							<div style="height:1.5em; clear:both;"></div>


							<div id="contact_us_comments_div" class="text_input_container_div">

								<label for="contact_us_comments" id="contact_us_comments_label">Comments
									<span class="required_asterick">*</span></label>
									<span id="contact_us_comments_error" class="error_message"></span>
									<span class="field_valid" id="contact_us_comments_valid">
									<img  class="validation_image_status" src="/site_wide_assets/images/valid.png"></span><br/>
									<textarea id="contact_us_comments" name="contact_us_send_comments" type="textarea"></textarea>

							</div> <!--- [ #contact_us_comments_div ] --->							
							

							<input id="contact_us_submit_button" class="submit" type="button" value=" submit "> &nbsp;&nbsp; <span id="processing_text"></span>

							<input id="site_short_domain" name="site_short_domain" type="hidden" value="<cfoutput>#application.site_short_domain#</cfoutput>" />
							<input id="site_name" name="site_name" type="hidden" value="<cfoutput>#application.site_name#</cfoutput>" />
							<input id="site_contact_email_recipient" name="site_contact_email_recipient" type="hidden" value="<cfoutput>#application.site_contact_email_recipient#</cfoutput>" />
							<input id="site_contact_email_responder" name="site_contact_email_responder" type="hidden" value="<cfoutput>#application.site_contact_email_responder#</cfoutput>" />
							<input id="site_phone_number" name="site_phone_number" type="hidden" value="<cfoutput>#application.site_phone_number#</cfoutput>" />
							<input id="site_street_address" name="site_street_address" type="hidden" value="<cfoutput>#application.site_street_address#</cfoutput>" />
							<input id="site_city" name="site_city" type="hidden" value="<cfoutput>#application.site_city#</cfoutput>" />
							<input id="site_state" name="site_state" type="hidden" value="<cfoutput>#application.site_state#</cfoutput>" />
							<input id="site_zip_code" name="site_zip_code" type="hidden" value="<cfoutput>#application.site_zip_code#</cfoutput>" />

						</form>

					</div> <!--- [ contact_us_content_container ] --->





					<div id="contact_info_smaller_pages_container">

						<div id="contact_info_smaller_pages">

							<p id="business_street_address"><a href="/modules/location_map/location-map.cfm"><cfoutput>#application.site_street_address#</cfoutput></a></p>
							<p id="business_city_state_zip" class="business_info"><a href="/modules/location_map/location-map.cfm"><cfoutput>#application.site_city#, #application.site_state# #application.site_zip_code#</cfoutput></a></p>
							<p>&nbsp;</p>
							<p id="business_email"><a href="mailto:<cfoutput>#application.site_contact_email_recipient#</cfoutput>" class="business_info">info@musecollision.com</a></p>
							<p id="business_phone" class="business_info"><cfoutput>#application.site_phone_number#</cfoutput></p>

						</div>

					</div>






					<div id="customer_comments_right_container">

							<h4 id="customer_comments_right_heading">Customer Comments</h4>

							<cfoutput query = "qGetLastTwoCustomerComments" >

								<p class="customer_comments_right_text">#replace(comments, '#chr(13)#', '<br/>', 'all')#
									<span class="customer_comment_right_tag">#customer_tag#</span></p>

								<br/>

							</cfoutput>

					</div> <!--- [ customer_comments ] --->


					<div style="clear:both;"></div>



					<cfinclude template="/modules/footer/footer.cfm" />



	</div> <!--- [ #page_wrapper ] --->

</body>