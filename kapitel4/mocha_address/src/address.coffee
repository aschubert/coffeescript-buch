Function::property = (name, descriptor) ->
	Object.defineProperty this.prototype, name, descriptor

class Address
	constructor: (@name, @lastname) ->

	@property 'fullname',
		get: ->	"#{@name} #{@lastname}"

root = exports ? window
root.Address = Address
