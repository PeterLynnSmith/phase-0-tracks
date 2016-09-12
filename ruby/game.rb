#promt user1 for a secret
#turn the secret into a variable
#split the variable's characters into an array
#prompt user2 to guess a character in user1's secret, also informing
#them of how many guesses that they get
#if the user's secret includes the character
#from user1's secret, tell them where it is
#define a new array that is user1's secret so far
#promt user2 to guess and repeat these steps until 
#the number of guesses has been reached(give them a fail)
#or the secret has been revealed(congratulate them)

#class code
class GameClass
	attr_reader :secret
	attr_reader :length
	attr_reader :underscore_array
	attr_accessor :countdown
	attr_accessor :ends
	
	def initialize(secret)
		@secret = secret.split('')
		@length = secret.length
		@underscore_array = []
		@length.times {@underscore_array << ("_")}
		@firstGuess = true
		@ends = false
	end

	def user_try(character)
		if @firstGuess == true
			@countdown = @length
		end
		if @secret.index(character) == nil
			nil
		else
			@underscore_array[@secret.index(character)] = character
		end
			@firstGuess = false
	end

	
	def final_guess(secret)
		if secret == @secret
			return true
		else
			return false
		end
	end
	def subtract_guess
		@countdown = countdown - 1
	end
end

#driver code
game_in_motion = true
while game_in_motion
	puts "Welcome to the Guess-The-Secret-Game. Please make your 
	command line window very small"
	puts "User1, without showing User2..type a secret and hit enter. 
	The secret cannot have more than one of the same letter."
		secret = gets.chomp
	
	Game = GameClass.new(secret)
	puts "

























	"
	puts "Now bring over user2."
	loop_initializer = true
	until Game.ends

		if loop_initializer == true
			loop_initializer = false
			p Game.underscore_array
			puts "User2, guess a character that is in the secret that User1 entered."
			character = gets.chomp
			Game.user_try(character)
			Game.subtract_guess
			p Game.underscore_array

		elsif Game.countdown > 0
			character = gets.chomp
			Game.user_try(character)
			Game.subtract_guess
			p Game.underscore_array

		elsif Game.countdown == 0
			puts "User2, no more guesses, guess the whole secret"
			final_guess = gets.chomp
			final_guess = final_guess.split('')
			Game.subtract_guess

			if Game.final_guess(final_guess)
				puts "User2, you guessed correctly."
			else
				puts "User2, you lose."
			end

	 	else
	 		break
	 	end
	end
	game_in_motion = false
end






