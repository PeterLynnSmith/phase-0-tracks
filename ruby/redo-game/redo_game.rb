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

