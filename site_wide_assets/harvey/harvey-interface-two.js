



 $(document).ready(function() {

	// --- [ smartphones - hi-res, max-width:480px ] ----------------------------------------------------- //

	Harvey.attach ('screen and (max-width:480px) and (orientation:portrait)', {

		setup: function() {

			var pathName = location.pathname;
			var fileName = pathName.substring(pathName.lastIndexOf('/') + 1);

			if 	( 	fileName === 'our-location.cfm' 							)
					{ 	$('.main_content_section_container_first').css('margin-bottom', '4em') 		}

			if 	(	fileName === 'index.cfm' || fileName.length == 0	)

					{ 	$('#menu').load('includes/menu-one-wide.cfm');
						$('#menu_button').attr('src', 'graphics/menu-button.png');
						$('#header').attr('src', 'graphics/smartphone-top-hires.png');
						$('#footer').empty().load('includes/footer-one-wide.cfm');

						var sectionGreatDeals = $('#sidebar_right_one_section_great_deals').clone();
						$('#sidebar_right_one_section_great_deals').remove();
						$(sectionGreatDeals).insertAfter('#main_content_section_welcome');

						var sectionSoRelaxing = $('#sidebar_right_one_section_so_relaxing').clone();
						$('#sidebar_right_one_section_so_relaxing').remove();
						$(sectionSoRelaxing).insertAfter('#main_content_section_good_to_know');

						var sectionFitnessSchedule = $('#sidebar_right_one_section_fitness_schedule').clone();
						$('#sidebar_right_one_section_fitness_schedule').remove();
						$(sectionFitnessSchedule).insertAfter('#main_content_good_to_know');			

						$('.sidebar_right_one').remove(); 						}

			else 	{ 	$('#menu').load('/includes/menu-one-wide.cfm');
						$('#menu_button').attr('src', '/graphics/menu-button.png');
						$('#header').attr('src', '/graphics/smartphone-top-hires.png');
						$('#footer').empty().load('/includes/footer-one-wide.cfm');
						$('.sidebar_right_one').remove();						}


						var windowWidth = $(window).width();
						var menuButtonWidth = 140;
						var menuButtonLeft = (windowWidth/2) - (menuButtonWidth/2);
						$('#menu_button').css({width:'140px', height:'60px', position:'relative', left:menuButtonLeft, top:'-30px', cursor:'pointer' });
						$('#menu').css('font-size','100%');
						$('#screen-width').html('portrait - hi-res - up to 480');				

		},

		on: function () {}	

	});

});




$(document).ready(function() {

	Harvey.attach ('screen and (min-width:321px) and (max-width:480px) and (orientation:landscape) and (-webkit-min-device-pixel-ratio: 1.5)', {

		setup: function() {

			$('#menu').load('includes/menu-one-wide.cfm');
		
		},

		on: function () {

			$('#header').attr('src', 'graphics/smartphone-top-hires.png');
			$('.page_wrapper').css({width:'100%', 'border-radius':'0', margin:'0', height:'800px'}); // height temporary //
			var windowWidth = $(window).width();
			var menuButtonWidth = 140;
			var menuButtonLeft = (windowWidth/2) - (menuButtonWidth/2);
			$('#menu_button').css({ width:'140px', height:'60px', position:'relative', left:menuButtonLeft, top:'-30px', cursor:'pointer' });
			$('#footer').empty().load('includes/footer-one-wide.cfm');
			$('#screen-width').html('<p>landscape - hi-res - 321-480</p>');

		}	

	});

});






$(document).ready(function() {

	// --- [ smartphones - lo-res ] --------------------------------------------------------- //

	Harvey.attach ('screen and (max-width:480px) and (max-resolution: 96dpi)', {

		setup: function() {

			$('#footer').empty().load('includes/footer-one-wide.cfm');
		},

		on: function() {

			$('#header').attr('src', 'graphics/smartphone-top.png');
			$('.page_wrapper').css({width:'100%', 'border-radius':'0', margin:'0'});
			$('#menu_button').css({width:'140px', height:'60px', position:'relative',
										  left:'28%', top:'-30px', cursor:'pointer'});
			$('#screen-width').html('portrait - 96dpi - 480');

		}

	});

});




