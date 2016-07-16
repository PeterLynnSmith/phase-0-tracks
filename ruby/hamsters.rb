puts "hamster's name"
	name = gets.chomp
puts "how loud is the hammy for 1 to 10"
	volume = gets.chomp.to_i
puts "what is the fur color"
	color = gets.chomp
puts "do they seem friendly and healthy (true or false)"
	adoptable = gets.chomp
puts "estimated age, if unknown mark n/a"
	age = gets.chomp
	if age == "n/a"
		age = nil
	else 
		age = age.to_i
	end
p name
p volume
p color
p adoptable
p age