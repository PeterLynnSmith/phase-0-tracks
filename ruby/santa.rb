class Santa
	# refactor getter method:
	attr_reader :age, :ethnicity
	# refactor setter method:
	attr_accessor :gender

	def initialize(name, gender, ethnicity)
		puts "initializing Santa instance..."
		@name = name
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = rand(0..140)
		puts "santa is #{@name}, a #{@gender}, is #{@ethnicity}, and is #{@age} years old." 
	end
	def speak
		puts "Ho, Ho, Ho! Haaaappy holidays!"
	end
	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}"
	end
	def celebrate_birthday
		@age = @age + 1
		puts "santa is #{@name}, a #{@gender}, is #{@ethnicity}, and is #{@age} years old." 
	end
	def get_mad_at(reindeer)
		@reindeer_ranking.insert(-1, @reindeer_ranking.delete(reindeer))
	end
	##long-hand setter method:
	# def gender=(new_gender)
	# 	@gender = new_gender
	# end
	##long-hand getter methods:
	# def age
	# 	@age
	# end
	# def ethnicity
	# 	@ethnicity
	# end
end

#RELEASES 1-3

# santas = []
 example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
 example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
 example_names = ["Bob", "Beatrice", "Jack", "Janet", "Sam", "Samantha", "Peter"]
# example_genders.length.times do |i|
#   santas << Santa.new(example_names[i], example_genders[i], example_ethnicities[i])
# end
# #puts santas[3].celebrate_birthday
# santa = Santa.new("Tom", "blah", "blah")
# puts santa.get_mad_at("Rudolph")

# new_santa = Santa.new("Melanie", "female", "white")
# p new_santa
# new_santa.gender = "n/a"
# p "That santa is now (a) #{new_santa.gender}."
# p new_santa.ethnicity

#RELEASE 4
100.times do |generated_santa|
	generated_santa = Santa.new(example_names.sample, example_genders.sample, example_ethnicities.sample)
end


