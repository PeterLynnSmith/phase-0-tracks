#wolves_like_sunshine = true
#wolves_like_garlic = true
#vampires_like_sunshine = false
#vampires_like_garlic = false

puts "What's your name?"
	name = gets.chomp
	name.downcase!
if name == "drake cula"
	abort ("Definitely a vampire")
elsif name == "tu fang"
	abort ("Definitely a vampire")
end
puts "How old will you be this year?"
	age = gets.chomp.to_i
puts "What year were you born?"
	year_of_birth = gets.chomp.to_i
puts "We like eating garlic bread, do you eat garlic bread?"
	garlic_answer = gets.chomp
puts "Do you require health insurance?"
	mortal = gets.chomp

	if year_of_birth + age == 2016
		knows_age = true
	elsif
		year_of_birth + age != 2016
		knows_age = false
	end
	case garlic_answer
	when "yes"
		likes_garlic = true
	else
		likes_garlic = false
	end
	case mortal 
	when "yes"
		not_immortal = true
	else
		not_immortal = false
	end

if knows_age && likes_garlic && not_immortal
	puts "probably not a vampire"
elsif !knows_age && !likes_garlic && !not_immortal
	puts "almost certainly a vampire"
elsif knows_age == false
	abort "probably a vampire"
elsif likes_garlic == false
	abort "probably a vampire"
elsif not_immortal == false
	abort "probably a vampire"
else
	abort "results inconclusive"
end
