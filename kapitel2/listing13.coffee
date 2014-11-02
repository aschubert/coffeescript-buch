names = ["Anton", "Max", "Christian"]

shortnames = (name for name in names when name.length < 6)

console.log shortnames
