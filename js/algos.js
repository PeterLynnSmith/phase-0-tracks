// I was focused on studying for the assessment and didnt
//leave enough time for this. I will work through it 
// and get help in office hours and try to figure out 
//what's going on 


//write a function that takes an array
//of words or phrases and returns the 
//longest word or phrase in the array. 
//So if we gave your function the array 
//of ["long phrase","longest phrase","longer phrase"], 
//it would return "longest phrase". This is a logical 
//reasoning challenge, so try to reason through this 
//based on what you already know, rather than Googling 
//the fanciest solution or looking up built-in sorting 
//functions. Note that "some string".length will do what you expect in JS.

// create a function that goes through a length of words 
// create a function that determines the length of a word

function sortArray(array) {
	var index = 0
	var string_length = 0
	for (var i = 0; i< array.length; i++) {
		length = array[i].length;
		if (string_length < length) {
			var index = i 
			string_length = length
		}
	}
	console.log(index);
}

//start by retreiving the names and storing them in an array
function storeValues(hash) {
	var keys = new Array();
	var values = new Array();
	for (var key in hash) {
		keys.push(key);
		values.push(hash[key]);
	}
	console.log(values);
}
	
//this is as far as I got :( its already 10 and I have to turn it in
// I will come back and add more




sortArray(["hello", "sup", "goodbye"])
sortArray(["java", "script", "is", "crazy"])

storeValues({name: "Steven", age: 54})

storeValues({name: "Tamir", age: 54})






