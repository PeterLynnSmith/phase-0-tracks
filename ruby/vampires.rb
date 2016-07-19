# I couldn't figure out how to make either of the loops required.
# I tried the employees processed one and it didn't work but 
# I couldn't come up with anything close for the loop asking 
# allergies. I would have continued trying but I am out of time.
# I will be in office hours to discuss what I don't know about
#implementing loops.


#puts "How many employees will be processed?"
#	employees_processed = gets.chomp
#	number = 0 
#	until number = employees_processed
#		puts vamp_detector
#	number = number + 1
#	end

#def vamp_detector
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
	puts "probably a vampire"
elsif likes_garlic == false
	puts "probably a vampire"
elsif not_immortal == false
	puts "probably a vampire"
else
	puts "results inconclusive"
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
#end