$(document).ready(function() {

	// --- [ tablets - hi-res - 600-767 ] -------------------------------------------------------------------------- //


	Harvey.attach ('screen and (min-width:600px) and (max-width:767px) and (orientation:portrait)', {

		setup: function() {

			var pathName = location.pathname;
			var fileName = pathName.substring(pathName.lastIndexOf('/') + 1);

			if 	(	fileName === 'contact.cfm' 								)
					{ 	$('<img id="pink_flower" src="/images/pink_flower_02.png">').insertAfter($('#main_content_section_contact_us h1:first-child'));	}

			if 	( 	fileName === 'our-location.cfm' 							)
					{ 	$('#map iframe').attr('width', '97%')					}

			if 	(	fileName === 'index.cfm' || fileName.length == 0 	)			

					{ 	$('#menu').load('/includes/menu-two-wide.cfm');
						$('#menu_button').attr('src', '/graphics/menu-button.png');
						$('#header').attr('src', '/graphics/smartphone-top-hires.png');
						$('#footer').empty().load('/includes/footer-one-wide.cfm');

						var sectionGreatDeals = $('#sidebar_right_one_section_great_deals').clone();
						$('#sidebar_right_one_section_great_deals').remove();
						$(sectionGreatDeals).insertAfter('#main_content_section_welcome');

						var sectionSoRelaxing = $('#sidebar_right_one_section_so_relaxing').clone();
						$('#sidebar_right_one_section_so_relaxing').remove();
						$(sectionSoRelaxing).insertAfter('#main_content_section_good_to_know');

						var sectionFitnessSchedule = $('#sidebar_right_one_section_fitness_schedule').clone();
						$('#sidebar_right_one_section_fitness_schedule').remove();
						$(sectionFitnessSchedule).insertAfter('#sidebar_right_one_section_great_deals');			

						$('.sidebar_right_one').remove(); 						}

			else 	{ 	$('#menu').load('/includes/menu-two-wide.cfm');
						$('#menu_button').attr('src', '/graphics/menu-button.png');
						$('#header').attr('src', '/graphics/smartphone-top-hires.png');
						$('#footer').empty().load('/includes/footer-one-wide.cfm');
						$('.sidebar_right_one').remove();						}


						var windowWidth = $(window).width();
						var menuButtonWidth = 180;
						var menuButtonLeft = (windowWidth/2) - (menuButtonWidth/2);
						$('#menu_button').css({width:'160px', height:'60px', position:'relative', left:menuButtonLeft, top:'-30px', cursor:'pointer' });
						$('#menu').css('font-size','100%');
						$('#screen-width').html('<p>portrait - 600-800</p>');

		},		

		 on: function() {}

	});

});

















$(document).ready(function() {

	// --- [ tablets - lo-res ] ------------------------------------------------------------- //
	// --- [ iPad 1, iPad Mini ] ------------------------------------------------------------ //


	Harvey.attach ('screen and (min-width:768px) and (max-width:1023px) and (orientation:portrait)', {

		setup: function() {

			var pathName = location.pathname;
			var fileName = pathName.substring(pathName.lastIndexOf('/') + 1);

			if 	(	fileName === 'contact.cfm' 										)
					{ 	$('<img id="pink_flower" src="/images/pink_flower_02.png">').insertAfter($('#main_content_section_contact_us h1:first-child'));	}


			if 	(	fileName === 'index.cfm' 					|| fileName.length == 0 								||
						fileName === 'cellulite-reduction.cfm' || fileName === 'microcurrent.cfm' 					||
						fileName === 'therapeutic-massage.cfm'	|| fileName === 'skin-and-body-treatments.cfm'  ||
						fileName === 'salon-services.cfm'      || fileName === 'microdermabrasion.cfm'			||
						fileName === 'spa-specialties.cfm' 		|| fileName === 'customized-packages.cfm'			||
						fileName === 'reservations.cfm'			|| fileName === 'products.cfm'				 		||
						fileName === 'product-details.cfm'		)

					{ 	$('#menu').load('/includes/menu-two-wide.cfm');
						$('#menu_button').attr('src', '/graphics/menu-button.png');
						$('#header').attr('src', '/graphics/header-02.png');
						$('#footer').empty().load('/includes/footer-two-wide.cfm');						

						var sectionGreatDeals = $('#sidebar_right_one_section_great_deals').clone();
						$('#sidebar_right_one_section_great_deals').remove();
						$(sectionGreatDeals).insertAfter('#main_content_section_welcome');

						var sectionSoRelaxing = $('#sidebar_right_one_section_so_relaxing').clone();
						$('#sidebar_right_one_section_so_relaxing').remove();
						$(sectionSoRelaxing).insertAfter('#main_content_section_good_to_know');

						var sectionFitnessSchedule = $('#sidebar_right_one_section_fitness_schedule').clone();
						$('#sidebar_right_one_section_fitness_schedule').remove();
						$(sectionFitnessSchedule).insertAfter('#sidebar_right_one_section_great_deals');			

						$('.sidebar_right_one').remove();											}

			else 	{ 	$('#menu').load('/includes/menu-two-wide.cfm');
						$('#menu_button').attr('src', '/graphics/menu-button.png');
						$('#header').attr('src', '/graphics/header-02.png').css('border-radius','16px');
						$('#footer').remove();
						$('.sidebar_right_one').remove();											}

						var windowWidth = $(window).width();
						var menuButtonWidth = 140;
						var menuButtonLeft = (windowWidth/2) - (menuButtonWidth/2);
						$('#menu_button').css({width:'22%', height:'60px', position:'relative', left:menuButtonLeft, top:'-2em', cursor:'pointer' });
						$('#menu').css('font-size','100%');

						$('object').attr('width', '420').attr('height', '344');
						$('embed').attr('width', '420').attr('height', '344');

						$('#screen-width').html('<p>portrait - 768-1023</p>');				

		},

		 on: function() {}

	});

});












