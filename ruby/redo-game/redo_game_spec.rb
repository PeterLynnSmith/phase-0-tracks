require_relative 'redo_game'

describe Game do
	let(:game) { Game.new }

	it "turns a string to an array" do
		expect(game.word_to_array("hello")).to eq ["h", "e", "l", "l", "o"]
	end

	it "makes a feedback array from the secret word array" do
		game.word_to_array("hello")
		game.underscore_array
	 	expect(game.feedback_array).to eq ["_", "_", "_", "_", "_"]
	 end

	it "decides the number of guesses available to User2 based off the number of letters in User1's word" do
		expect(game.number_of_guesses([1,2,3])).to eq 3
	end

	it "checks to see if guess letter is in answer array and prints updated feedback array" do
		game.word_to_array("hello")
		game.underscore_array
		expect(game.check_if_correct("h")).to eq ["h", "_", "_", "_", "_"]
	end	

end