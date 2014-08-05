
<cfcomponent>
	
	<cffunction 	name 				=	"mGetBlog"
						displayName 	=	"mGetBlog"
						hint 				=	"Get blog entries"
						output 			= 	"false"
						access 			=	"public"
						returnType 		=	"query" >
					
						<!--- <cfargument name 	= "site_id" 	type = "string" 	required = "yes" /> --->
						<cfargument name 	= "site_dsn" 	type = "string" 	required = "yes" />

						<cfquery 	name 	= "qGetBlog" 	datasource = "#arguments.site_dsn#" >
						
							select 	 	*
							from		blog
							order by	blog_post_date_entered desc

						</cfquery>

						<cfreturn 		qGetBlog />

	</cffunction>


	<cffunction 	name 					=	"mGetLastTwoBlogEntries"
						displayName 		=	"mGetLastTwoBlogEntries"
						hint 					=	"Gets last two blog entries"
						output 				= 	"false"
						access 				=	"public"
						returnType 			=	"query" >
					
						<cfargument name 	= "site_dsn" 	type = "string" 		required = "yes" />
						<!--- <cfargument name 	= "site_id" 	type = "string"	 	required = "yes" /> --->

						<cfquery 		name = "qGetLastTwoBlogEntries" 	datasource = "#arguments.site_dsn#" >
						
							select 	 	blog_post_title, blog_post_author, blog_post_byline, blog_post_date_entered,
											blog_post_image_100, blog_post_image_320, blog_post_image_480, blog_post_image_600,
											blog_post_image_1000
											
							from			blog

							order by		blog_post_date_entered desc
							limit 		2

						</cfquery>

						<cfreturn 		qGetLastTwoBlogEntries />

	</cffunction>


</cfcomponent>