
<cfcomponent displayName = "refer_friend_form" hint = "handles refer friend form processing" output = "false">

	<!--- [ mProcessReferFriendForm ] --->

		<cffunction	name 					=	"mProcessReferFriendForm"
						displayName 		=	"mProcessReferFriendForm"
						hint 					=	"Validates, Processes, and Contact Us Form"
						output 				=	"false"
						access 				=	"remote"
						returnType 			=	"struct" 	>

						<cfargument name 	=	"referFriendSenderFirstName" 						type = "string" 	required = "yes"	>
						<cfargument name 	=	"referFriendSenderLastName"						type = "string" 	required = "yes" 	>
						<cfargument name 	=	"referFriendSenderEmail" 							type = "string" 	required = "yes" 	>
						<cfargument name 	=	"referFriendSenderEmailConfirmation" 			type = "string" 	required = "yes" 	>

						<cfargument name 	=	"referFriendSenderFriendFirstName" 				type = "string" 	required = "yes"	>
						<cfargument name 	=	"referFriendSenderFriendLastName"				type = "string" 	required = "yes" 	>
						<cfargument name 	=	"referFriendSenderFriendEmail" 					type = "string" 	required = "yes" 	>
						<cfargument name 	=	"referFriendSenderFriendEmailConfirmation" 	type = "string" 	required = "yes" 	>

						<cfargument name  =  "referFriendSenderComments"             		type = "string"   required = "yes" 	>

						<cfargument name  =  "siteDSN" 												type = "string"	required = "yes"  >
						<cfargument name  =  "siteName" 												type = "string" 	required = "yes" 	>
						<cfargument name 	=	"siteShortDomain" 									type = "string" 	required = "yes"	>
						<cfargument name  = 	"siteReferFriendBusinessEmailRecipient" 		type = "string" 	required = "yes" 	>
						<cfargument name  =  "siteReferFriendBusinessEmailResponder"  		type = "string" 	required = "yes" 	>
						<cfargument name  =	"sitePhoneNumber" 									type = "string" 	required = "yes" 	>
						<cfargument name 	=	"siteStreetAddress" 									type = "string" 	required = "yes" 	>
						<cfargument name 	=	"siteCity" 												type = "string" 	required = "yes" 	>
						<cfargument name  =	"siteState" 											type = "string" 	required = "yes" 	>
						<cfargument name  =  "siteZipCode" 											type = "string" 	required = "yes" 	>

						<cfset referFriendStruct = structNew() >

						<cfset referFriendStruct.FORMSTATUS = 'Success' >





						<cfif not len(trim(arguments.referFriendSenderFirstName)) >
								
								<cfset referFriendStruct.REFERFRIENDSENDERSFIRSTNAME 					= 	'error'		>
								<cfset referFriendStruct.FORMSTATUS											=	'invalid'	>

							</cfif>

							<cfif not len(trim(arguments.referFriendSenderLastName)) >
								
								<cfset referFriendStruct.REFERFRIENDSENDERLASTNAME 					= 	'error'		>
								<cfset referFriendStruct.FORMSTATUS											=	'invalid'	>
								
							</cfif>

							<cfif not len(trim(arguments.referFriendSenderEmail)) >
								
								<cfset referFriendStruct.REFERFRIENDSENDEREMAIL 	 					= 	'error'		>
								<cfset referFriendStruct.FORMSTATUS											=	'invalid'	>
								
							</cfif>

							<cfif not len(trim(arguments.referFriendSenderEmailConfirmation)) >
								
								<cfset referFriendStruct.REFERFRIENDSENDEREMAILCONFIRMATION 		= 	'error'		>
								<cfset referFriendStruct.FORMSTATUS											=	'invalid'	>
								
							</cfif>

						<cfif not len(trim(arguments.referFriendSenderFriendFirstName)) >
								
								<cfset referFriendStruct.REFERFRIENDSENDERFRIENDFIRSTNAME			= 	'error'		>
								<cfset referFriendStruct.FORMSTATUS											=	'invalid'	>

							</cfif>

							<cfif not len(trim(arguments.referFriendSenderFriendLastName)) >
								
								<cfset referFriendStruct.REFERFRIENDSENDERFRIENDLASTNAME				= 	'error'		>
								<cfset referFriendStruct.FORMSTATUS											=	'invalid'	>
								
							</cfif>

							<cfif not len(trim(arguments.referFriendSenderFriendEmail)) >
								
								<cfset referFriendStruct.REFERFRIENDSENDERFRIENDEMAIL					= 	'error'		>
								<cfset referFriendStruct.FORMSTATUS											=	'invalid'	>
								
							</cfif>

							<cfif not len(trim(arguments.referFriendSenderFriendEmailConfirmation)) >
								
								<cfset referFriendStruct.REFERFRIENDSENDERFRIENDEMAILCONFIRMATION = 	'error'		>
								<cfset referFriendStruct.FORMSTATUS											=	'invalid'	>
								
							</cfif>							

							<cfif not len(trim(arguments.referFriendSenderComments)) >
								
								<cfset referFriendStruct.REFERFRIENDSENDERCOMMENTS						= 	'error'		>
								<cfset referFriendStruct.FORMSTATUS											=	'invalid'	>
								
							</cfif>

							<!--- [    ] --->

							<cfif referFriendStruct.FORMSTATUS is 'invalid'	>
								
								<cfreturn referFriendStruct >

							<cfelse>

								<cfmail 	from 			=	'#arguments.referFriendSenderEmail#'
											to          =  '#arguments.referFriendSenderFriendEmail#'
											bcc 			=	'Rick@WhiteStoneMedia.com'
											subject 		=	'Recommend You Use Muse Collision (#arguments.siteName#) for Car Repairs!'
											type 			=	'html' >
												
