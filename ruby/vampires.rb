puts "How many employees will be processed?"
employees_processed = gets.chomp.to_i
	
employees_processed.times do |num_of_employees| #study loops .times, .each, loop do, for loop 
	puts "What's your name?"
		normal_name = gets.chomp
	puts "How old will you be this year?"
		age = gets.chomp.to_i
	puts "What year were you born?"
		year_of_birth = gets.chomp.to_i
		
	correct_age = 2016 - year_of_birth == age
	
	puts "We like eating garlic bread, do you eat garlic bread?"
		garlic_answer = gets.chomp
		likes_garlic = garlic_answer == "yes"
		
	puts "Do you require health insurance?"
		health_insurance = gets.chomp
		wants_health_insurance = health_insurance == "yes" #familiarize yourself with shorter boolean

	results = "Results Inconclusive"
	
	if correct_age && (likes_garlic || wants_health_insurance)
		results = "probably not a vampire"
	end
	
	if !correct_age && ( !likes_garlic || !wants_health_insurance ) 
		results = "probably a vampire"
	end
	
	if !correct_age && !likes_garlic && !wants_health_insurance
		results = "almost certainly a vampire"
	end
	
	vampire_names = ["Drake Cula", "Tu Fang"]
	
	if vampire_names.include?(normal_name)
		results = "Definitely a vampire."
	end
	
	loop do 
		puts "Enter your allergies one at a time, enter 'done' when done"
			allergy = gets.chomp
		if 	allergy == "done" || allergy == "sunshine"
			
			if allergy == "done"
				puts "Allergies noted!"
			elsif allergy == "sunshine"
				results = "probably a vampire"
			end
			break #study break in loops next, unless, yield 
		end	
	end
	puts results 
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
#end


