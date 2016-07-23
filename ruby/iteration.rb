def Blurt_Nothing

puts "We're counting!"
yield("1" , "2")
puts "Okay..Counting is over, everybody go home. "

end

Blurt_Nothing  { |number1, number2| puts "Yo, this is #{number1} and #{number2}, and I am the yield."}


car_maker = ["Honda" , "Toyota" , "Ford", "Tesla", "Saturn", "Nissan", "Lamborghini", "Chevrolet"]
puts car_maker

car_maker.each do |maker| 
    
    puts "This is a car model named #{maker}." 
end

car_maker.map! do |maker|
    maker.upcase
end

puts car_maker


car_make_model = { "Honda" => "Civic" , "Toyota" => "Prius" , "Ford" => "F-150", "Tesla" => "Model3", 
"Saturn" => "Psi", "Lamborghini" => "Veneno Roadster", "Chevrolet" => "Impala" }
puts car_make_model

car_make_model.each do |maker, model| 
    
    puts "This is a car model named #{maker} and its model is #{model}." 
end

car_maker.delete_if { |maker| maker.length <= 4}
p car_maker

car_maker.keep_if { |maker| maker.length >= 6}
p car_maker

car_maker.select! {|maker| maker.include? "A"}
p car_maker

car_maker.map!.take_while { |maker| maker.length == 6}
p car_maker

car_make_model.delete_if {|make, model| model.include? "C"}
p car_make_model

car_make_model.keep_if {|make, model| model.length > 4}
p car_make_model

car_make_model.select! {|make, model| model.length > 5}
p car_make_model

car_make_model = { "Honda" => "Civic" , "Toyota" => "Prius" , "Ford" => "F-150", "Tesla" => "Model3", 
"Saturn" => "Psi", "Lamborghini" => "Veneno Roadster", "Chevrolet" => "Impala" }

car_make_model.reject! {|make, model| model.include? "i" }
p car_make_model