





$(document).ready(function() {

	$('.faq_answer').hide();

	$('.faq_answer_click').click(function() {

		if 		(	$(this).parent().next().is(':visible')												)
					{	$('.faq_question').css('color', 'rgba(255,255,255,1');
						$('.faq_answer').css('color', 'rgba(255,255,255,1');
						$(this).parent().next().slideUp()													}

		else if	(	$(this).parent().next().is(':hidden') 												)
					{	$('.faq_answer:visible').css('color', 'rgba(255,255,255,1').slideUp();
						$('.faq_question').css('color', 'rgba(255,255,255,1');		
						$(this).parent().css('color', 'rgba(0,255,0,1');
						$(this).parent().next().css('color', 'rgba(0,255,0,1');
						$(this).parent().next().slideDown()													}

	});

});