<!doctype html>
<html lang="en">

<head>

<!--- <cfset qGetSiteMetaData					= createObject('common_data_access.site_meta_data.site-meta-data').mGetSiteMetaData(site_cgi_server_name='#cgi.server_name#') />--->
<!---	<cfset qGetLastTwoBlogEntries 		= createObject('#application.modulesCFCPath#.blog.blog').mGetLastTwoBlogEntries(site_dsn='#application.site_dsn#') />	--->
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





					<div id="location_map_container">
	
						<h4 id="map_heading">Our Location</h4>

						<div id="map_container">

							<iframe id="map_iframe" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.com/maps?q=31.834928,-81.534093&amp;num=1&amp;t=h&amp;ie=UTF8&amp;ll=31.834691,-81.532974&amp;spn=0.103983,0.181789&amp;z=13&amp;output=embed"></iframe>

						</div>

					</div> <!--- [ #location_map_container ] --->










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