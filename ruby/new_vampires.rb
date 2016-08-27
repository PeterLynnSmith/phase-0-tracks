puts "how many employees will be processed?"
	number_of_employees = gets.chomp.to_i

iterator = 0
until iterator == number_of_employees do
	iterator = iterator + 1
	puts "what is your name?"
		name = gets.chomp
	puts "how old are you?(better yet, what age will you be at 
	the end of this year?)"
		age = gets.chomp.to_i
	puts "what year were you born?"
		birth_year = gets.chomp.to_i
	puts "do you like garlic bread?(y/n)"
		eats_garlic = gets.chomp
	puts "do you require health insurance?(y/n)"
		mortal = gets.chomp


	knows_age = (age + birth_year) == 2016
	hates_garlic = eats_garlic == "n"
	immortal = mortal == "n"

	result = "results inconclusive"

	puts "Enter your allergies one at a time, enter 'done' when done"
			allergy = gets.chomp
	loop do 
		if allergy != "done"
			puts "allergic to anything else?"
			unless allergy == "done" || allergy == "sunshine"
				if allergy == "done"
					puts "Allergies noted!"
				elsif allergy == "sunshine"
					results = "probably a vampire"
				end
				break 
			end
		end	
	end

	if knows_age & ( !hates_garlic || !immortal)
		result = "probably not a vampire"
	end
	if !knows_age & ( hates_garlic || immortal)
		result = "probably a vampire"
	end
	if !knows_age & hates_garlic & immortal
		result = "almost certainly a vampire"
	end
	if name == "Drake Cula" || name == "Tu Fang"
		result = "definitely a vampire"
	end
	puts result
	puts "Actually nevermind! What do these questions have to do with anything? Let's all be friends."
end