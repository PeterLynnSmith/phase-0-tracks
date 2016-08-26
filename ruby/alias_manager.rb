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
#this will switch the first and last name
real_name[0], real_name[1] = real_name[1], real_name[0]

#next I need to make one array for vowels and another for consenants

consenants = ["b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w","x","y","z"]
#now i'll try to connect everything 

first_draft_alias = real_name[0].split(//) 

#real_name.each do
vowels = ["a","e","i","o","u"]	

#print first_draft_alias

alias_name = ""

real_name.each do |name|
	name.split("").each do |letter|
		if vowels.include? letter 
			original_index = vowels.index(letter)
			next_index = original_index + 1
				if original_index == 4
					next_index = 0
				end
			alias_letter = vowels[next_index]
			alias_name = alias_name + alias_letter
		else
			consenants.include? letter
			original_index = consenants.index(letter)
			next_index = original_index + 1 
				if original_index == consenants.length - 1
					next_index = 0
				end
			alias_letter = consenants[next_index]
			alias_name = alias_name + alias_letter
		end
	end
	alias_name = alias_name + " "
end
	print alias_name