<style>

	body { font-size:1em; font-family:helvetica,'trebuchet ms', arial, sans-serif; }

</style>

<html>

<body>

<b>Hi, #arguments.referFriendSenderFriendFirstName#:</b><br/>
<br/>
Below is the message that #arguments.referFriendSenderFirstName# #arguments.referFriendSenderLastName# sent you from our website, <a href="http://www.#arguments.siteShortDomain#">#arguments.siteShortDomain#</a>.<br/>
<br/>
#dateFormat(now(), 'ddd, mmm d, yyyy')#, #timeFormat(now(), 'h:mm tt')#<br/>
<br/>
-----------------------------------------------------------------------------<br/>
<br/>
#arguments.referFriendSenderComments#<br/>
<br/>
-----------------------------------------------------------------------------<br/>
<br/>
Thank you for taking the time to read this message and let us know if we can<br/>
help you in any way!<br/>
<br/>
<b>#arguments.siteName#</b><br/>
<br/>
<a href="mailto:#arguments.siteReferFriendBusinessEmailRecipient#">#arguments.siteReferFriendBusinessEmailRecipient#</a><br/>
#arguments.sitePhoneNumber#<br/>
<br/>
#arguments.siteStreetAddress#<br/>
#arguments.siteCity#, #arguments.siteState# #arguments.siteZipCode#<br/>

</body>

</html>

								</cfmail>




								<cfmail 		from 			= 	'#arguments.siteReferFriendBusinessEmailResponder#'
												to 			=	'#arguments.referFriendSenderEmail#'
												bcc 			=	'Rick@WhiteStoneMedia.com'
												subject 		=	'#arguments.siteShortDomain# Refer-A-Friend Message'
												type 			=	'html' >
													
<style>

	body { 	font-size:1em; font-family:helvetica, 'trebuchet ms', arial, sans-serif; }

</style>

<html>

<body>

<b>Thank you for using our Refer-A-Friend service!</b><br/>
<br/>
The following message was sent on your behalf from our website on #dateFormat(now(), 'ddd, mmm d, yyyy')#, #timeFormat(now(), 'h:mm tt')#.<br/>
<br/>
---------------------------------------------------------------------------<br/>
<br/>
#arguments.referFriendSenderComments#<br/>
<br/>
---------------------------------------------------------------------------<br/>
<br/>
Please let us know if you had any problem with the message or the Refer-A-Friend service!<br/>
<br/>
Sincerely,<br/>
<br/>
#arguments.siteName#<br/>
<br/>
#arguments.sitePhoneNumber#<br/>
<br/>
<a href="mailto:#arguments.siteReferFriendBusinessEmailResponder#">#arguments.siteReferFriendBusinessEmailResponder#</a><br/>
<br/>
#arguments.siteStreetAddress#<br/>
#arguments.siteCity#, #arguments.siteState# #arguments.siteZipCode#<br/>


</body>

</html>

								</cfmail>

								<cfset referFriendStruct.FORMSTATUS = 'Success' >

								<cfreturn referFriendStruct >

							</cfif>

	</cffunction>

</cfcomponent>