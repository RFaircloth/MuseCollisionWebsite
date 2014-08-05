
<cfcomponent hint="handles application settings and variables" output="false">

		<cfset this.name							=	"muse-collision-site-manager"			/>
		<cfset this.sessionManagement 		= 	true											/>
		<cfset this.sessionTimeout 			= 	"#createTimeSpan(0,1,0,0)#"			/>
		<cfset this.applicationTimeout 		= 	"#createTimeSpan(1,0,0,0)#"			/>

		<cfset this.directory 					=	getDirectoryFromPath(getCurrentTemplatePath()) />

		<cfset this.mappings['/graphicsDir'] 	=	(this.directory & 'site_wide_assets/images') />


	<cffunction name = "onApplicationStart" >

		<cfset application.absoluteRootDirectory 	=	getDirectoryFromPath(getCurrentTemplatePath()) />

		<!--- <cfset structDelete(session, 'site_manager_id') /> --->

		<cfif  cgi.server_name	is	'local.musecollision.com'		>

			<cfset application.site_dsn												=	"muse_collision_local" 													/>
			<cfset application.site_name 												= 	"Muse Collision"															/>
			<cfset application.site_short_domain 									=	"MuseCollision.com"														/>
			<cfset application.site_contact_email_recipient						=	"bill.muse@musecollision.com"											/>
			<cfset application.site_contact_email_responder 					=	"bill.muse@musecollision.com"											/>
			<cfset application.site_refer_friend_business_email_recipient 	=	"bill.muse@musecollision.com"											/>
			<cfset application.site_refer_friend_business_email_responder	=	"bill.muse@musecollision.com"											/>
			<cfset application.site_phone_number									=	"912-977-9393"																/>
			<cfset application.site_street_address									=	"14 Brights Lake Road" 													/>
			<cfset application.site_city												=	"Hinesville"																/>
			<cfset application.site_state												=	"GA"																			/>
			<cfset application.site_zip_code											=	"31313"																		/>
			<cfset application.rootDir 												=	"/musecollision_2014_0211/" 											/>
			<cfset application.imagesDir 												=	"site_wide_assets/images"												/>
			<cfset application.userImagesReadDir									=	"http://local.musecollision.com/user-images"						/>
			<cfset application.userImagesWriteDir 									=	"e:\inetpub\webroot\musecollision_2014_0211\user-images" 	/>
			<cfset application.cssDir													=	"/musecollision-sm/css"													/>
			<cfset application.jsDir													=	"/musecollision-sm/js"													/>
			<cfset application.modulesDir												=	"/musecollision-sm/modules"											/>
			<cfset application.includesPath 											=	"/musecollision-sm/includes"											/>
			<cfset application.modulesCFCPath										=	"modules"																	/>

		<cfelseif cgi.server_name is 'dev.musecollision.com'		>

			<cfset application.site_dsn												=	"muse_collision_dev" 													/>
			<cfset application.site_name 												=	"Muse Collision" 															/>
			<cfset application.site_short_domain 									=	"MuseCollision.com"														/>
			<cfset application.site_contact_email_recipient						=	"bill.muse@musecollision.com"											/>
			<cfset application.site_contact_email_responder 					=	"bill.muse@musecollision.com"											/>			
			<cfset application.site_refer_friend_business_email_recipient	=	"bill.muse@musecollision.com"											/>
			<cfset application.site_refer_friend_business_email_responder	=	"bill.muse@musecollision.com"											/>
			<cfset application.site_phone_number									=	"912-977-9393" 															/>
			<cfset application.site_street_address									=	"14 Brights Lake Road"													/>
			<cfset application.site_city												=	"Hinesville"																/>
			<cfset application.site_state												=	"GA"																			/>
			<cfset application.site_zip_code											=	"31313"																		/>			
			<cfset application.rootDir 												=	"/musecollision-dev/"													/>
			<cfset application.imagesDir												=	"site_wide_assets/images" 												/>
			<cfset application.userImagesReadDir									=	"http://dev.musecollision.com/user-images"						/>
			<cfset application.userImagesWriteDir									=	"e:\inetpub\webroot\musecollision-dev\user-images"				/>
			<cfset application.cssDir													=	"/musecollision-dev/css"												/>
			<cfset application.jsDir													=	"/musecollision-dev/js"													/>
			<cfset application.modulesDir												=	"/musecollision-dev/modules/"											/>
			<cfset application.includesPath											=	"/musecollision-dev/includes/"										/>
			<cfset application.modulesCFCPath										=	"modules"																	/>

		<cfelseif cgi.server_name is 'client.musecollision.com'		>

			<cfset application.site_dsn												=	"muse_collision_client" 												/>
			<cfset application.site_name 												=	"Muse Collision" 															/>
			<cfset application.site_short_domain 									=	"MuseCollision.com"														/>
			<cfset application.site_contact_email_recipient						=	"bill.muse@musecollision.com"											/>
			<cfset application.site_contact_email_responder 					=	"bill.muse@musecollision.com"											/>			
			<cfset application.site_refer_friend_business_email_recipient	=	"bill.muse@musecollision.com"											/>
			<cfset application.site_refer_friend_business_email_responder	=	"bill.muse@musecollision.com"											/>
			<cfset application.site_phone_number									=	"912-977-9393" 															/>
			<cfset application.site_street_address									=	"14 Brights Lake Road"													/>
			<cfset application.site_city												=	"Hinesville"																/>
			<cfset application.site_state												=	"GA"																			/>
			<cfset application.site_zip_code											=	"31313"																		/>			
			<cfset application.rootDir 												=	"/musecollision-client/"												/>
			<cfset application.imagesDir												=	"site_wide_assets/images" 												/>
			<cfset application.userImagesReadDir									=	"http://client.musecollision.com/user-images"					/>
			<cfset application.userImagesWriteDir									=	"e:\inetpub\webroot\musecollision-client\user-images"			/>
			<cfset application.cssDir													=	"/musecollision-client/css"											/>
			<cfset application.jsDir													=	"/musecollision-client/js"												/>
			<cfset application.modulesDir												=	"/musecollision-client/modules/"										/>
			<cfset application.includesPath											=	"/musecollision-client/includes/"									/>
			<cfset application.modulesCFCPath										=	"modules"																	/>

		<cfelseif cgi.server_name is 'www.musecollision.com'		>

			<cfset application.site_dsn												=	"muse_collision_client" 												/>
			<cfset application.site_name 												=	"Muse Collision" 															/>
			<cfset application.site_short_domain 									=	"MuseCollision.com"														/>
			<cfset application.site_contact_email_recipient						=	"bill.muse@musecollision.com"											/>
			<cfset application.site_contact_email_responder 					=	"bill.muse@musecollision.com"											/>			
			<cfset application.site_refer_friend_business_email_recipient	=	"bill.muse@musecollision.com"											/>
			<cfset application.site_refer_friend_business_email_responder	=	"bill.muse@musecollision.com"											/>
			<cfset application.site_phone_number									=	"912-977-9393" 															/>
			<cfset application.site_street_address									=	"14 Brights Lake Road"													/>
			<cfset application.site_city												=	"Hinesville"																/>
			<cfset application.site_state												=	"GA"																			/>
			<cfset application.site_zip_code											=	"31313"																		/>			
			<cfset application.rootDir 												=	"/musecollision-production/"											/>
			<cfset application.imagesDir												=	"site_wide_assets/images" 												/>
			<cfset application.userImagesReadDir									=	"http://wwww.musecollision.com/user-images"						/>
			<cfset application.userImagesWriteDir									=	"e:\inetpub\webroot\musecollision-production\user-images"	/>
			<cfset application.cssDir													=	"/musecollision-production/css"											/>
			<cfset application.jsDir													=	"/musecollision-production/js"												/>
			<cfset application.modulesDir												=	"/musecollision-production/modules/"										/>
			<cfset application.includesPath											=	"/musecollision-production/includes/"									/>
			<cfset application.modulesCFCPath										=	"modules"																	/>


		</cfif>
	
	</cffunction>


	<cffunction name = "onRequestStart">

		<cfif structKeyExists(url, 'reinit')>

			<cfscript>
				onApplicationStart();
			</cfscript>

		</cfif>

	</cffunction>
	

</cfcomponent>