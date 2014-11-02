class Person
	attr_accessor :lastname, :name

	def initialize(lastname, name)
		@lastname = lastname
		@name = name
	end

	def  fullname
		"#{@name} #{@lastname}"
	end

	def fullname=(fullname)
		@name = fullname.split(" ")[0]
		@lastname = fullname.split(" ")[1]
	end
end

person1 = Person.new "Meier", "Hans"
puts person1.fullname
person1.fullname = "Lieschen Müller"
puts person1.name
puts person1.lastname
