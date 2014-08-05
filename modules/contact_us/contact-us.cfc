
<cfcomponent displayName = "contact_us_form" hint = "handles contact us form processing" output = "false">

	<!--- [ mProcessReferFriendForm ] --->

		<cffunction		name 				=	"mProcessContactUsForm"
						displayName 		=	"mProcessContactUsForm"
						hint 				=	"Validates, Processes, and Contact Us Form"
						output 				=	"false"
						access 				=	"remote"
						returnType 			=	"struct" 	>

						<cfargument name 	=	"contactUsFirstName" 				type = "string" 	required = "yes"	>
						<cfargument name 	=	"contactUsLastName"					type = "string" 	required = "yes" 	>
						<cfargument name 	=	"contactUsEmail" 					type = "string" 	required = "yes" 	>
						<cfargument name 	=	"contactUsEmailConfirmation" 		type = "string" 	required = "yes" 	>
						<cfargument name    =   "contactUsComments"                 type = "string"     required = "yes" 	>

						<cfargument name  	=  	"siteName" 							type = "string" 	required = "yes" 	>
						<cfargument name 	=	"siteShortDomain" 					type = "string" 	required = "yes"	>
						<cfargument name  	= 	"siteContactEmailRecipient" 		type = "string" 	required = "yes" 	>
						<cfargument name  	=  	"siteContactEmailResponder"  		type = "string" 	required = "yes" 	>
						<cfargument name  	=	"sitePhoneNumber" 					type = "string" 	required = "yes" 	>
						<cfargument name 	=	"siteStreetAddress" 				type = "string" 	required = "yes" 	>
						<cfargument name 	=	"siteCity" 							type = "string" 	required = "yes" 	>
						<cfargument name  	=	"siteState" 						type = "string" 	required = "yes" 	>
						<cfargument name  	=  	"siteZipCode" 						type = "string" 	required = "yes" 	>

							<cfset contactUsStruct = structNew() >

							<cfset contactUsStruct.FORMSTATUS = 'Success' >





							<cfif not len(trim(arguments.contactUsFirstName)) >
								
								<cfset contactUsStruct.CONTACTUSFIRSTNAME 			= 	'error'		>
								<cfset contactUsStruct.FORMSTATUS					=	'invalid'	>

							</cfif>

							<cfif not len(trim(arguments.contactUsLastName)) >
								
								<cfset contactUsStruct.CONTACTUSLASTNAME 			= 	'error'		>
								<cfset contactUsStruct.FORMSTATUS					=	'invalid'	>
								
							</cfif>

							<cfif not len(trim(arguments.contactUsEmail)) >
								
								<cfset contactUsStruct.CONTACTUSEMAIL  				= 	'error'		>
								<cfset contactUsStruct.FORMSTATUS					=	'invalid'	>
								
							</cfif>

							<cfif not len(trim(arguments.contactUsEmailConfirmation)) >
								
								<cfset contactUsStruct.CONTACTUSEMAILCONFIRMATION 	= 	'error'		>
								<cfset contactUsStruct.FORMSTATUS					=	'invalid'	>
								
							</cfif>

							<cfif not len(trim(arguments.contactUsComments)) >
								
								<cfset contactUsStruct.CONTACTUSCOMMENTS 			= 	'error'		>
								<cfset contactUsStruct.FORMSTATUS					=	'invalid'	>
								
							</cfif>

							<!--- [    ] --->

							<cfif contactUsStruct.FORMSTATUS is 'invalid'	>
								
								<cfreturn contactUsStruct >

							<cfelse>

								<cfmail 	from 			=	'#arguments.contactUsEmail#'
											to              =   '#arguments.siteContactEmailRecipient#'
											bcc 			=	'Rick@WhiteStoneMedia.com'
											subject 		=	'#arguments.contactUsFirstName# #arguments.contactUsLastName# customer contact from #arguments.siteName# website'
											type 			=	'html' >
												
<style>

	body { font-size:1em; font-family:helvetica,'trebuchet ms', arial, sans-serif; }

</style>

<html>

<body>

<b>#arguments.siteShortDomain# Customer Contact</b><br/>
<br/>
<br/>
#dateFormat(now(), 'ddd, mmm d, yyyy')#, #timeFormat(now(), 'h:mm tt')#<br/>
<br/>
<b>Customer:</b><br/>
<br/>
#arguments.contactUsFirstName# #arguments.contactUsLastName#<br/>
<a href="mailto:#arguments.contactUsEmail#">#arguments.contactUsEmail#</a><br/>
<br/>
<br/>
Question or Comment:<br/>
<br/>
#arguments.contactUsComments#<br/>

</body>

</html>

								</cfmail>




								<cfmail 		from 			= 	'#arguments.siteContactEmailResponder#'
												to 				=	'#arguments.contactUsEmail#'
												bcc 			=	'Rick@WhiteStoneMedia.com'
												subject 		=	'Contact Us Message from #arguments.siteShortDomain#'
												type 			=	'html' >
													
<style>

	body { 	font-size:1em; font-family:helvetica, 'trebuchet ms', arial, sans-serif; }

</style>

<html>

<body>

<b>Thank you for contacting us with your question or comment!</b><br/>
<br/>
Your email has been sent to us and we will give it our immediate attention.<br/>
<br/>
<br/>
Sincerely,<br/>
<br/>
#arguments.siteName#<br/>
<br/>
#arguments.sitePhoneNumber#<br/>
<br/>
<a href="mailto:#arguments.siteContactEmailResponder#">#arguments.siteContactEmailResponder#</a><br/>
<br/>
#arguments.siteStreetAddress#<br/>
#arguments.siteCity#, #arguments.siteState# #arguments.siteZipCode#<br/>
<br/>
<br/>
<br/>
<b>Your information that was sent to us:</b><br/>
<br/>
<b>#arguments.contactUsFirstName# #arguments.contactUsLastName#</b><br/>
<br/>
<a href="mailto:#arguments.contactUsEmail#">#arguments.contactUsEmail#</a><br/>
<br/>
<b>Question or Comment:</b><br/>
<br/>
#arguments.contactUsComments#<br/>

</body>

</html>

								</cfmail>

								<cfset contactUsStruct.FORMSTATUS = 'Success' >

								<cfreturn contactUsStruct >

							</cfif>

	</cffunction>

</cfcomponent>