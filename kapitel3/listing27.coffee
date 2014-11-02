class MyClass
	@classvariable: "Ich gehöre zur Klasse"
	instancevariable: "Ich gehöre zur Instanz"

console.log MyClass.classvariable
console.log MyClass.instancevariable

myInstance = new MyClass

console.log myInstance.classvariable
console.log myInstance.instancevariable
