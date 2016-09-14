#Pseudocode
	#promt for word
	#turn word into array
	#make an array that is an underscore version of the array
	
	#set the number of guesses that the user is allowed
	#promt for guess
	#if word array contains the guess, give feedback that is the
		#altered underscore array
	#repeat until guesses are used up
	#give a 'congratulations' or 'you lost' message

class Game
	attr_reader :answer_array
	#attr_reader :feedback_array

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
		end
	end
	@answer_array
	@feedback_array
end

 puts "User1, give me a word that User2 will guess letter-by-letter."
	word = gets.chomp

first_game = Game.new

first_game.word_to_array(word)
p first_game.underscore_array(first_game.answer_array)

#puts "User2, guess a letter that is contained in User1's word."



