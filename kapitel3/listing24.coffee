class Car
	constructor: (@name) ->

	drive: ->
		console.log "Fahrzeug fährt"

myCar = new Car "Rennsemmel"
myCar.drive()

Car::drive = ->
	console.log "Defekt – kein Fahren möglich"

myCar.drive()
