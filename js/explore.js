//define a variable as a string
//starting at the last letter, iterate to the first letter and store in a variable
//print the updated string
var name = "peter"


function reverse(name) {
	var newName = ""
	for (var i = name.length - 1; i >= 0; i--) {
		newName = newName + name[i];
	}
	return newName
}

reverse(name)

if (1 === 1) {
	console.log(reverse(name))
}