$(document).ready(function() {

	// --- [ desktop 1024-1440 ] ----------------------------------------------------------------------------------- //


	Harvey.attach ('screen and (min-width:1024px) and (max-width:1440px) and (orientation:landscape)', {

		setup: function() {

			var pathName = location.pathname;
			var fileName = pathName.substring(pathName.lastIndexOf('/') + 1);

			if 	( 	fileName === 'email-newsletter.cfm' 	)
					{ 	$('<img id="email_newsletter_image" src="/images/email-newsletter-01-w300.jpg">').insertAfter($('#main_content_section_email_newsletter h1:first-child'));	}

			if 	(	fileName === 'index.cfm' 						|| fileName.length == 0 					||
					fileName === 'cellulite-reduction.cfm'			|| fileName === 'microcurrent.cfm' 			||
					fileName === 'microdermabrasion.cfm' 			|| fileName === 'therapeutic-massage.cfm' 	||
					fileName === 'skin-and-body-treatments.cfm'		|| fileName === 'salon-services.cfm'		||
					fileName === 'spa-specialties.cfm'				|| fileName === 'specialized-massage.cfm'	||
					fileName === 'customized-packages.cfm'			|| fileName === 'reservations.cfm'			||
					fileName === 'products.cfm'			 			)

					{	$('#menu').empty().load('/includes/menu-three-wide.cfm');
						$('#menu_button').attr('src', '/graphics/menu-button.png');
						$('#header').attr('src', '/graphics/header-02.png').css({ position:'relative', width:'100%'});
						$('#footer').empty().load('/includes/footer-three-wide.cfm');								}
			
			else 	{	$('#menu').empty().load('/includes/menu-three-wide.cfm');
						$('#menu_button').attr('src', '/graphics/menu-button.png');
						$('#header').attr('src', '/graphics/header-02.png').css({ position:'relative', width:'100%'});
						$('#footer').empty().load('/includes/footer-three-wide.cfm')
						$('<img id="pink_flower" src="/images/pink_flower_02.png">').insertAfter($('#main_content_section_contact_us h1:first-child'));
						$('#sidebar_right_one_section_so_relaxing').remove();
						$('#sidebar_right_one_section_fitness_schedule').remove();									}

						var windowWidth = $(window).width();
						var menuButtonWidth = 340;
						var menuButtonLeft = (windowWidth/2) - (menuButtonWidth/2);
						$('#menu_button').css({width:'22%', height:'60px', position:'relative', left:menuButtonLeft, top:'-2em', cursor:'pointer' });
						$('#menu').css('font-size','100%');

						$('object').attr('width', '420').attr('height', '344');
						$('embed').attr('width', '420').attr('height', '344');
				
						$('#screen-width').html('<p>screen properties: landscape, lo-res, 1024-1440</p>');

		},

		on: function() {}

	});

});





// $(document).ready(function() {


// 	Harvey.attach ('screen and (min-width:800px) and (max-width:1024px) and (orientation:landscape) and (-webkit-min-device-pixel-ratio: 1.0)', {

// 		setup: function() {

// 			$('#header').attr('src', 'graphics/header-02.png');
// 			$('.page_wrapper').css({width:'95%', 'border-radius':'16px', margin:'1.3em auto'});
// 			$('#menu_button').css({width:'22%', position:'relative', left:'40%', top:'-35px'});
// 			$('#menu').empty().load('includes/menu-two-wide.cfm');
// 			$('#screen-width').html('</p>screen properties: landscape - lo-res - 800-1024</p>');

// 		},

// 		on: function() {

// 			$('.page_wrapper').css('width', '95%');

// 		}

// 	});

// });






// $(document).ready(function() {

// 	// --- [ desktop-large - lo-res - min-1024 ] --------------------------------------------------------- //

// 	Harvey.attach ('screen and (min-width:1025px) and (orientation:landscape) and (min-resolution: 72dpi)', {

// 		setup: function() {

