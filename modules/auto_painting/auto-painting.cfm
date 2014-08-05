<!doctype html>
<html lang="en">

<head>

<!--- 		<cfset qGetSiteMetaData					= createObject('common_data_access.site_meta_data.site-meta-data').mGetSiteMetaData(site_cgi_server_name='#cgi.server_name#') /> --->
		<cfset qGetLastTwoBlogEntries 		= createObject('#application.modulesCFCPath#.blog.blog').mGetLastTwoBlogEntries(site_dsn='#application.site_dsn#') />		
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

			<cfinclude template = "/site_wide_assets/includes/social-icons.cfm" />				

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




					<div id="auto_painting_content_container">

						<h4 id="auto_painting_heading">Auto Painting</h4>

						<p>When's the last time you gave your car a second look? Or ran your fingers along the hood?
							It's time you fell back in love with your car again. Let us transform your car with a new
							coat of paint, and soon you'll be driving the car you always wanted.</p>

						<h5 class="subheading">Wear and Tear Happens</h5>

						<p>Sometimes you just can't avoid the elements. Things like acid rain, harsh sunlight, and salt
							air from living on the coast break down the color and finish. Even the soap you use to wash
							your car can take its toll on your paint.</p>

						<div class="auto_painting_before_after_left"></div>
						<div class="auto_painting_before_after_right"></div>

						<div style="clear:both;"></div>

						<h5 class="subheading">Transformation</h5>						

						<p>Maybe you had a fender-bender and your car got damaged. Maybe you have an older car you'd 
							ike to sell, but its worn out appearance stands in your way. Or maybe you just want to give
							your car a little touch up. No matter what the reason, Maaco offers great paint jobs at
							affordable prices.</p>

						<h5 class="subheading">At Muse Collision, we see the potential in every car that comes through our doors.</h5>

						<p>That's why we chemically clean the old car paint, thoroughly sand the surface, protect all
							chrome, windows and paint the exterior exactly the way you want it whether you need your
							whole car painted or just some key spot areas.</p>

						<h5 class="subheading">Spot Painting</h5>

						<p>Turning the car you drive into the car you love is sometimes as simple as a little touch up.
							So when your car needs only one or two panels painted, spot painting can often be the best
							and most cost effective way to go.</p>

						<p>We'll target the areas needing repair and make sure adjacent panels are chemically cleaned
							and block sanded to give a precise and flawless surface for painting. We then use a multiple
							masking process to ensure an accurate "blending" of the new and old car paint so that your
							the transformation is flawless.</p>

						<h5 class="subheading">Clear Coat</h5>

						<p>A great paint job deserves great protection. We often apply clear coats to our paint jobs
							to not only protect the paint, but to ensure an accurate gloss match and an overall seamless repair.</p>

					</div> <!--- [ auto_painting_content_container ] --->





					<div id="contact_info_smaller_pages_container">

						<div id="contact_info_smaller_pages">

							<p id="business_street_address"><a href="/modules/location_map/location-map.cfm">14 Brights Lake Road</a></p>
							<p id="business_city_state_zip" class="business_info"><a href="/modules/location_map/location-map.cfm">Hinesville, GA 31313</a></p>
							<p>&nbsp;</p>
							<p id="business_email"><a href="mailto:business_email@business.com" class="business_info">info@musecollision.com</a></p>
							<p id="business_phone" class="business_info">912-977-9393</p>

						</div>

					</div>





					<div id="customer_comments_right_container">

							<h4 id="customer_comments_right_heading">Customer Comments</h4>

							<cfoutput query = "qGetLastTwoCustomerComments" >

								<p class="customer_comments_right_text">#replace(comments, '#chr(13)#', '<br/>', 'all')#
									<span class="customer_comments_right_tag">#customer_tag#</span></p>

								<br/>

							</cfoutput>

					</div> <!--- [ customer_comments ] --->


					<div style="clear:both;"></div>



					<cfinclude template="/modules/footer/footer.cfm" />



	</div> <!--- [ #page_wrapper ] --->

</body>