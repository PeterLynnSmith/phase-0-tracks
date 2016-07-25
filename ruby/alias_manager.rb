puts "What name would you like an alias for?"
	real_name = gets.chomp.chars
real_name.map! { |letter| letter.next }

p real_name