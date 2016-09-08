
def alias_maker(full_name)
	full_name = full_name.split(' ')
	#switch first and last
	full_name[0], full_name[1] = full_name[1], full_name[0]
	#make letter sets we can iterate through
	vowels = ["a","e","i","o","u"]
	consenants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"] 
	#make an empty string we can put our alias letters or space into
	full_alias_name = ""
	#loop through individual elements of the array full_name
	for name in full_name
		#make an empty string for either first or last name to get stored
		name_alias = ""
		#go through each letter of either the first or last name
		name.split("").each do |letter|
			#decide if the given letter is in vowels
			if vowels.include?letter
				#if letter is in vowels then store its index +1 as the new index 
				new_letter_index = vowels.index(letter) + 1
				#if that new index is at the end of the string (edge case) 
				#define it as the first index
				if new_letter_index == vowels.length
					new_letter_index = 0
				end
				#shovel the new index for the letter in vowels into the 
				#first or last name
				name_alias << vowels[new_letter_index]
				#decide if the letter is included in consenants
			elsif consenants.include?letter
				#define the index of the letter as +1 and store that as a variable
				new_letter_index = consenants.index(letter) + 1
				#if the new index is the same as the length of the consenants 
				#(edge case) then redefine at as the index of the first letter
				if new_letter_index == consenants.length
					new_letter_index = 0
				end
				#shovel the new letter into either the first or last name
				name_alias << consenants[new_letter_index]
			end
		end
		#shovel the capitalized name into the full name with a space
		full_alias_name << name_alias.capitalize + " "
	end
	puts full_alias_name
end

alias_maker("Peter Smith")