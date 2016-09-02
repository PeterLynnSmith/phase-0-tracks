#RELEASE 0

# def search_array(arr, looking_for)
# 	counter = 0
# 	arr.each do	|i|
# 		if i == looking_for then
# 			p counter
# 		else
			
# 		end
# 		counter = counter + 1
# 	end

# end

# arr = [1,2,3,4,5]
# p search_array(arr, 4)

#RELEASE 1
												
# def fib(num)
# 	array = [0,1]
# 	(num-2).times do
# 		new_array = array.last(2)
# 		num1 = new_array.at(0)
# 		num2 = new_array.at(1)
# 		array << num1 + num2
# 	end
# 		p array 
# end
# fib(100)

#RELEASE 2
# DO THE THING
# 1. researched bubble sort
# 2. I understand how the algorithm works by following the logic
	#through the algorithm. It isn't as confusing as the fibonacci one.
	#however, I did have to look back at the original bubble sort when 
	#trying to make my own because I couln't get it to work. It seems I didn't
	#understand it as well as I thought. For me a visualization is just 
	#following the algorithm with my finger and making sure I know what it's doing
# 3. I feel very depressed already to tell that is because I am confused or not. 
	#I do feel confused at first, it seems that I only fully grasp the original 
	#version of bubble sort when I try to make it on my own and can't come up with it.
	#I think the depression definitely works against me and discourages me. 
# 4. & 5. Pseudocode and implementation is below.
 
#make your sort array method
def bubble_sort(array)
	#make a variable for the length of the array
	n = array.length
	#loop through each element of the array 
	loop do |i|
		#establish a way to break the loop
		swapped = false
		#because we are using pairs of numbers, we want one less
		#than the length of the array, then DO THIS that many times
		(n-1).times do |i|
			#if the array integer is less than the one to its right,
			#switch them and move to the next integer in the array
			if array[i] > array[i+1]
				array[i], array[i+1] = array[i+1], array[i]
				swapped = true
			end
		end
		#once the numbers are not switching then swapped is not true
		#and the loop breaks
		break if not swapped
	end
	p array
end
test_array = [5,10,1,2,3,20,7]
bubble_sort(test_array)





