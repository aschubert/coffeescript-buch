chai = require 'chai'
chai.should()
expect = chai.expect

"1234".should.equal "1234"
expect("1234").to.be.equal "1234"
