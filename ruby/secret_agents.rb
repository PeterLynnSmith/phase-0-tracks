#ask for a string and turn that into a variable
#determine the length of that string
#split string into an array by the space characters
#change each letter to the next letter
#print the new string



# puts "give me a password"
# original_string = gets.chomp
# length = original_string.length
# puts length
def encode(password)
#we need a variable for our loop 
i = 0
#determine string length so we know how to iterate through it
length = password.length
#iterate through it
    while i < length
    	#edge case for z
        if password[i] == "z"
           password[i]== "a"
        else
        #overwrite the string with the new string that's encoded
           password[i] = password[i].next
        end
        #make sure your loop gets there
        i += 1
    end
    #make password a global variable
    return password
end
#make a method to decrypt encrypted strings
def decode(encoded_password)
#make a variable called alphabet that is the alphabet so that we can manipulate the alphabet
alphabet = "abcdefghijklmnopqrstuvwxyz"
#we need a variable for our loop 
i = 0
#lets make a loop that lasts as long as the length of the string we want to decrypt
    while i < encoded_password.length
    	#assign a local variable (within this loop) that is the 
        letter = encoded_password[i]
        #edge case for a
        if letter == "a"
           letter == "z"
        else
        	#for everything besides the edge case, lower the index in the alphabet string by 1
           encoded_password[i] = alphabet[alphabet.index(letter) - 1]
        end
     #make sure the loop gets to the length of the user's string
    i += 1
    end
    #make encoded_secret a global variable
    return encoded_password
end
#add a user interface that chooses one of the variables
puts "Would you like to decode or encode?"
selection = gets.chomp

puts "What is the password?"
password = gets.chomp

#select one of the methods to use based off of the user's initial response
if selection == "encode"
    puts encode(password)
elsif selection == "decode"
    puts decode(password)
end


#decode(encode("swordfish"))

#This works because the encode method evaluates 
#to a string which the decode method can then evaluate.

# encode("abc")
# encode("zed")
# decode("bcd")
# decode("afe")































# def encode(secret)
# 	i = 0

# 	# determine string length
# 	length = secret.length
# 	# iterate through the string
# 	while i < length
# 		if secret[i] == "z"
# 			secret[i] = "a"
# 		# change each letter to the next letter in the alphabet
# 		else  
# 			secret[i] = secret[i].next
# 		# overwrite the old string with the new string
# 		end
# 		i += 1
# 	end

# 	#puts secret
# 	return secret
# end

# # declare method
# def decode(encoded_secret)
# 	# make alphabet string
# 	alphabet = "abcdefghijklmnopqrstuvwxyz"

# 	i = 0
# 	while i < encoded_secret.length
# 		# get next letter in input
# 		letter = encoded_secret[i]
# 		if letter == "a"
# 			letter = "z"
# 		else
# 			# find it in the alphabet
# 			encoded_secret[i]= alphabet[alphabet.index(letter) - 1]
# 			# change it to the preceeding letter
# 		end
# 		i += 1
# 	end

# 	#puts encoded_secret
# 	return encoded_secret
# # end method
# end

# #decode(encode("swordfish"))

# #This works because the encode method evaluates 
# #to a string which the decode method can then evaluate.



# #ask the user if they would like to encode or decode a password
# puts "Would you like to encode or decode a password?"
# operation = gets.chomp

# #ask them for the password
# puts "What is the password?"
# password = gets.chomp
# #if they want to encode, run that program
# if operation == "encode"
# 	puts encode(password)
# #if they want to decode, run that program
# elsif operation == "decode"
# 	puts decode(password)
# end













