
	$(document).ready(function() {

		$('.field_valid').hide();
		$('.processing_image').hide();
		$('#processing_text').hide();
		$('#processing_success').hide();
		$('#processing_error').hide();

		$('#contact_us_submit_button').attr('disabled', 'disabled');

	});




	// --- [ form validation ] --------------------------------------------------------------------- //

		var contactUsFirstNameVerified 					=	'false';
		var contactUsLastNameVerified 					=	'false';
		var contactUsEmailVerified 						=	'false';
		var contactUsEmailConfirmationVerified 		=	'false';
		var contactUsCommentsVerified 					=	'false';


		$(document).ready(function() {


			$('#contact_us_first_name').blur(function() {

				$('#contact_us_first_name_error').empty().hide();

				var contactUsFirstName = $('#contact_us_first_name').val();

				if 		(	contactUsFirstName.length === 0 	)
						{ 	$('#contact_us_first_name_valid:visible').hide();
							$('#contact_us_first_name').css({'background-color':'rgba(255,0,0,.7)', color:'#fff', 'font-weight':'bold'});
							$('#contact_us_first_name_error').append('entry required').fadeIn(250); 		}

				else 	{ 	$('#contact_us_first_name_error:visible').empty().hide();
							$('#contact_us_first_name').css({'background-color':'rgba(255,255,255,1)', color:'#000', 'font-weight':'normal'});
							$('#contact_us_first_name_valid').fadeIn(250);
							contactUsFirstNameVerified = 'true';
							verifyValidation();										}

			});


			$('#contact_us_last_name').blur(function() {

				$('#contact_us_last_name_error').empty().hide();				

				var contactUsLastName = $('#contact_us_last_name').val();

				if 		(	contactUsLastName.length === 0 	)
						{ 	$('#contact_us_sender_last_name_valid:visible').hide();
							$('#contact_us_last_name').css({'background-color':'rgba(255,0,0,.7)', color:'#fff', 'font-weight':'bold'});
							$('#contact_us_last_name_error').append('entry required').fadeIn(250); 		}

				else 	{ 	$('#contact_us_last_name_error:visible').empty().hide();
							$('#contact_us_last_name').css({'background-color':'rgba(255,255,255,1)', color:'#000', 'font-weight':'normal'});
							$('#contact_us_last_name_valid').fadeIn(250);
							contactUsLastNameVerified = 'true';
							verifyValidation();												}

			});


			$('#contact_us_email').blur(function() {

				$('#contact_us_email_error').empty().hide();				

				var contactUsEmail = $('#contact_us_email').val();

				if 		(	contactUsEmail.length === 0 	)
						{ 	$('#contact_us_email_valid:visible').hide();
							$('#contact_us_email').css({'background-color':'rgba(255,0,0,.7)', color:'#fff', 'font-weight':'bold'});
							$('#contact_us_email_error').append('entry required').fadeIn(250); 		}

				else 	{ 	$('#contact_us_email_error:visible').empty().hide();
							$('#contact_us_email').css({'background-color':'rgba(255,255,255,1)', color:'#000', 'font-weight':'normal'});
							$('#contact_us_email_valid').fadeIn(250);
							contactUsEmailVerified = 'true';
							verifyValidation();												}

			});


			$('#contact_us_email_confirmation').blur(function() {

//				alert('1');

				$('#contact_us_email_confirmation_error').empty().hide();

//				alert('2');				

				var contactUsEmail 			 	= $('#contact_us_email').val();

//				alert('3');

//				alert(contactUsEmail);

				var contactUsEmailConfirmation 	= $('#contact_us_email_confirmation').val();

				if 		(	contactUsEmailConfirmation.length === 0 	)
							{ 	$('#contact_us_email_confirmation_valid:visible').hide();
								$('#contact_us_email_confirmation').css({'background-color':'rgba(255,0,0,.7)', color:'#fff', 'font-weight':'bold'});
								$('#contact_us_email_confirmation_error').append('entry required').fadeIn(250); 		}

				else if 	( 	contactUsEmailConfirmation != contactUsEmail 	)
							{ 	$('#contact_us_email_confirmation_valid:visible').hide();
								$('#contact_us_email_confirmation').css({'background-color':'rgba(255,0,0,.7)', color:'#fff', 'font-weight':'bold'});
								$('#contact_us_email_confirmation_error').append('must match email').fadeIn(250); 		}					

				else 		{ 	$('#contact_us_email_error_confirmation:visible').empty().hide();
								$('#contact_us_email_confirmation').css({'background-color':'rgba(255,255,255,1)', color:'#000', 'font-weight':'normal'});
								$('#contact_us_email_confirmation_valid').fadeIn(250);
								contactUsEmailConfirmationVerified = 'true';
								verifyValidation();												}

			});




			$('#contact_us_comments').blur(function() {

				$('#contact_us_comments_error').empty().hide();				

				var contactUsComments = $('#contact_us_comments').val();

				if 		(	contactUsComments.length === 0 	)
						{ 	$('#contact_us_comments_valid:visible').hide();
							$('#contact_us_comments').css({'background-color':'rgba(255,0,0,.7)', color:'#fff', 'font-weight':'bold'});
							$('#contact_us_comments_error').append('entry required').fadeIn(250); 		}

				else 	{ 	$('#contact_us_comments_error:visible').empty().hide();
							$('#contact_us_comments').css({'background-color':'rgba(255,255,255,1)', color:'#000', 'font-weight':'normal'});
							$('#contact_us_comments_valid').fadeIn(250);
							contactUsCommentsVerified = 'true';
							verifyValidation();												}

			});						


		});




		function verifyValidation() {

			if 	( 	contactUsFirstNameVerified 				=== 	'true' &&
						contactUsLastNameVerified 					===	'true' &&
						contactUsEmailVerified 						=== 	'true' &&
						contactUsEmailConfirmationVerified 		=== 	'true' &&
						contactUsCommentsVerified 					===	'true' 			)

					{ 	$('#contact_us_submit_button').attr('disabled', false); 				}

		}




	// --- [ contact us submit button click ] --------------------------------------------------------- //

		$(document).ready(function() {

			$('#contact_us_submit_button').click(function() {

				$('#processing_text').text('Processing request...').fadeIn(250);

				var contactUsFirstName 							= 	$('#contact_us_first_name').val();
				var contactUsLastName  							= 	$('#contact_us_last_name').val();
				var contactUsEmail     							= 	$('#contact_us_email').val();
				var contactUsEmailConfirmation 					=	$('#contact_us_email_confirmation').val();
				var contactUsComments 							=	$('#contact_us_comments').val();

				var siteName 										=	$('#site_name').val();
				var siteShortDomain 								=	$('#site_short_domain').val();
				var siteContactEmailRecipient					=	$('#site_contact_email_recipient').val();
				var siteContactEmailResponder 				=  	$('#site_contact_email_responder').val();
				var sitePhoneNumber 								=	$('#site_phone_number').val();
				var siteStreetAddress 							=	$('#site_street_address').val();
				var siteCity 										=	$('#site_city').val();
				var siteState 										=	$('#site_state').val();
				var siteZipCode 									=	$('#site_zip_code').val();

				values 	=	{ 		contactUsFirstName: 				contactUsFirstName,
										contactUsLastName: 				contactUsLastName,
										contactUsEmail: 					contactUsEmail,
										contactUsEmailConfirmation: 	contactUsEmailConfirmation,
										contactUsComments: 				contactUsComments,

										siteName: 							siteName,
										siteShortDomain: 					siteShortDomain,
										siteContactEmailRecipient: 	siteContactEmailRecipient,
										siteContactEmailResponder: 	siteContactEmailResponder,
										sitePhoneNumber: 					sitePhoneNumber,
										siteStreetAddress: 				siteStreetAddress,
										siteCity: 							siteCity,
										siteState: 							siteState,
										siteZipCode: 						siteZipCode 				}

				$.ajax 		({ 	cache: 								false,
										type: 								'post',
										url: 									'contact-us.cfc?method=mProcessContactUsForm&returnFormat=json',
										dataType: 							'json',
										data: 								values,
										success: 							function(response)	{

																					if 		(	response.FORMSTATUS === 'Success' 								)
																								{ 	$('#processing_text').text('Success! Thank You!').fadeIn(250); 	}

																					else 		{ 	alert('Contact Us Email not Sent!') 							}

																				}
				});
			});
		});



