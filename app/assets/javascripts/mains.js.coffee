# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/


jQuery ->
	$('li.item').click ->
		ul = $(this).parent()
		a = ""
		if ul.children('li').hasClass('active')
			ul.children('li').each ->
				if $(this).hasClass('active')
					$(this).removeClass('active')

		$(this).toggleClass("active")

		year_select = $('#year').children('li').hasClass('active')
		exam_select = $('#exam').children('li').hasClass('active')
		subject_select = $('#subject').children('li').hasClass('active')

		if year_select && exam_select && subject_select
			year = $('#year>li.active>a').html()
			exam = $('#exam>li.active>a').html()
			subject = $('#subject>li.active>a').html()
			alert(year +" "+ exam +" "+ subject)


	$('.input-mini').keyup ->
		$(this).addClass('input-entered').next('.input-mini').focus()


	$('.input-mini').focus ->
		img_id = parseInt($(this).attr('id')) + 1
		$('#exam_img').html("<img alt=\"1\" src=\"/assets/"+img_id+".png\">")
		# $('#question_info').html()
		# $('#question_explanation').html()

	



