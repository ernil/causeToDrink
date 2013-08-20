# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready ()->
	$('.get_new').click (e)->
		e.preventDefault()
		$('.loading').show()
		$.ajax
			url: '/random.json'
			dataType: 'json'
			success: (data)=>
				console.log data.content
				$('h1').text data.content
				$('.author').text data.author
				$('.loading').hide()
