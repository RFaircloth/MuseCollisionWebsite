<!doctype html>
<html lang="en">

<head>

<!---		<cfset qGetSiteMetaData	= createObject('common_data_access.site_meta_data.site-meta-data').mGetSiteMetaData(site_cgi_server_name='#cgi.server_name#') /> --->
<!--- 		<cfset qGetBlog 			= createObject('#application.modulesCFCPath#.blog.blog').mGetBlog(site_dsn='#application.site_dsn#') />
 --->
		<title>Muse Collision | Repair Process</title>

		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />

		<link type="text/css" rel="stylesheet" href="/site_wide_assets/css/site-wide-css-mobile-first.css"/>
		<link href='http://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>

		<script src="/site_wide_assets/jquery/jquery-2.1.0.min.js"></script>
		<script src="/site_wide_assets/harvey/harvey.js"></script>
		<script src="/site_wide_assets/harvey/site_wide_harvey.js"></script>
		<script src="/modules/menu/menu.js"></script>
		<script src="/modules/blog/blog.js"></script>

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

				<p id="business_name"><cfoutput>#application.site_name#</cfoutput></p>
				<p id="business_street_address" class="business_info"><cfoutput>#application.site_street_address#</cfoutput></p>
				<p id="business_city_state_zip" class="business_info"><cfoutput>#application.site_city#, #application.site_state# #application.site_zip_code#</cfoutput></p>
				<p id="header_address_spacer">&nbsp;</p>
				<p id="business_email"><a href="mailto:<cfoutput>#application.site_contact_email_recipient#</cfoutput>" class="business_info">info@musecollision.com</a></p>
				<p id="business_phone" class="business_info"><cfoutput>#application.site_phone_number#</cfoutput></p>

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


					<div id="repair_steps_content_container">

						<h4 id="repair_steps_heading">Repair Process</h4>



						<div class="repair_step_content_container">

<!--- 							<img class="repair_step_image" src="<cfoutput>#application.userImagesReadDir#</cfoutput>/penguins_01_w320.jpg"/>
 --->
							<p class="repair_step_title">Step 1: Estimate</p>

							<p class="repair_step_text">In the Estimate Process area the vehicle is inspected
								and relevant data is entered into estimate computer systems. This data is compiled
								into an estimate that determines the cost of repairs. However, often there is hidden
								damage that can not be seen until after the vehicle is disassembled.</p>

							<div style="clear:both;"></div>

						</div> <!--- [ repair_step_content_container ] --->	



						<div class="repair_step_content_container">

<!--- 							<img class="repair_step_image" src="<cfoutput>#application.userImagesReadDir#</cfoutput>/penguins_01_w320.jpg"/>
 --->
							<p class="repair_step_title">Step 2: Insurance Approval</p>

							<p class="repair_step_text">Once the estimate is completed, the insurance company will
								review the estimate. There may be some negotiations on the price /procedures required to
								repair the vehicle. The insurance company will determine if the vehicle is repairable.
								Once this process is completed, the vehicle begins the actual repair process.</p>

							<div style="clear:both;"></div>

						</div> <!--- [ repair_step_content_container ] --->



						<div class="repair_step_content_container">

<!--- 							<img class="repair_step_image" src="<cfoutput>#application.userImagesReadDir#</cfoutput>/penguins_01_w320.jpg"/>
 --->
							<p class="repair_step_title">Step 3: Disassembly</p>

							<p class="repair_step_text">In Disassembly hidden damage is often found, and inner structure
								repairs are determined. Many times this will require scheduling insurance re-inspection 
								and ordering additional parts.</p>

							<div style="clear:both;"></div>

						</div> <!--- [ repair_step_content_container ] --->



						<div class="repair_step_content_container">

<!--- 							<img class="repair_step_image" src="<cfoutput>#application.userImagesReadDir#</cfoutput>/penguins_01_w320.jpg"/>
 --->
							<p class="repair_step_title">Step 4: Order Parts</p>

							<p class="repair_step_text">The required parts for your vehicle are ordered, and availability
								is checked. If a part needs to be special ordered, the order will be placed as soon as possible.
								Although many parts may arrive very quickly, the repair process can not begin until the shop
								receives all of the structural parts.</p>

							<div style="clear:both;"></div>

						</div> <!--- [ repair_step_content_container ] --->



						<div class="repair_step_content_container">

