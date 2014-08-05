<!doctype html>
<html lang="en">

<head>

<!--- 		<cfset qGetSiteMetaData					= createObject('common_data_access.site_meta_data.site-meta-data').mGetSiteMetaData(site_cgi_server_name='#cgi.server_name#') />--->
		<cfset qGetAllCustomerComments 		= createObject('#application.modulesCFCPath#.customer_comments.customer_comments').mGetAllCustomerComments(site_dsn='#application.site_dsn#') />

		<title>Muse Collision | Customer Comments</title>

		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />

		<link type="text/css" rel="stylesheet" href="/site_wide_assets/css/site-wide-css-mobile-first.css"/>
		<link href='http://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>

		<script src="/site_wide_assets/jquery/jquery-2.1.0.min.js"></script>
		<script src="/site_wide_assets/harvey/harvey.js"></script>
		<script src="/site_wide_assets/harvey/site_wide_harvey.js"></script>
		<script src="/modules/menu/menu.js"></script>
		<script src="/modules/faq/faq.js"></script>

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




					<div id="faq_content_container">


						<h4 id="faq_heading">Frequently Asked Questions</h4>


						<p class="faq_question">Which insurance companies do you work with? &nbsp;&nbsp; <span class="faq_answer_click"> [ <a href="" onclick="return false;">details</a> ]</span></p>

						<p class="faq_answer">At Muse Collision while we are a direct repair for several insurance companies which makes the repair process easier, however if the insurance that is paying the claim is not one of them we will still work with that insurance company on repairing your vehicle.</p>


						<p class="faq_question">Do I need an appointment to get an estimate? &nbsp;&nbsp; <span class="faq_answer_click"> [ <a href="" onclick="return false;">details</a> ]</span></p>

						<p class="faq_answer">While we do make appointments for estimates as to have an estimator ready when the customer arrives to keep them from waiting, we do write estimates on walk ins.</p>


						<p class="faq_question">How long will my car be in the shop? &nbsp;&nbsp; <span class="faq_answer_click"> [ <a href="" onclick="return false;">details</a> ]</span></p>

						<p class="faq_answer">Each repair is different and unique. Once the estimate is written we can tell the customer how many days the car should be in the shop for repairs.</p>


						<p class="faq_question">Will I have to pay anything out-of-pocket if the repair
								is more than the insurance estimate? &nbsp;&nbsp; <span class="faq_answer_click"> [ <a href="" onclick="return false;">details</a> ]</span></p>

						<p class="faq_answer"> The customer should not have to pay out of pocket if additional damage is found once the vehicle has been disassembled, the insurance company paying for repairs will be contacted by the shop. The owner would be contacted and advised of the additional damages found but insurance company should pay for any additional parts or labor needed to repair the vehicle correctly.</p>


						<p class="faq_question">How does the rental process work? &nbsp;&nbsp; <span class="faq_answer_click"> [ <a href="" onclick="return false;">details</a> ]</span></p>

						<p class="faq_answer">Once the estimate is completed and an appointment made, our staff at Muse Collision will contact the rental company and set up the rental for the customer and if any extensions of the rental need to be made the staff at Muse Collision will contact the rental company to let them know. When the customer is leaving the vehicle for repairs the staff at the shop will contact the rental company to come and pick up the customer for the rental, and after repairs are completed the customer would turn in the rental at the rental car company and then would be brought back to Muse Collision for his or her vehicle.</p>


						<p class="faq_question">How long is the estimate good for? &nbsp;&nbsp; <span class="faq_answer_click"> [ <a href="" onclick="return false;">details</a> ]</span></p>

						<p class="faq_answer">The estimate should be accurate for several months for our body and refinish rate, however parts prices can often change at any time by the part manufacturer but normally this change is minimal and sometimes is less than the quote.</p>


						<p class="faq_question">What is the warranty and how long is it? &nbsp;&nbsp; <span class="faq_answer_click"> [ <a href="" onclick="return false;">details</a> ]</span></p>

						<p class="faq_answer">At Muse Collision we warranty our body repair and refinish repair for as long as the customer owns his/her vehicle, however parts are warranted by the manufacture of the parts and varies from part to part. On average a part is warranted by the manufacture for 12 months but could be as many as 36 months.</p>


						<p class="faq_question">What kind of paint do you use? &nbsp;&nbsp; <span class="faq_answer_click"> [ <a href="" onclick="return false;">details</a> ]</span></p>

						<p class="faq_answer">At Muse Collision we use the same kind of paint as the car manufacturer, a base coat clear coat system. This allows us to restore the damaged vehicle back to its pre loss condition.</p>


						<p class="faq_question">If my car or truck has frame damage is it totaled? &nbsp;&nbsp; <span class="faq_answer_click"> [ <a href="" onclick="return false;">details</a> ]</span></p>

						<p class="faq_answer">Short answer is no, however again each accident is unique. Here at Muse Collision we have the newest in electronic frame measuring for full frame vehicles to uni-body vehicles, and much like having your suspension aligned we can measure the frame and see where and how badly the frame is damaged and determine if it can be repaired correctly or have to be replaced. This machine also allows us to print out inspection reports both during and after repairs to know with confidence that the frame was repaired correctly.</p>


						<p class="faq_question">Who do I pay the deductible to and when do I pay it? &nbsp;&nbsp; <span class="faq_answer_click"> [ <a href="" onclick="return false;">details</a> ]</span></p>

						<p class="faq_answer">The deductible is paid to the repair shop after the repairs are completed and after the vehicle has been inspected by the customer. Some customers wish to pay the deductible before repairs are completed and we will take payment before hand if that is the customers wish.</p>
																						

					</div> <!--- [ faq_content_container ] --->




					<div id="preferred_container">

							<h4 id="preferred_heading">Preferred Repair Facility</h4>

							<p class="preferred_text">Muse Collision Center is the authorized warranty auto body repair for
								Mike Reed Chevrolet and Hinesville Ford. So you know if the dealer counts on us to restore
								these vehicles back to new, you can count on us to do the same for you.</p>

							<p class="preferred_text">Whether it's a small scratch, door ding, or major collision repair,
								Muse Collision Center will go the extra mile to make each customer happy with their auto body repair.</p>

					</div> <!--- [ preferred_shop_container ] --->




					<div id="lifetime_warranty_container">

						<h4 id="warranty_heading">100% Lifetime Warranty</h4>

						<p>Muse Collision Center will stand by you each step of the way
							and guarantees your auto body repair for as long as you own your vehicle.</p>

						<p>Our goal is to repair your vehicle back to its pre-loss condition
							relative to safety, appearance, and function. Our staff is dedicated to making each auto
							body repair the best it can be.</p>	

					</div> <!--- [ lifetime_warranty_cotainer ] --->




					<div style="clear:both;"></div>




					<div id="contact_info_smaller_pages_container">

						<div id="contact_info_smaller_pages">

							<p id="business_street_address"><a href="/modules/location_map/location-map.cfm">14 Brights Lake Road</a></p>
							<p id="business_city_state_zip" class="business_info"><a href="/modules/location_map/location-map.cfm">Hinesville, GA 31313</a></p>
							<p>&nbsp;</p>
							<p id="business_email"><a href="mailto:business_email@business.com" class="business_info">info@musecollision.com</a></p>
							<p id="business_phone" class="business_info">912-977-9393</p>

						</div>

					</div>					



					<cfinclude template="/modules/footer/footer.cfm" />



	</div> <!--- [ #page_wrapper ] --->

</body>