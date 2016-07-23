#gather info and input responses to hash
responses = {}
puts "Whats the client's name?"
	responses[:name] = gets.chomp
puts "whats your client's age?"
	responses[:age] = gets.chomp
puts "whats your client's email?"
	responses[:email] = gets.chomp
puts "whats your client's phone number?"
	responses[:phone] = gets.chomp
puts "whats your client's decor theme?"
	responses[:theme] = gets.chomp
puts "does your client like indoor plants?"
	responses[:likes_plants] = gets.chomp
p responses
#offer a way to correct an input
puts "if you need to change something, what is the key of what you need to change? (see hash), otherwise enter 'none'"
	correction = gets.chomp
#deal with their response
if correction == "none"
	puts "great job!"

elsif correction == ":name"
	puts "what is your new value for it?"
	responses[:name] = gets.chomp
	p responses

elsif correction == ":age"
	puts "what is your new value for it?"
	responses[:age] = gets.chomp
	p responses

elsif correction == ":email"
	puts "what is your new value for it?"
	responses[:email] = gets.chomp
	p responses

elsif correction == ":phone"
	puts "what is your new value for it?"
	responses[:phone] = gets.chomp
	p responses

elsif correction == ":theme"
	puts "what is your new value for it?"
	responses[:theme] = gets.chomp
	p responses

elsif correction == ":likes_plants"
	puts "what is your new value for it?"
	responses[:likes_plants] = gets.chomp
	p responses
end


