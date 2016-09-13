# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # separate string by spaces into array
  # define an empty hash
  # iterate over array and set hash key to each array element
  # set default quantity (value)
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here? hash]

# Method to add an item to a list
# input: item name and optional quantity
# steps: 
	#take arguments of method and assign them to a hash key and value
# output: hash (last evaluated expression)

# Method to remove an item from the list
# input: item to be deleted
# steps: 
	#take in item(key) and delete it
# output: return hash

# Method to update the quantity of an item
# input: item(key) and new quantity
# steps:
	#set item to new quantity(value)
# output: return hash

# Method to print a list and make it look pretty
# input: hash 
# steps: 
	#iterate through hash and print the keys and values through interpolation in a sentence
# output: a bunch of sentences

def create_list(grocery_list, item_list)
	item_list = item_list.split
	item_list.each do |item|
		grocery_list[item] = 1
	end
	puts grocery_list
end

def add(hash, item, quantity=1)
	hash[item] = quantity
	hash
end
def delete(hash, item)
	hash.delete(item)
	hash
end
def update(hash, item, quantity)
	hash[item] = quantity
end
def print(hash)
	hash.each do |item, quantity|
	puts "we need #{quantity} more #{item}(s)"
	end
end
grocery_items = ""
grocery_list = {}
create_list(grocery_list, "apple peach banana")

add(grocery_list, "pear", 1)
#puts grocery_list
delete(grocery_list, "banana")
#puts grocery_list
update(grocery_list, "peach", 20)
#puts grocery_list
print(grocery_list)