<!--- 							<img class="repair_step_image" src="<cfoutput>#application.userImagesReadDir#</cfoutput>/penguins_01_w320.jpg"/>
 --->
							<p class="repair_step_title">Step 5: Structural Repair</p>

							<p class="repair_step_text">In the Structural Repair area, the unitized body is returned
								back to the factory specification. A sophisticated measuring system is used to monitor
								all phases in this area. A computer based measurement system is used to analyze the frame 
								of your vehicle. This system assures an accurate repair.</p>

							<div style="clear:both;"></div>

						</div> <!--- [ repair_step_content_container ] --->



						<div class="repair_step_content_container">

<!--- 							<img class="repair_step_image" src="<cfoutput>#application.userImagesReadDir#</cfoutput>/penguins_01_w320.jpg"/>
 --->
							<p class="repair_step_title">Step 6: Body Repair</p>

							<p class="repair_step_text">The Body Repair Department replaces exterior panels, and all metal
								finishing that may be required. The vehicle begins to come back to life as sheet metal is
								installed and aligned. From here the vehicle will go to the paint preparations department.</p>

							<div style="clear:both;"></div>

						</div> <!--- [ repair_step_content_container ] --->



						<div class="repair_step_content_container">

<!--- 							<img class="repair_step_image" src="<cfoutput>#application.userImagesReadDir#</cfoutput>/penguins_01_w320.jpg"/>
 --->
							<p class="repair_step_title">Step 7: Painting</p>

							<p class="repair_step_text">Paint Preparation is a critical step in the refinishing process of every
								vehicle. All panels are prepared for paint, then primed and sealed to assure good adhesion when
								the final top color and clear coats of paint are applied.</p>

							<div style="clear:both;"></div>

						</div> <!--- [ repair_step_content_container ] --->



						<div class="repair_step_content_container">

<!--- 							<img class="repair_step_image" src="<cfoutput>#application.userImagesReadDir#</cfoutput>/penguins_01_w320.jpg"/>
 --->
							<p class="repair_step_title">Step 8: Reassembly</p>

							<p class="repair_step_text">Final moldings and detail pieces are put back on the vehicle
								in the reassembly area. All the vehicle's systems are checked during this process. The vehicle
								is almost complete and ready for delivery when it is in this stage.</p>

							<div style="clear:both;"></div>

						</div> <!--- [ repair_step_content_container ] --->						



						<div class="repair_step_content_container">

<!--- 							<img class="repair_step_image" src="<cfoutput>#application.userImagesReadDir#</cfoutput>/penguins_01_w320.jpg"/>
 --->
							<p class="repair_step_title">Step 9: Detailing</p>

							<p class="repair_step_text">During the repair process the vehicle accumulates dust from the repairs.
								It will be cleaned. It will also be road tested to ensure that everything is working properly. A
								final inspection will assure that the vehicle is restored to it's pre-accident condition.</p>

							<div style="clear:both;"></div>

						</div> <!--- [ repair_step_content_container ] --->



						<div class="repair_step_content_container">

<!--- 							<img class="repair_step_image" src="<cfoutput>#application.userImagesReadDir#</cfoutput>/penguins_01_w320.jpg"/>
 --->
							<p class="repair_step_title">Step 10: Delivery</p>

							<p class="repair_step_text">Delivery is the last step in the repair process. When the customer
								arrives to pick up the vehicle, the bill is explained and the final paper work is completed.
								The customer drives away in the vehicle that has been restored to its pre-accident condition.</p>

							<div style="clear:both;"></div>

						</div> <!--- [ repair_step_content_container ] --->


					</div> <!--- [ ##repair_steps_content_container ] --->


					




					<div id="contact_info_smaller_pages_container">

						<div id="contact_info_smaller_pages">

							<p id="business_street_address"><a href="/modules/location_map/location-map.cfm"><cfoutput>#application.site_street_address#</cfoutput></a></p>
							<p id="business_city_state_zip" class="business_info"><a href="/modules/location_map/location-map.cfm"><cfoutput>#application.site_city#, #application.site_state# #application.site_zip_code#</cfoutput></a></p>
							<p>&nbsp;</p>
							<p id="business_email"><a href="mailto:<cfoutput>#application.site_contact_email_recipient#</cfoutput>" class="business_info">info@musecollision.com</a></p>
							<p id="business_phone" class="business_info"><cfoutput>#application.site_phone_number#</cfoutput></p>

						</div>

					</div>




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



					<cfinclude template="/modules/footer/footer.cfm" />



	</div> <!--- [ #page_wrapper ] --->

</body>