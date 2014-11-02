@todo.filter 'startsWith', ->
	(input, filter) ->
		filtered = []
		for key, value of filter
			unless value is undefined
				filtered.push(element) for element in input when element[key].toUpperCase().indexOf(value.toUpperCase()) is 0
			else
				return input
		return filtered