
$(document).ready(function() {

	$('#menu').mouseover(function() {

		$(this).css({'backgroundColor':'#aaa', 'color':'#000', 'cursor':'pointer'});

	});

	$('#menu').mouseout(function() {

		$(this).css({'backgroundColor':'#000', 'color':'#fff'});

	});

});


$(document).ready(function() {

	Harvey.attach ('screen and (max-width:320px)', {

		setup: function() {

			$('#menu_320 ul').slideUp();

			$('#menu_320').click(function() {

				$('#menu_320 ul').slideToggle();

			});
		},

		on: function() {}

	});

});