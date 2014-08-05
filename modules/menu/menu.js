
$(document).ready(function() {

	$('#menu_medium').mouseover(function() {

		$(this).css({'backgroundColor':'#aaa', 'color':'#000', 'cursor':'pointer'});

	});

	$('#menu_medium').mouseout(function() {

		$(this).css({'backgroundColor':'#000', 'color':'#fff'});

	});

})


$(document).ready(function() {

	$('#menu_mobile_small').hide();

	$('#menu_601').click(function() {

		if 		(	$('#menu_mobile_small').is(':hidden') 		)
					{	$('#menu_mobile_small').slideDown()			}

		else if 	(	$('#menu_mobile_small').is(':visible')		)
					{	$('#menu_mobile_small').slideUp()			}

	});

});




$(document).ready(function() {

	$('#menu_mobile_medium_container').hide();

	$('#menu_medium').click(function() {

		if 		(	$('#menu_mobile_medium_container').is(':hidden') 		)
					{	$('#menu_mobile_medium_container').slideDown()			}

		else if 	(	$('#menu_mobile_medium_container').is(':visible')		)
					{	$('#menu_mobile_medium_container').slideUp()				}

	});

});