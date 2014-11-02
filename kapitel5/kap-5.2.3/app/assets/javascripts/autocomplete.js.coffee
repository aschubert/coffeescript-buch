class AutoCompleter
	
	@navigationKeys = [
		38 # up arrow
		40 # down arrow
		13 # return
		27 # esc
	]
	
	constructor: (input) ->
		@row = -1
		@input = input
		@ul = input.next()
		@options = input.data()
		
		@options['timeout'] = 30 unless @options['timeout']?
		throw 'no url given' unless @options['url']?
		
		input.keydown (event) =>
			code = event.which
			if AutoCompleter.navigationKeys.indexOf(code) > -1
				@navigate(code) if @ul.is ":visible"
				false
			else
				setTimeout => 
					@search input.val()
				, @options['timeout']

		input.blur (event) =>
			text = @ul.find("li.selected").text()
			@input.val(text) unless text.length is 0
			@hide()
			
		
	search: (text) ->
		if text.length > 0
			jQuery.ajax(
				url: @options['url']
				data:
					search: text
			).done (countries) =>
				@display countries if countries.length > 1
		else
			@hide()
			
	display: (countries) ->
		if countries.length > 0
			list = ""
			list += "<li>#{key['name']}</li>" for key in countries
			
			@ul.html(list)				
			@ul.find("li").hover(
				(event) =>
					do @removeSelectedClass
					li = $(event.currentTarget)
					li.addClass "selected"
					@row = li.index()
				(event) => 
					do @removeSelectedClass
			)
			@ul.show()
		else
			@hide()

	hide: ->
		@ul.hide()
		@row = -1
		
	removeSelectedClass: ->
		@ul.find("li.selected").removeClass("selected")
		
	select: ->
		do @removeSelectedClass
		li = @ul.find("li:eq(#{@row})")
		li.addClass("selected")
		@input.val(li.text())


	navigate: (code) ->
		list = @ul.find("li")
		
		switch code
			when 13, 27 
				@hide()
			when 40
				if @row < list.length - 1
					@row += 1
					do @select
			when 38
				if @row > 0
					@row -= 1
					do @select
	
jQuery ->
	autoCompleter = new AutoCompleter $('#country')