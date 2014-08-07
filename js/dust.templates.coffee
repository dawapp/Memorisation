$ ->

	#############################
	#    DUST TEMPLATE EXAMPLE  # 
	#############################

	# DOCS: http://akdubya.github.io/dustjs/

	###
		INSTRUCTIONS
		
		1. Add Name (make sure its unique)
		2. Add HTML
		3. add compiled and load source

			template_name = "test"
			html = "
				Hellox x {name}!
			"
			compiled = dust.compile(html, template_name)
			dust.loadSource(compiled)


		4. RENDER USING:
			render('test', 'body', {name: "Fred"})

	###

	#NAV

	template_name = "nav"
	html = '
		<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
	        <div class="container">
	            <!-- Brand and toggle get grouped for better mobile display -->
	            <div class="navbar-header">
	                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
	                    <span class="sr-only">Toggle navigation</span>
	                    <span class="icon-bar"></span>
	                    <span class="icon-bar"></span>
	                    <span class="icon-bar"></span>
	                </button>
	                <a class="navbar-brand" href="#">{app_name}</a>
	            </div>
	            <!-- Collect the nav links, forms, and other content for toggling -->
	            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	                <ul class="nav navbar-nav pull-right">
	                    {#pages}
		                    <li>
		                        <a href="{href}">{name}</a>
		                    </li>
	                    {/pages}
	                </ul>
	            </div>
	            <!-- /.navbar-collapse -->
	        </div>
	        <!-- /.container -->
	    </nav>
	'
	compiled = dust.compile(html, template_name)
	dust.loadSource(compiled)

	#LEVELS PAGE

	template_name = "levels_page"
	html = '
		<h2>Levels</h2>
		<br/>
		<div class="levels"></div>
	'
	compiled = dust.compile(html, template_name)
	dust.loadSource(compiled)

	#LEVEL LIST

	template_name = "level_list"
	html = '
		{#.}
			<legend>{level_name}</legend>
			<div class="list-group">
				{#targets}
					<a href="#" class="list-group-item">
						<h4 class="list-group-item-heading">{name}</h4>
						<p class="list-group-item-text">{summary}</p>
				 	</a>
			 	{/targets}
			</div>
		{/.}
	'
	compiled = dust.compile(html, template_name)
	dust.loadSource(compiled)




