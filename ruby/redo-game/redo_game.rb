#Pseudocode
	#promt for word
	#turn word into array
	#make an array that is an underscore version of the array
	#set the number of guesses that the user is allowed
	#promt for guess, informing User2 how many guesses they have to unveil the word

	#if word array contains the guess, give feedback that is the
		#altered underscore array
	#repeat until guesses are used up
	#give a 'congratulations' or 'you lost' message

class Game

	attr_reader :answer_array
	attr_accessor :feedback_array
	def initialize
		@answer_array = []
		@feedback_array = []
	end

	def word_to_array(string)
		@answer_array = string.split('')
	 	@answer_array
	end

	def underscore_array(array)
		array.map do |letter|
		 	letter = "_"
		 @feedback_array = array
		 @feedback_array
		end
	end

	def number_of_guesses(array)
		@guesses_for_user2 = array.length
		@guesses_for_user2
	end

	def check_if_correct(answer_array, guess_letter)
		if answer_array.include?(guess_letter)
			answer_array.each do |answer_letter|
				if answer_letter == guess_letter
					#somehow set the index of the guessed letter to a variable.
					#I will then use that index to set the corresponding feedback_array index
					#to the revealed letter, then print the array and write a method to decrease the 
					#number of guesses by one.
					answer_index = answer_arr
					@feedback_array
				end
			end
		else 
			#decrease their guesses by one and ask for another guess
		end
	end

	@answer_array
	@feedback_array

end

 puts "User1, give me a word that User2 will guess letter-by-letter."
	word = gets.chomp

first_game = Game.new
first_game.word_to_array(word)
first_game.underscore_array(first_game.answer_array)
first_game.number_of_guesses(first_game.answer_array)

puts "User2, guess a letter that is contained in User1's word."
	guess1 = gets.chomp
first_game.check_if_correct(first_game.answer_array, guess1)












