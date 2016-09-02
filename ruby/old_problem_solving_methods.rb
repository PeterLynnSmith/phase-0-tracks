# release 0

def search_array(array, num_in_array)
  counter = 0
  result = 0
  
  array.each do
    if array.include?(num_in_array)
      result = counter
    else 
      return nil
    end
    counter += 1
  end
  return result
end 

array = [42,89,23,1]
puts search_array(array, 1)
# => 3
puts  search_array(array, 24)
#=> nil

# release 1
# def fib(num)
#   first = 0
#   second = 1
#   sequence = []
  
#   num.times do
#     keep_first = first
#     first = second
#     second = keep_first + second
#     sequence << keep_first  
#   end
#   return sequence
# end

# puts fib(3).inspect
# puts fib(100).inspect

# #verify that fib(100) is == to 218922995834555169026

# if fib(100).include?(218922995834555169026)
# 	puts true
# else
# 	puts false
# end

=begin
release 3
1. Researching the bubble sort
2. Form a conceptual understanding of how the algorithm works. 
  What helps you grasp it? Do visualizations help? 
  How can you find the right materials for yourself?

  Paula - Found a general bubble_sort template and ran each line separately
   just to get a closer look at what it's actually doing. I definitely need to see
   it in order to understand what is going on, especially being a visual person. Actually
   even before all that I looked at the bubble_sort and just guessed what each line would
   and then run it to see if what I thought was correct. Then ran each line separately.
  
   Peter - This algorithm goes through an array, adjacent pair by adjacent pair, determining if 
   one part of a pair is bigger than the other and then adjusting them by size. It "bubbles"
   the smaller one to the front of the array. It helps me to not over-think the algorithm and to 
   see the logic that if one array index value is bigger than the one that is (+1) one higher than it,
   that they should be switched. I'm not sure what "visualizations" are but simply looking at the
   algorithm methodically is the best plan of attack for me in this particular situation.

3. Notice your emotional state as you tackle this algorithm: do you feel frustrated, 
    underqualified, stupid, or overwhelmed? Or is it more like excitement and curiosity? 
    How do you think these feelings affect your ability to learn?

    Paula - I personally felt quite curious as I felt that to swap array values
    to another array values would be much simpler, also when I first saw the method 
    I thought it looked more complicated but after talking it out, it makes a lot of
    sense as to what it is doing. I should probably write out what the method is doing
    so that I understand what's going on much easier and if there is a part I don't 
    understand it would be easier to look up. 

    
    Peter - I have been trying to learn a lot over the last few weeks and have felt stupid 
    and underqualified plenty of times but for some reason when I look at this it makes 
    a lot of sense. I think these feelings over the last few weeks have made it hard to learn
    but right now I am feeling very accepting of new things and seeing this code is surprisingly 
    easy to digest.

4. pseudocode the bubble sort method
    #bubble_sort method has one parameter that takes an array
      #define a variable and make it equal to the length of the array
      #create a loop 
          #define the variable sort and make it equal to the boolean value of false
          #length of the array minus 1 and will loop that many times
          #if the array value of one index is less than the array value of the adjacent index...
          #then those array indexes will swap.
          #change the sort boolean value to true to adjust how things were to how things are now.
          #if the array values did not swap then stop the loop
          #return the array
=end

# def bubble_sort(array)
#   array_length = array.length
#   loop do
#     sort = false

#     (array_length -1).times do |num|
#       if array[num] > array[num+1]
#         array[num], array[num+1] = array[num+1], array[num]
#         sort = true
#       end
#     end

#     break if not sort
#   end

#   array
# end


# random_numbers = [9, 3, 7, 1, 6, 4, 8]

# puts bubble_sort(random_numbers)




