require_relative 'redo_game'

describe Game do
	let(:game) { Game.new }

	it "turns a string to an array" do
		expect(game.word_to_array("hello")).to eq ["h", "e", "l", "l", "o"]
	end

end