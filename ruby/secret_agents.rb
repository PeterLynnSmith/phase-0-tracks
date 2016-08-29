def encode(secret)
	i = 0

	# determine string length
	length = secret.length
	# iterate through the string
	while i < length
		if secret[i] == "z"
			secret[i] = "a"
		elsif secret[i] == " "
			secret[i] = " "
		# change each letter to the next letter in the alphabet
		else  
			secret[i] = secret[i].next
		# overwrite the old string with the new string
		end
		i += 1
	end

	#puts secret
	return secret
end

# declare method
def decode(encoded_secret)
	# make alphabet string
	alphabet = "abcdefghijklmnopqrstuvwxyz"
#edge case for a to turn back to z
encoded_secret.tr('a', 'z')
	#make a variable to be used as a way for our loop to know where it is in the alphabet
	i = 0
	while i < encoded_secret.length
		# get next letter in input
		letter = encoded_secret[i]
		if letter == " "
			letter = " "
		else
			# using the alphabet string, redefine each letter as the preceeding one in the alphabet using index
			encoded_secret[i] = alphabet[alphabet.index(letter) - 1]
			# change it to the preceeding letter
		end
		#make sure we iterate through the user's string
		i += 1
	end

	#puts encoded_secret
	return encoded_secret
# end method
end

#decode(encode("swordfish"))

#This works because the encode method evaluates 
#to a string which the decode method can then evaluate.

#create a user interface

#ask the user if they would like to encode or decode a password
puts "Would you like to encode or decode a password?"
operation = gets.chomp

#ask them for the password
puts "What is the password?"
password = gets.chomp
#if they want to encode, run that program
if operation == "encode"
	puts encode(password)
#if they want to decode, run that program
elsif operation == "decode"
	puts decode(password)
end



#dbc's test code to be used (uncommented) when user interface is commented out
# puts encode("abc")
# puts encode("zed")
# puts decode("bcd")
# puts decode("afe")