class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(times)
  	puts "Woof" * times
  end

  def roll_over
  	puts "rolls over"
  end

  def dog_years(years)
  	years * 10.5
  end

  def human_talk
  	puts "How do you do, human?"
  end

  def initialize
  	p "Initializing new puppy instance ..."
  end

end

#driver code
a = Puppy.new
a.fetch("ball")

a.speak(4)

a.roll_over

puts a.dog_years(3)

a.human_talk