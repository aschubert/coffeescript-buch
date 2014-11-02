sayHello = (greeting, names...) ->
	console.log "#{greeting} #{name}." for name in names

sayHello "Guten Abend", "Andreas", "Fritz", "Klaus", "Hans"
