#gather info, make sure its the right data type, 
#and input responses to hash
responses = {}
puts "Whats the client's name?"
	responses[:name] = gets.chomp
puts "whats your client's age?"
	responses[:age] = gets.chomp.to_i
puts "whats your client's email?"
	responses[:email] = gets.chomp
puts "whats your client's phone number?"
	responses[:phone] = gets.chomp.to_i
puts "whats your client's decor theme?"
	responses[:theme] = gets.chomp
puts "does your client like indoor plants? (y/n)"
	plant_pref = gets.chomp
	if plant_pref == "y" 
		responses[:likes_plants] = true
	elsif plant_pref == "n" 
		responses[:likes_plants] = false
	end
#print the responses
p responses
#offer a way to correct an input
puts "if you need to change something, what is the key of what you need to change? (see hash), otherwise enter 'none'"
	correction = gets.chomp
#deal with their response


if correction == "none"
	puts "Great job!"
end
#allow for corrections to be made
if correction == ":name" || correction == "name"
	puts "what is your new value for it?"
	responses[:name] = gets.chomp
	p responses
end
if correction == ":age" || correction == "age"
	puts "what is your new value for it?"
	responses[:age] = gets.chomp.to_i
	p responses
end
if correction == ":email" || correction == "email"
	puts "what is your new value for it?"
	responses[:email] = gets.chomp
	p responses
end
if correction == ":phone" || correction == "phone"
	puts "what is your new value for it?"
	responses[:phone] = gets.chomp.to_i
	p responses
end
if correction == ":theme" || correction == "theme"
	puts "what is your new value for it?"
	responses[:theme] = gets.chomp
	p responses
end
if correction == ":likes_plants" || correction == "likes_plants" || correction == "likes plants"
	puts "what is your new value for it?"
	plant_pref = gets.chomp
	if plant_pref == "y" 
		responses[:likes_plants] = true 
	elsif plant_pref == "n" 
		responses[:likes_plants] = false
	end
	#print the edited responses
	p responses
end


