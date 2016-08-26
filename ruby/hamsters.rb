puts "What is your hamster's name?"
    name = gets.chomp

puts "How loud is #{name} on a scale from one to ten?"
    volume = gets.chomp.to_i

puts "What color is their fur?"
    color = gets.chomp

puts "Do you think they're a good candidate for adoption? true/false"
    adoption = gets.chomp

puts "Estimated age? If unknown enter n/a"
    age = gets.chomp

puts "The hamster's name is #{name}, they're about a(n) #{volume} out of ten
on the noise scale. Their fur is #{color}."


if age == "n/a"
    age = nil
    puts "We don't know how old #{name} is"
else
    puts "#{name} is #{age} years old."
end

if adoption == "true"
    puts "#{name} is adoptable"
else adoption == "false"
    puts "#{name} is not adoptable"
end

