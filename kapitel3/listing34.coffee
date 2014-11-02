class Vehicle
	constructor: ->
		@driving = false

	drive: (meter) ->
		@driving = true
		console.log "#{meter} Meter wurden zurückgelegt"

class Car extends Vehicle
	drive: ->
		console.log "Brumm, Brumm"
		super()

car = new Car
console.log car.driving
car.drive(5)
console.log car.driving
