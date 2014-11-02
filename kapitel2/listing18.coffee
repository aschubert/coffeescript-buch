type = (object) ->
	return (String) object if object is undefined or object is null
	class2type = {}
	for name in "Array Boolean Date Function Number RegExp String".split(" ")
		class2type["[object #{name}]"] = name.toLowerCase()
	class2string = Object.prototype.toString.call object
	return class2type[class2string] if class2string of class2type
	"object"

console.log type 10
console.log type '10'
console.log type []
console.log type null
