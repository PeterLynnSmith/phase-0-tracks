#I ran into branch problems. I created a branch for this assessment,
#then created a repository. Apparently this branch didnt carry over into the repository so my 
#add and commit were to my master branch. not sure what to do about this and wondering what will happen

#integer = " "
#operator = " "
#other_integer = " "
#puts "give me a basic math problem"
#	problem = gets.chomp.split
	
def calculate(integer, operator, other_integer)
	#problem[0] >> integer 
	#problem[1] >> operator
	#problem[2] >> other_integer
	integer = integer.to_i 
	other_integer = other_integer.to_i
	if operator == "+"
		integer + other_integer
	elsif operator == "-"
		integer - other_integer
	elsif operator == "*"
		integer * other_integer
	elsif operator == "/"
		integer / other_integer 
	end
end
puts calculate(20,"+",5)
puts calculate(20,"-",5)
puts calculate(20,"*",5)
puts calculate(20,"/",5)
#calculate(problem)

# I am unable to do the majority of the challenge because I cant get past the user interface portion.
# When I try to use the interface I either get a wrong number of arguments error or a undefined variable error.