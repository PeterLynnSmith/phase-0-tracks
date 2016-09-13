#THE CODE I ENDED UP WITH IS WAY DOWN AT THE BOTTOM
# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # convert to hash
  # set default quantity = 1
  # print the list to the console 
# output: hash

# Method to add an item to a list
# input: item name and optional quantity
# steps: 
  # 1. adding item to hash by using <<
  # 2. add quantity to hash by using hash[item] = 
# output: new hash = item: quantity

# Method to remove an item from the list
# input: declare hash.delete(key) / hash removal method
# steps: 
  # 1. go into the hash and declare what item we want to delete
# output: new hash with the item subtracted

# Method to update the quantity of an item
# input: hash[item] = new quantity
# steps: 
  # 1. go into the hash
  # 2. get the key (item) that we want to update
  # 3. declare a new value (quantity)
# output: hash with updated quantity

# Method to print a list and make it look pretty
# input: iterate and print using interpolation 
# steps: 
  # 1. .each to iterate through hash
  # 2. p "#{item}: #{quantity}"
# output: "carrots: 2"


# $grocery_hash={} 
# # can't use a class structure, but need to make grocery hash global for access
# # but global variables are evil, so never again
# # learned the importance of scope

# def new_grocery_list(string)
#   grocery_list = string.split(' ')
#   grocery_list.map! do |item|
#   $grocery_hash[item] = 1 
#   end
# end

# def add_grocery_item(item)
#   new_grocery_list(item)
# end

# def delete_grocery_item(item)
#   $grocery_hash.delete(item)
# end

# def update_grocery_item(item, quantity)
#   $grocery_hash[item] = quantity
# end

# def print
#   $grocery_hash.each do |item, quantity|
#     p "We need #{quantity} more #{item}"
#   end
# end

# # new_grocery_list("apples bananas mangos")
# # add_grocery_item("bread")
# # add_grocery_item("ice")
# # p $grocery_hash

# # delete_grocery_item("bread")
# # p $grocery_hash

# # update_grocery_item("apples", 4)
# # p $grocery_hash

# # print

# new_grocery_list("lemonade tomatoes onions")
# update_grocery_item("ice-creams", 2)
# update_grocery_item("tomatoes", 3)
# # p $grocery_hash

# add_grocery_item("ice-creams")
# update_grocery_item("ice-creams", 4)
# # p $grocery_hash

# delete_grocery_item("lemonade")
# # p $grocery_hash

# update_grocery_item("ice-creams", 1)
# # p $grocery_hash

# print



# REFACTORING 

# def new_grocery_list(hash, string)
#   string = string.split(' ')
#   string.each do |item|
#     hash[item] = 1 
#   end
# end

# def add_grocery_item(item)
#   new_grocery_list(item)
# end

# def delete_grocery_item(hash, item)
#   hash.delete(item)
# end

# def update_grocery_item(hash, item, quantity)
#   hash[item] = quantity
# end

# def print(hash)
#   hash.each do |item, quantity|
#   p "We need #{quantity} more #{item}"
#   end
# end


# list_items = ""
# grocery_hash = {}

# new_grocery_list(grocery_hash, list_items)
# # p grocery_hash

# update_grocery_item(grocery_hash, "lemonade", 2)
# update_grocery_item(grocery_hash, "tomatoes", 3)
# update_grocery_item(grocery_hash,"ice-creams", 4)
# update_grocery_item(grocery_hash,"onions", 1)
# # p grocery_hash

# delete_grocery_item(grocery_hash, "lemonade")
# # p grocery_hash

# update_grocery_item(grocery_hash, "ice-creams", 1)
# # p grocery_hash

# print(grocery_hash)


#MORE REFACTORING


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

# add(grocery_list, "pear", 1)
# #puts grocery_list
# delete(grocery_list, "banana")
# #puts grocery_list
# update(grocery_list, "peach", 20)
# #puts grocery_list
# print(grocery_list)
add(grocery_list, "lemonade", 2)
#print(grocery_list)
add(grocery_list, "tomatoes", 3)
#print(grocery_list)
add(grocery_list, "onions", 1)
add(grocery_list, "ice cream", 4)
delete(grocery_list, "lemonade")
update(grocery_list, "ice cream", 1)
print(grocery_list)




=begin
REFLECTION:
What did you learn about pseudocode from working on this challenge?
  The more that you pseudocode, the easier your code will be. The tricky thing is, if you don't yet 
  know how to do what you are trying to do then there may be a lot of deviation from your pseudocode.
What are the tradeoffs of using arrays and hashes for this challenge?
  Im not sure what you mean by tradeoffs, they are both necessary. It was a difficult challenge.
What does a method return?
  Methods will return the value of the last statement
What kind of things can you pass into methods as arguments?
  Any object, depending on what your method requires: hash, string, array, etc.
How can you pass information between methods?
  By using a method that contains the hash we want to manipulate and then referencing the method in othe methods.
What concepts were solidified in this challenge, and what concepts are still confusing?
  This solidified manipulating hashes with methods. It is still confusing following the logic because Katherine 
  had the idea that refactored the code and although I think I understand it, the understanding is not as deep as
  if I had come up with it on my own.
=end