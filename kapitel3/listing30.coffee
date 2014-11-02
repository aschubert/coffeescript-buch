class Person
	constructor: (@lastname, @name) ->

person1 = new Person "Meier", "Hans"
Object.defineProperty(person1, "fullname", get: ->	"#{@name} #{@lastname}")
console.log person1.fullname
