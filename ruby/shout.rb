# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end
#   def self.yell_happily(words)
#   	words + "!!!!!" + ":)"
#   end
# end

# puts Shout.yell_angrily("I hate being stressed about coding")
# puts Shout.yell_happily("I love coding when it works")
module Shout 
	def yell(words)
	puts words + "!!!"
	end
end

class Happy_Yell
	include Shout
end

class Angry_Yell
	include Shout
end

happy = Happy_Yell.new
happy.yell("Yayyyy")

sad = Angry_Yell.new
sad.yell("Nooooo")