// 			// var windowWidth = $(window).width();
// 			// var menuButtonWidth = 140;
// 			// var menuButtonLeft = (windowWidth/2) - (menuButtonWidth/2);
// 			// $('#menu_button').css({width:'140px', height:'60px', position:'relative', left:menuButtonLeft, top:'-35px', cursor:'pointer' });

// 			$('#menu_button').css({width:'22%', position:'relative', left:'38%', top:'-35px'});

// 			$('#menu').empty().load('includes/menu-three-wide.cfm');
// 			$('#footer').empty().load('includes/footer-three-wide.cfm');
// 			$('#screen-width').html('<p>desktop-large - lo-res - above 1024 - 72dpi</p>');

// 		},

// 		on: function() {}

// 	});

//  });





















	// --- [ media queries from brettjankord.com/2012/11/28/cross-browser-retina-high-resolution-media-queries ] --- //


			// --- [ 1.25 device-pixel-ratio, max-width:1200px ] ---------------------- --- //

			// 	   @media screen (min-width:1200px) and
			// 						  (-webkit-min-device-pixel-ratio: 1.25) and
			//    					  (min-resolution: 120dpi) {}


			// --- [ 1.30 device-pixel-ratio, max-width:1200px ] ---------------------- --- //

			// 	   @media screen (min-width:1200px) and
			//							  (-webkit-min-device-pixel-ratio: 1.30) and
			//							  (min-resolution: 124.8dpi) {}


			// --- [ 1.50 device-pixel-ratio, max-width:1200px ] --------------------- --- //

			//  	   @media screen (min-width:1200px) and
			// 						  (-webkit-min-device-pixel-ratio: 1.50) and
			// 						  (min-resolution: 144dpi) {}




	// --- [ media queries specific to Galaxy S4

	// --- [ @media screen (-webkit-min-device-pixel-ratio: 1.5),
	//							  (min-resolution: 144dpi) and
	//							  (device width: 1080px) and
	//							  (orientation: portrait)

	// --- [ @media screen (-webkit-min-device-pixel-ratio: 1.5),
	//							  (min-resolution: 144dpi) and
	//							  (device width: 1920px) and
	//							  (orientation: landscape)

	// ------------------------------------------------------------------------- 

	// --- [ qry2a  @media (min-width: 1200px) and,
	//							  (-webkit-min-device-pixel-ratio: 1.0), only screen and
	// 						  (min-device-pixel-ratio: 1.0)

	// --- [ qry2b  @media (min-width: 1200px) and,
	//							  (-webkit-min-device-pixel-ratio: 1.5), only screen and
	// 						  (min-device-pixel-ratio: 1.5)

	// --- [ qry2c  @media (min-width: 1200px) and,
	//							  (-webkit-min-device-pixel-ratio: 2.0), only screen and
	// 						  (min-device-pixel-ratio: 2.0)

	// -------------------------------------------------------------------------		

	// --- [ qry4a  @media (min-width: 1025px) and (max-width: 1199px) and,
	//							  (-webkit-min-device-pixel-ratio: 1.0), only screen and
	// 						  (min-device-pixel-ratio: 1.0)

	// --- [ qry4b  @media (min-width: 1025px) and (max-width: 1199px) and,
	//							  (-webkit-min-device-pixel-ratio: 1.5), only screen and
	// 						  (min-device-pixel-ratio: 1.5)

	// --- [ qry4c  @media (min-width: 1025px) and (max-width: 1199px) and,
	//							  (-webkit-min-device-pixel-ratio: 2.0), only screen and
	// 						  (min-device-pixel-ratio: 2.0)		

	//	--- [ qry0	=	(-webkit-min-device-pixel-ratio: 1.0)						] --- //
	// --- [ qry0  =  interfaces of min-width: 1200px &
	// 					(-webkit-min-device-pixel-ratio: 1.5) 						] --- //
	// --- [ qry4  =  interfaces of min-width: 1200px &
	// 					(-webkit-min-device-pixel-ratio: 2.0) 						] --- //

	// --- [ qry6  = 	interfaces of min-width: 1025px & max-width: 1199px &
	//						(-webkit-min-device-pixel-ratio: 1.0)						] --- //
	// --- [ qry4  = 	interfaces of min-width: 801px  & max-width: 1024px ] --- //
	// --- [ qry6  = 	interfaces of min-width: 768px  & max-wdith: 800px  ] --- //
	// --- [ qry8  = 	interfaces of min-width: 601px  & max-width: 767px  ] --- //
	// --- [ qry10 = 	interfaces of min-width: 480px  & max-width: 600px  ] --- //
	// --- [ qry12 = 	interfaces of min-width: 320px  & max-width: 479px  ] --- //
