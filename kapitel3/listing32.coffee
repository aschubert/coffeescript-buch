class Vehicle
	wheels: 4
	
	constructor: (@name) ->

	drive: ->
		console.log "ich bewege mich auf #{@wheels} Rädern fort"

class Bicycle extends Vehicle
	wheels: 2

vehicle = new Vehicle "allgemeines Fahrzeug"
bicycle = new Bicycle "Fahrrad"
vehicle.drive()
bicycle.drive()
