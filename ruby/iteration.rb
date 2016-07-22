def Blurt_Nothing

puts "We're counting!"
yield("1" , "2")
puts "Okay..Counting is over, everybody go home. "

end

Blurt_Nothing  { |number1, number2| puts "Yo, this is #{number1} and #{number2}, and I am the yield."}


car_maker = ["Honda" , "Toyota" , "Ford"]
puts car_maker

car_maker.each do |maker| 
    
    puts "This is a car model named #{maker}." 
end

car_maker.map! do |maker|
    maker.upcase	#removed p 
end

puts car_maker #changed p to puts

				#this is a key(index) => value(as in array)
car_make_model = { "Honda" => "Civic" , "Toyota" => "Prius" , "Ford" => "F-150"}
puts car_make_model

car_make_model.each do |maker, model| 
    
    puts "This is a car model named #{maker} and its model is #{model}." 
end

car_maker.delete_if { |maker| maker.length <= 4}
p car_maker

car_maker.keep_if { |maker| maker.length > 4}
p car_maker

car_maker.select! {|maker| maker == "Toyota"}
p car_maker