#what is below would change the letters using .next

#puts "What name would you like an alias for?"
#	real_name = gets.chomp.chars
#real_name.map! { |letter| letter.next }
#p real_name


#what I need to do it separate the first and last name and then decide if each one 
#is a vowell or not using include along with two arrays containing all the vowels and all the consenants.
#I would then use .next to change the value of each one or I could use the index +1 or something like that.


#this will split up the first and last name 
puts "What name would you like an alias for?"
	real_name = gets.chomp.downcase.split
p real_name 
#this will switch the first and last name
real_name[0], real_name[1] = real_name[1], real_name[0]
p real_name
#next I need to make one array for vowels and another for consenants
vowels = ["a","e","i","o","u"]
consenants = ["b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w","x","y","z"]
#now i'll try to connect them
#def alias_maker_vowels(letter)
#	 letter do |vowel|
#		if vowels.include?(vowel)
#			vowels.rotate(1)[vowels.index(vowel)]
#		else
#			vowel
#		end
#	end
#	new_letter.join
#end
#alias_maker_vowels(real_name)

#well that definitely didnt work. I tried to use a method that 
#someone on stackoverflow posted but it didnt really apply and it keeps saying undefined method

#now i'll try it for each letter...

real_name.length.times do 
	if real_name[0] == "a" 
		real_name[0] = "e"
	end
end

# I cant even get it to change the first letter if its "a"










	