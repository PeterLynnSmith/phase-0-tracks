wolves_like_sunshine = true
wolves_like_garlic = true
vampires_like_sunshine = false
vampires_like_garlic = false


puts "What's your name?"
	name = gets.chomp
puts "How old will you be this year?"
	age = gets.chomp
puts "What year were you born?"
	year_of_birth = gets.chomp
puts "We like eating garlic bread, do you eat garlic bread?"
	garlic_answer = gets.chomp
puts "Do you require health insurance?"
	mortal = gets.chomp
	case age 
	when year_of_birth + age == 2016
		knows_age = true
		print "probably not a vampire"
	elsif
		knows_age == false
		print "probably a vampire"
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
		
		#if likes_garlic == true
		#	print "probably not a vampire"
		#else likes_garlic == false
		#	print "probably a vampire"
		#end
		
			