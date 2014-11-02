class Vehicle
	constructor: ->
		@driving = false

	drive: ->
		@driving = true

class Car extends Vehicle
	drive: ->
		console.log "Brumm, Brumm"
		super()

car = new Car
console.log car.driving
car.drive()
console.log car.driving
