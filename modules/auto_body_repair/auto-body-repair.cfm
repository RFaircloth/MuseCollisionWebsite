<!doctype html>
<html lang="en">

<head>

<!--- 		<cfset qGetSiteMetaData					= createObject('common_data_access.site_meta_data.site-meta-data').mGetSiteMetaData(site_cgi_server_name='#cgi.server_name#') />--->
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




					<div id="auto_body_repair_content_container">

						<h4 id="auto_body_repair_heading">Auto Body Repair</h4>

						<p>Muse Collision expertly does away with dents, dings, and accidental damage. Our
							standards are simple: repair cars so expertly that no one can tell they were ever
							in an accident. We guarantee our auto body repair work. And with over one million
							cars serviced annually, our results speak for themselves.</p>

						<div class="auto_body_repair_before_after_left"></div>
						<div class="auto_body_repair_before_after_right"></div>

						<div style="clear:both;"></div>

						<br/>

						<h5 class="subheading">Raising the Bar</h5>

						<p>We use original manufacturer parts, factory specs, and precision assembly to
							rebuild damaged cars.</p>

						<p>Cars are designed more safely today than ever before.
							Our collision repair services carefully and expertly rebuild crash design into your car.
							Your car's performance (how it steers, handles, operates) and appearance will be restored
							to pre-accident condition.</p>

						<br/>

						<h5 class="subheading">Committed to Value</h5>

						<p>If you're looking for increased value, Maaco can install used or aftermarket parts. Our
							auto body repair experts will help find a solution that fits your budget.</p>

						<br/>

						<h5 class="subheading">Surface Repair</h5>

						<p>In many cases, a car's existing finish provides an excellent surface for new paint. However,
							often times a car will need extra attention before the new paint can be applied.</p>

						<p>Painting over chips and scratches can intensify the problem. At Muse Collision, we surface sand
							your car to ensure proper paint adhesion.</p>

						<p>Some surface damage such as cracking, peeling or excessive chipping can only be corrected by
							completely removing of the old finish or paint. Cracks and peeling require stripping since
							they penetrate to the bare metal and sanding alone is not enough.</p>

						<br/>

						<h5 class="subheading">Dent Repair</h5>

						<p>At Muse Collision, all of our repairs start with top-tier metalworking technique. Body fillers cover
							minor defects that can remain after the damage has been straightened.</p>

						<p>Proper welding is critical to car repair. Replacement parts must be welded with updated MIG
							welding techniques and equipment to protect their structural integrity.</p>

						<br/>

						<h5 class="subheading">Bumper Repair or Replacement</h5>

						<p>Depending on your car, and your plans for it, you may need to remove or repair the bumper.
							Doing this guarantees the best paint coverage, prevents any overspray on the car, and ensures
							there will be no paint bridging the gap between the bumper and the rest of the car.</p>

						<p>Our experienced technicians repair peeling, torn and dented bumpers for much less than other
							auto body repair shops. We expertly paint match the color of your bumper, using the highest
							quality paints to keep it looking like new.</p>

						<p>Muse Collision's standard practice is to use only original equipment (OE) parts. In some cases - if
							the car is older, if OE parts aren't available or if you or your insurance company want to economize - we
							can provide either used or aftermarket parts.</p>

					</div> <!--- [ auto_body_repair_content_container ] --->





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