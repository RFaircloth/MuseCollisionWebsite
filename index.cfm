<!doctype html>
<html lang="en">

<head>

<!---

		<cfset qGetSiteMetaData					= createObject('common_data_access.site_meta_data.site-meta-data').mGetSiteMetaData(site_cgi_server_name='#cgi.server_name#') />
 		<cfset qGetLastTwoBlogEntries 		= createObject('common_data_access.blog.blog').mGetLastTwoBlogEntries(site_id='#qGetSiteMetaData.site_id#', site_dsn='#qGetSiteMetaData.site_dsn#') />
		<cfset qGetLastTwoCustomerComments	= createObject('common_data_access.customer_comments.customer_comments').mGetLastTwoCustomerComments(site_id='#qGetSiteMetaData.site_id#', site_dsn='#qGetSiteMetaData.site_dsn#') />

--->

		<cfset qGetLastTwoCustomerComments  = createObject('#application.modulesCFCPath#.customer_comments.customer_comments').mGetLastTwoCustomerComments(site_dsn='#application.site_dsn#') />

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

	<img class="page_background" src="<cfoutput>#application.imagesDir#</cfoutput>/nebulosity01.jpg"/>

	<cfinclude template="/modules/misc/screen_width/screen-width.cfm"/>

	<div id="page_wrapper">


<!--- 				<cfoutput>getDirectoryFromPath=#getDirectoryFromPath(getCurrentTemplatePath())#</cfoutput><br/>
				<br/>
				<cfoutput>getCurrentTemplatePath()=#getCurrentTemplatePath()#</cfoutput><br/>
				<br/>
				<cfoutput>getBaseTemplatePath()=#getBaseTemplatePath()#</cfoutput><br/>
				<cfoutput>#getDirectoryFromPath(getCurrentTemplatePath())#</cfoutput><br/>
				<br/> --->


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

		<div class="module_100" id="contact_info_smaller">

			<div id="contact_info_smaller_container">

				<p id="business_street_address"><a href="/modules/location_map/location-map.cfm">14 Brights Lake Road</a></p>
				<p id="business_city_state_zip" class="business_info"><a href="/modules/location_map/location-map.cfm">Hinesville, GA 31313</a></p>
				<p>&nbsp;</p>
				<p id="business_email"><a href="mailto:business_email@business.com" class="business_info">info@musecollision.com</a></p>
				<p id="business_phone" class="business_info">912-977-9393</p>

			</div>

		</div>

		<!-------------------------------------------------------------------------------------------------->



		<div class="module_100" id="large_photo_container">

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

		</div>




		<div class="module_100">

					<div id="excellence_content_container">
	
						<h4 id="excellence">Excellence Is Job One!</h4>

						<p>Muse Collision Center, formerly Southeast Collision in Hinesville, was founded
							on four simple standards: Honesty, Integrity, Quality repairs, and Customer Service.</p>

						<p>&nbsp;</p>

						<p>We understand that auto repair is often an unfamiliar process for our customers and
							take it upon ourselves to make the process as easy as possible. Our goal is to get
							the vehicle repaired in a timely manner with as little inconvenience possible
							to the customer without sacrificing quality for speed.</p>

						<div class="excellence_before_after_left"></div>
						<div class="excellence_before_after_right"></div>

						<div style="clear:both;"></div>

					</div> <!--- [ #excellence_content_container ] --->



					<div id="customer_comments_right_container">

							<h4 id="customer_comments_right_heading">Customer Comments</h4>

							<cfoutput query = "qGetLastTwoCustomerComments" >

								<p class="customer_comments_right_text">#replace(comments, '#chr(13)#', '<br/>', 'all')#
									<span class="customer_right_tag">#customer_tag#</span></p>

								<br/>

							</cfoutput>

					</div> <!--- [ customer_comments ] --->

					<div style="clear:both;"></div>

		</div> <!--- [ module_100 ] --->



		<cfinclude template="/modules/footer/footer.cfm" />



		<div class="module_100">

			<div class="module_33"></div>
			<div class="module_33"></div>
			<div class="module_34"></div>

		</div>



	</div> <!--- [ #page_wrapper ] --->

</body>