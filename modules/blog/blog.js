
$(document).ready(function() {

	$('.hidden_blog_article').hide();

	$('a.view_hide_blog_link').click(function() {


		if 		(	$(this).parent().next().next().is(':hidden') 															)
					
					{	$(this).text('hide article');
					$(this).parent().next().next().slideDown(500);

					$('.visible_blog_article').slideUp(500);
					$('.visible_blog_article').removeClass('visible_blog_article').addClass('hidden_blog_article');					
					$('.hidden_blog_article').prev().prev().find('a').text('view article');

					$(this).parent().next().next().removeClass('hidden_blog_article').addClass('visible_blog_article');		}


		else if	(	$(this).parent().next().next().is(':visible')															)

				{	$(this).text('view article');
					$(this).parent().next().next().slideUp(500);
					$(this).parent().next().next().removeClass('visible_blog_article').addClass('hidden_blog_article');

					$('.visible_blog_article').slideUp(500);
					$('.hidden_blog_article').removeClass('visible_blog_article').addClass('hidden_blog_article');			}
					$('.visible_blog_article').prev().prev().find('a').text('hide article');
	})

})