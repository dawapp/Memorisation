$ ->
	window.render = (template_name, target, data) ->
		dust.render template_name, data, (err, out) ->
			$(target).html out