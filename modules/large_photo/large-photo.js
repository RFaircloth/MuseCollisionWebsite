

$(document).ready(function() {


			// --- [ large photo, initialization ] --------------------------------------------------- //

			var innerWindowWidth = $(window).innerWidth();
			var percentage = innerWindowWidth / 1400;
			var percentage = percentage.toFixed(2);

			var largePhotoWidth = $('.rotating_image').width();
			var largePhotoPercentage = largePhotoWidth / (1260 / percentage);
			var largePhotoPercentage = largePhotoPercentage.toFixed(2);			


	Harvey.attach ('screen and (min-width:1025px) and (orientation:landscape)', {

		setup: function() {


			// --- [ large photo, width ] ------------------------------------------------------------ //

			// var largePhotoWidth = $('.rotating_image').width();
			// var newLargePhotoWidth = largePhotoWidth * percentage;
			// var newLargePhotoWidth = newLargePhotoWidth.toFixed(0);
			// $('.rotating_image').css('width', newLargePhotoWidth + 'px');


			// --- [ large photo, message insertion ] ------------------------------------------------ //		

			$('#para_1').text('Muse Collision Center will stand by your each step of the way and repair your vehicle back to its pre-loss condition.');
			$('#para_3').text('Whether it’s a small scratch, door ding or major collision repair, Muse Collision Center will go the extra mile to completely satisfy each customer with their auto body repair.');

		},

		on: function() {}

	});




	Harvey.attach ('screen and (max-width:320px) and (orientation:portrait)', {

		setup: function() {

			$('#para_1').text('Muse Collision Center will stand by your each step of the way and repair your vehicle back to its pre-loss condition.');
			$('#para_3').text('Whether it’s a small scratch, door ding or major collision repair, Muse Collision Center will go the extra mile to completely satisfy each customer with their auto body repair.');

		},

		on: function() {}

	});


	Harvey.attach ('screen and (max-width:1023px) and (orientation:landscape)', {

		setup: function() {


			// --- [ large photo, width ] ------------------------------------------------------------ //

			// var largePhotoWidth = $('.rotating_image').width();
			// var newLargePhotoWidth = largePhotoWidth * largePhotoPercentage;
			// var newLargePhotoWidth = newLargePhotoWidth.toFixed(0);
			// $('.rotating_image').css('width', newLargePhotoWidth + 'px');


			// --- [ large photo, message insert top ] ----------------------------------------------- //		

			// var messageInsertTop = $('#message_insert').css('top').replace('px','');
			// var newMessageInsertTop = messageInsertTop * largePhotoPercentage;
			// var newMessageInsertTop = newMessageInsertTop.toFixed(0);
			// $('#message_insert').css('top', newMessageInsertTop + 'px');


			// --- [ large photo, message change ] --------------------------------------------------- //

			$('#para_2').remove();
			$('#para_3').remove();

			$('#para_1').text('Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quidem, iste, libero, sequi, assumenda iusto ratione necessitatibus nobis impedit sed a labore accusantium similique. Ipsa, excepturi.');


			// --- [ message insert, font-size ] ----------------------------------------------------- //

			// var messageInsertFontSize = $('#message_insert').css('font-size').replace('px', '');
			// var newMessageInsertFontSize = messageInsertFontSize * largePhotoPercentage;
			// var newMessageInsertFontSize = newMessageInsertFontSize.toFixed(0);
			// $('#message_insert').css('font-size', newMessageInsertFontSize + 'px');


		},

		on: function() {

		}

	});

});