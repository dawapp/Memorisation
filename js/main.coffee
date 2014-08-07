$ ->

	render 'nav', '.main-nav', 
			app_name: "Memorisation Admin"
			pages: [
				name: "Edit Content", href: "#EditContent"
			]


	api = "/api/index.php/api/list_targets"

	$.getJSON api

	.then (data) ->
		render 'levels_page', '.main-content', null
		render 'level_list', '.levels', data
	.fail (err) ->
		console.error err