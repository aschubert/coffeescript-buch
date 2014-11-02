Function::property= (name, descriptor) ->
	Object.defineProperty @prototype, name, descriptor

class Person
	constructor: (@lastname, @name) ->

	@property 'fullname',
		get: ->
			"#{@name} #{@lastname}"
		set: (fullname) -> [@name, @lastname] = fullname.split ' '

person1 = new Person "Meier", "Hans"
console.log person1.fullname
person1.fullname = "Lieschen Müller"
console.log person1.name
console.log person1.lastname
