$ ->

	render 'nav', '.main-nav', 
			app_name: "Memorisation Admin"
			pages: [
				name: "Edit Content", href: "#EditContent"
			]


	render 'levels_page', '.main-content', null
	render 'level_list', '.levels', [
		{ name: "Moe", age: 37 }
		{ name: "Larry", age: 39 }
		{ name: "Curly", age: 35 }
	]