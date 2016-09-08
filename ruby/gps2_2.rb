#pseudocode
# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # convert to hash using split with hash
  # set default quantity to 1
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here ? hash]

# Method to add an item to a list
# input: item name and optional quantity
# steps: declare hash with new item and quantity and shovel into hash
# output: print new hash

# Method to remove an item from the list
# input: declare hash name with index
# steps: go into hash and say which we want to delete using delete hash method
# output: print updated hash

# Method to update the quantity of an item
# input: declare hash key value 
# steps: go into the hash
#get key item
#declare new item
# output: print updated hash

# Method to print a list and make it look pretty
# input: iterate through hash and print using interpolation
# steps: .each to iterate through hash
#interpolate in a sentence to show values
# output: print sentences using data

#def grocery_hash
	
#end
$grocery_hash = {}
def new_grocery_list(string)
	grocery_list = string.split(' ')
	 grocery_list.map! do |item|
	 	$grocery_hash[item] = 1 
	end
	$grocery_hash
end

def add_grocery_item(item)
	new_grocery_list(item)
end



def delete_grocery_item(item)
	$grocery_hash.delete(item)
end

def update_grocery_item(item, quantity)
	$grocery_hash[item] = quantity
	
end

def print
	$grocery_hash.each do |item, quantity|
	p "We need #{quantity} more #{item}"
	end
end

# new_grocery_list("apples bananas mangos")


# add_grocery_item("bread")

# # $grocery_hash


# delete_grocery_item("bread")
# #p $grocery_hash


# update_grocery_item("apples", 4)
# #p $grocery_hash

new_grocery_list("lemonade tomatoes onions")

p $grocery_hash

add_grocery_item("ice-cream")
p $grocery_hash

update_grocery_item("lemonade", 2)
update_grocery_item("ice-cream", 4)

update_grocery_item("ice-cream", 1)
update_grocery_item("tomatoes", 3)


puts print

