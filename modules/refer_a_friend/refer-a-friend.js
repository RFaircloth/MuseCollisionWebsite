
	$(document).ready(function() {

		$('.field_valid').hide();
		$('.processing_image').hide();
		$('#processing_text').hide();
		$('#processing_success').hide();
		$('#processing_error').hide();

		$('#refer_friend_submit_button').attr('disabled', 'disabled');

	});




	// --- [ form validation ] --------------------------------------------------------------------- //

		var referFriendSenderFirstNameVerified 					=	'false';
		var referFriendSenderLastNameVerified 						=	'false';
		var referFriendSenderEmailVerified 							=	'false';
		var referFriendSenderEmailConfirmationVerified 			=	'false';

		var referFriendSenderFriendFirstNameVerified 			=	'false';
		var referFriendSenderFriendLastNameVerified 				=	'false';
		var referFriendSenderFriendEmailVerified 					=	'false';
		var referFriendSenderFriendEmailConfirmationVerified	=	'false';

		var referFriendSenderCommentsVerified 						=	'false';


		$(document).ready(function() {


			$('#refer_friend_sender_first_name').blur(function() {

				$('#refer_friend_sender_first_name_error').empty().hide();

				var referFriendSenderFirstName = $('#refer_friend_sender_first_name').val();

				if 		(	referFriendSenderFirstName.length === 0 	)
							{ 	$('#refer_friend_sender_first_name_valid:visible').hide();
								$('#refer_friend_sender_first_name').css({'background-color':'rgba(255,0,0,.7)', color:'#fff', 'font-weight':'bold'});
								$('#refer_friend_sender_first_name_error').append('entry required').fadeIn(250); 		}

				else 		{ 	$('#refer_friend_sender_first_name_error:visible').empty().hide();
								$('#refer_friend_sender_first_name').css({'background-color':'rgba(255,255,255,1)', color:'#000', 'font-weight':'normal'});
								$('#refer_friend_sender_first_name_valid').fadeIn(250);
								referFriendSenderFirstNameVerified = 'true';
								verifyValidation();										}

			});


			$('#refer_friend_sender_last_name').blur(function() {

				$('#refer_friend_sender_last_name_error').empty().hide();				

				var referFriendSenderLastName = $('#refer_friend_sender_last_name').val();

				if 		(	referFriendSenderLastName.length === 0 	)
							{ 	$('#refer_friend_sender_last_name_valid:visible').hide();
								$('#refer_friend_sender_last_name').css({'background-color':'rgba(255,0,0,.7)', color:'#fff', 'font-weight':'bold'});
								$('#refer_friend_sender_last_name_error').append('entry required').fadeIn(250); 		}

				else 		{ 	$('#refer_friend_sender_last_name_error:visible').empty().hide();
								$('#refer_friend_sender_last_name').css({'background-color':'rgba(255,255,255,1)', color:'#000', 'font-weight':'normal'});
								$('#refer_friend_sender_last_name_valid').fadeIn(250);
								referFriendSenderLastNameVerified = 'true';
								verifyValidation();												}

			});


			$('#refer_friend_sender_email').blur(function() {

				$('#refer_friend_sender_email_error').empty().hide();				

				var referFriendSenderEmail = $('#refer_friend_sender_email').val();

				if 		(	referFriendSenderEmail.length === 0 	)
							{ 	$('#refer_friend_sender_email_valid:visible').hide();
								$('#refer_friend_sender_email').css({'background-color':'rgba(255,0,0,.7)', color:'#fff', 'font-weight':'bold'});
								$('#refer_friend_sender_email_error').append('entry required').fadeIn(250); 		}

				else 		{ 	$('#refer_friend_sender_email_error:visible').empty().hide();
								$('#refer_friend_sender_email').css({'background-color':'rgba(255,255,255,1)', color:'#000', 'font-weight':'normal'});
								$('#refer_friend_sender_email_valid').fadeIn(250);
								referFriendSenderEmailVerified = 'true';
								verifyValidation();												}

			});


			$('#refer_friend_sender_email_confirmation').blur(function() {

				$('#refer_friend_sender_email_confirmation_error').empty().hide();				

				var referFriendSenderEmail 					= $('#refer_friend_sender_email').val();
				var referFriendSenderEmailConfirmation 	= $('#refer_friend_sender_email_confirmation').val();

				if 		(	referFriendSenderEmailConfirmation.length === 0 	)
							{ 	$('#refer_friend_sender_email_confirmation_valid:visible').hide();
								$('#refer_friend_sender_email_confirmation').css({'background-color':'rgba(255,0,0,.7)', color:'#fff', 'font-weight':'bold'});
								$('#refer_friend_sender_email_confirmation_error').append('entry required').fadeIn(250); 		}

				else if 	( 	referFriendSenderEmailConfirmation != referFriendSenderEmail 	)
							{ 	$('#refer_friend_sender_email_confirmation_valid:visible').hide();
								$('#refer_friend_sender_email_confirmation').css({'background-color':'rgba(255,0,0,.7)', color:'#fff', 'font-weight':'bold'});
								$('#refer_friend_sender_email_confirmation_error').append('must match email').fadeIn(250); 		}					

				else 		{ 	$('#refer_friend_sender_email_error_confirmation:visible').empty().hide();
								$('#refer_friend_sender_email_confirmation').css({'background-color':'rgba(255,255,255,1)', color:'#000', 'font-weight':'normal'});
								$('#refer_friend_sender_email_confirmation_valid').fadeIn(250);
								referFriendSenderEmailConfirmationVerified = 'true';
								verifyValidation();												}

			});




			$('#refer_friend_sender_friend_first_name').blur(function() {

				$('#refer_friend_sender_friend_first_name_error').empty().hide();

				var referFriendSenderFriendFirstName = $('#refer_friend_sender_friend_first_name').val();

				if 		(	referFriendSenderFriendFirstName.length === 0 	)
							{ 	$('#refer_friend_sender_friend_first_name_valid:visible').hide();
								$('#refer_friend_sender_friend_first_name').css({'background-color':'rgba(255,0,0,.7)', color:'#fff', 'font-weight':'bold'});
								$('#refer_friend_sender_friend_first_name_error').append('entry required').fadeIn(250); 		}

				else 		{ 	$('#refer_friend_sender_friend_first_name_error:visible').empty().hide();
								$('#refer_friend_sender_friend_first_name').css({'background-color':'rgba(255,255,255,1)', color:'#000', 'font-weight':'normal'});
								$('#refer_friend_sender_friend_first_name_valid').fadeIn(250);
								referFriendSenderFriendFirstNameVerified = 'true';
								verifyValidation();										}

			});

			$('#refer_friend_sender_friend_last_name').blur(function() {

				$('#refer_friend_sender_friend_last_name_error').empty().hide();				

				var referFriendSenderFriendLastName = $('#refer_friend_sender_friend_last_name').val();

				if 		(	referFriendSenderFriendLastName.length === 0 	)
							{ 	$('#refer_friend_sender_friend_last_name_valid:visible').hide();
								$('#refer_friend_sender_friend_last_name').css({'background-color':'rgba(255,0,0,.7)', color:'#fff', 'font-weight':'bold'});
								$('#refer_friend_sender_friend_last_name_error').append('entry required').fadeIn(250); 		}

				else 		{ 	$('#refer_friend_sender_friend_last_name_error:visible').empty().hide();
								$('#refer_friend_sender_friend_last_name').css({'background-color':'rgba(255,255,255,1)', color:'#000', 'font-weight':'normal'});
								$('#refer_friend_sender_friend_last_name_valid').fadeIn(250);
								referFriendSenderFriendLastNameVerified = 'true';
								verifyValidation();												}

			});			

			$('#refer_friend_sender_friend_email').blur(function() {

				$('#refer_friend_sender_friend_email_error').empty().hide();				

				var referFriendSenderFriendEmail = $('#refer_friend_sender_friend_email').val();

				if 		(	referFriendSenderFriendEmail.length === 0 	)
							{ 	$('#refer_friend_sender_friend_email_valid:visible').hide();
								$('#refer_friend_sender_friend_email').css({'background-color':'rgba(255,0,0,.7)', color:'#fff', 'font-weight':'bold'});
								$('#refer_friend_sender_friend_email_error').append('entry required').fadeIn(250); 		}

				else 		{ 	$('#refer_friend_sender_friend_email_error:visible').empty().hide();
								$('#refer_friend_sender_friend_email').css({'background-color':'rgba(255,255,255,1)', color:'#000', 'font-weight':'normal'});
								$('#refer_friend_sender_friend_email_valid').fadeIn(250);
								referFriendSenderFriendEmailVerified = 'true';
								verifyValidation();												}

			});

			$('#refer_friend_sender_friend_email_confirmation').blur(function() {

				$('#refer_friend_sender_friend_email_confirmation_error').empty().hide();				

				var referFriendSenderFriendEmail 					= $('#refer_friend_sender_friend_email').val();
				var referFriendSenderFriendEmailConfirmation 	= $('#refer_friend_sender_friend_email_confirmation').val();

				if 		(	referFriendSenderFriendEmailConfirmation.length === 0 	)
							{ 	$('#refer_friend_sender_friend_email_confirmation_valid:visible').hide();
								$('#refer_friend_sender_friend_email_confirmation').css({'background-color':'rgba(255,0,0,.7)', color:'#fff', 'font-weight':'bold'});
								$('#refer_friend_sender_friend_email_confirmation_error').append('entry required').fadeIn(250); 		}

				else if 	( 	referFriendSenderFriendEmailConfirmation != referFriendSenderFriendEmail 	)
							{ 	$('#refer_friend_sender_friend_email_confirmation_valid:visible').hide();
								$('#refer_friend_sender_friend_email_confirmation').css({'background-color':'rgba(255,0,0,.7)', color:'#fff', 'font-weight':'bold'});
								$('#refer_friend_sender_friend_email_confirmation_error').append('must match email').fadeIn(250); 		}					

				else 		{ 	$('#refer_friend_sender_friend_email_error_confirmation:visible').empty().hide();
								$('#refer_friend_sender_friend_email_confirmation').css({'background-color':'rgba(255,255,255,1)', color:'#000', 'font-weight':'normal'});
								$('#refer_friend_sender_friend_email_confirmation_valid').fadeIn(250);
								referFriendSenderFriendEmailConfirmationVerified = 'true';
								verifyValidation();												}

			});	




			$('#refer_friend_sender_comments').focus(function() {

				$('#refer_friend_sender_comments_error').empty().hide();				

				var referFriendSenderComments = $('#refer_friend_sender_comments').val();

				if 		(	referFriendSenderComments.length === 0 	)
							{ 	$('#refer_friend_sender_comments_valid:visible').hide();
								$('#refer_friend_sender_comments').css({'background-color':'rgba(255,0,0,.7)', color:'#fff', 'font-weight':'bold'});
								$('#refer_friend_sender_comments_error').append('entry required').fadeIn(250); 		}

				else 		{ 	$('#refer_friend_sender_comments_error:visible').empty().hide();
								$('#refer_friend_sender_comments').css({'background-color':'rgba(255,255,255,1)', color:'#000', 'font-weight':'normal'});
								$('#refer_friend_sender_comments_valid').fadeIn(250);
								referFriendSenderCommentsVerified = 'true';
								verifyValidation();												}

			});


		});




		function verifyValidation() {

			if 		( 	referFriendSenderFirstNameVerified 						=== 	'true' &&
							referFriendSenderLastNameVerified 						===	'true' &&
							referFriendSenderEmailVerified 							=== 	'true' &&
							referFriendSenderEmailConfirmationVerified 			=== 	'true' &&

							referFriendSenderFriendFirstNameVerified 				===	'true' &&
							referFriendSenderFriendLastNameVerified 				===	'true' &&
							referFriendSenderFriendEmailVerified 					===	'true' &&
							referFriendSenderFriendEmailConfirmationVerified 	===	'true' &&

							referFriendSenderCommentsVerified 						===	'true' 		)

						{ 	$('#refer_friend_submit_button').attr('disabled', false); 				}

			var 		email = $('#email').val();

			if 		(	email.length > 0 			)
						{ 	return false 				}

		}




	// --- [ refer friend submit button click ] --------------------------------------------------------- //

		$(document).ready(function() {

			$('#refer_friend_submit_button').click(function() {

				$('#processing_text').text('Processing request...').fadeIn(250);

				var referFriendSenderFirstName 						= 	$('#refer_friend_sender_friend_first_name').val();
				var referFriendSenderLastName  						= 	$('#refer_friend_sender_friend_last_name').val();
				var referFriendSenderEmail     						= 	$('#refer_friend_sender_friend_email').val();
				var referFriendSenderEmailConfirmation 			=	$('#refer_friend_sender_friend_email_confirmation').val();

				var referFriendSenderFriendFirstName 				= 	$('#refer_friend_sender_friend_first_name').val();
				var referFriendSenderFriendLastName  				= 	$('#refer_friend_sender_friend_last_name').val();
				var referFriendSenderFriendEmail     				= 	$('#refer_friend_sender_friend_email').val();
				var referFriendSenderFriendEmailConfirmation 	=	$('#refer_friend_sender_friend_email_confirmation').val();

				var referFriendSenderComments 						=	$('#refer_friend_sender_comments').val();

				var siteName 												=	$('#site_name').val();
				var siteDSN 												=	$('#site_dsn').val();
				var siteShortDomain 										=	$('#site_short_domain').val();
				var siteReferFriendBusinessEmailRecipient			=	$('#site_refer_friend_business_email_recipient').val();
				var siteReferFriendBusinessEmailResponder 		=  $('#site_refer_friend_business_email_responder').val();
				var sitePhoneNumber 										=	$('#site_phone_number').val();
				var siteStreetAddress 									=	$('#site_street_address').val();
				var siteCity 												=	$('#site_city').val();
				var siteState 												=	$('#site_state').val();
				var siteZipCode 											=	$('#site_zip_code').val();

				values 	=	{ 	referFriendSenderFirstName: 						referFriendSenderFirstName,
									referFriendSenderLastName: 						referFriendSenderLastName,
									referFriendSenderEmail: 							referFriendSenderEmail,
									referFriendSenderEmailConfirmation: 			referFriendSenderEmailConfirmation,

									referFriendSenderFriendFirstName: 				referFriendSenderFriendFirstName,
									referFriendSenderFriendLastName: 				referFriendSenderFriendLastName,
									referFriendSenderFriendEmail: 					referFriendSenderFriendEmail,
									referFriendSenderFriendEmailConfirmation: 	referFriendSenderFriendEmailConfirmation,									

									referFriendSenderComments: 						referFriendSenderComments,

									siteName: 												siteName,
									siteDSN:  												siteDSN, 
									siteShortDomain: 										siteShortDomain,
									siteReferFriendBusinessEmailRecipient: 		siteReferFriendBusinessEmailRecipient,
									siteReferFriendBusinessEmailResponder: 		siteReferFriendBusinessEmailResponder,
									sitePhoneNumber: 										sitePhoneNumber,
									siteStreetAddress: 									siteStreetAddress,
									siteCity: 												siteCity,
									siteState: 												siteState,
									siteZipCode: 											siteZipCode 				}

				$.ajax 		({ 	cache: 				false,
										type: 				'post',
										url: 					'refer-a-friend.cfc?method=mProcessReferFriendForm&returnFormat=json',
										dataType: 			'json',
										data: 				values,
										success: 			function(response)	{

																	if 		(	response.FORMSTATUS === 'Success' 								)
																				{ 	$('#processing_text').text('Success! Thank you for your referral!').fadeIn(250); 	}

																	else 		{ 	alert('Referral Form not Sent!') 							}

																}
				});
			});
		});



