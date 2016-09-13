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
	def initialize
		@answer_array = []
	end

	def word_to_array(string)
		@answer_array = string.split('')
		p @answer_array
	end

end

puts "User1, give me a word that User2 will guess letter-by-letter."
	word = gets.chomp

first_game = Game.new

first_game.word_to_array(word)

