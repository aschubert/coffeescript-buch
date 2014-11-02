class Person
	constructor: (@lastname, @name) ->

	fullname: ->
		"#{@name} #{@lastname}"

person1 = new Person "Meier", "Hans"
console.log person1.fullname()
