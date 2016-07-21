
puts "How many employees will be processed?"
	employees_processed = gets.chomp
	number = 0 
	until number == employees_processed
		puts "What's your name?"
			normal_name = gets.chomp
			normal_name.downcase!
		puts "How old will you be this year?"
			age = gets.chomp.to_i
		puts "What year were you born?"
			year_of_birth = gets.chomp.to_i
		puts "We like eating garlic bread, do you eat garlic bread?"
			garlic_answer = gets.chomp
		puts "Do you require health insurance?"
			mortal = gets.chomp
	number = number + 1
		allergy = ""
		until allergy == "done" || allergy == "sunshine"
			puts "List your allergies, entering them one at a time, followed by entering the phrase 'done'"
			allergy = gets.chomp
		end

		if normal_name == "drake cula" || normal_name == "tu fang"
			normal_name = false
		end

		if garlic_answer == "yes"
				likes_garlic = true
		elsif garlic_answer == "no"
			likes_garlic == false
		end 
		
		if mortal == "yes"
			not_immortal = true
		elsif mortal == "no"
			not_immortal = false
		end
		
		if normal_name == false
			puts "definitely a vampire"
		elsif year_of_birth + age == 2016
			knows_age = true
		elsif allergy == true || !knows_age && ( !likes_garlic || !not_immortal ) 
			puts "probably a vampire"
		elsif knows_age && likes_garlic && not_immortal
			puts "probably not a vampire"
		elsif !knows_age && !likes_garlic && !not_immortal
			puts "almost certainly a vampire"
		else
			puts "results inconclusive"
		end
	end


	
	#puts "How many employees will we be processing? (1,2,3 etc.)"
#	number_of_employees = gets.chomp
#	employees == 0
#	until employees == number_of_employees
#		puts vampire_detector 
#	employees += 1
#	end


puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
#end

