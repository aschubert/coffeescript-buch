chai = require 'chai'
chai.should()

{Address} = require '../src/address'

describe 'An Address', ->
	it 'should store a name and a last name', ->
		address = new Address 'Max', 'Muster'
		address.name.should.equal 'Max'
		address.lastname.should.equal 'Muster'
	it 'should return a string containing the full name', ->
		address = new Address 'Hans', 'Meier'
		address.fullname.should.equal 'Hans Meier'
