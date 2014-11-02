chai = require 'chai'

foo = 'bar'

chai.assert.typeOf foo, 'string', 'foo should be a string'
