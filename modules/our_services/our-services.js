





$(document).ready(function() {

	$('.service_description').hide();

	$('.service_details a').click(function() {

		if 		(	$(this).parent().parent().next().is(':visible')												)
					{	$('.service').css('color', 'rgba(255,255,255,1');
						$('.service_description').css('color', 'rgba(255,255,255,1');
						$(this).parent().parent().next().slideUp()													}

		else if	(	$(this).parent().parent().next().is(':hidden') 												)
					{	$('.service_description:visible').css('color', 'rgba(255,255,255,1').slideUp();
						$('.service').css('color', 'rgba(255,255,255,1');		
						$(this).parent().parent().css('color', 'rgba(0,255,0,1');
						$(this).parent().parent().next().css('color', 'rgba(0,255,0,1');
						$(this).parent().parent().next().slideDown()													}

	});

});