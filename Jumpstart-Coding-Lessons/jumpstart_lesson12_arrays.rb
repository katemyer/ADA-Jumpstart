# Ask the user for the count of numbers.
puts "Let's play a numbers game! \n Enter how many times you want to play."
user_input_number_of_plays = gets.chomp.to_i

#check for valid number entry, loop until valid
while user_input_number_of_plays < 1 #if TRUE that user entered a 0 or negative number, then enter loop. 0 <1, true. a <1 true. enter loop.
  puts "Enter a valid number."
  user_input_number_of_plays = gets.chomp.to_i
end

puts "Your number is #{user_input_number_of_plays}"

#put ordinal hash here to set for "1st integer" string
#remember to use the '' bc attaching string to int
#extra notes: 
#puts "ordinal_hash[i]"= displays exactly whats in the quotes
  #puts "#{ordinal_hash[i]}"= displays the value we set, value inside bracket is what we are trying to access

ordinal_hash = {1 => 'st', 2 => 'nd', 3 => 'rd', 4 => 'th', 5 => 'th', 6 => 'th', 7 => 'th', 8 => 'th', 9 => 'th', 0 => 'th'}

# Create an array to hold the numbers that the user entered. If user enters a valid number then enter it into an array. 

#puts "ARRAY STARTS HERE"
#set up the array first
array_of_ints = []
#puts array_of_ints.empty? 
#puts array_of_ints.length

puts ""

puts "PERSON'S NUMBERS STARTS HERE"
#WHILE STARTS HERE for user input of first integer
# Do the following count number of times:
i = 1 #starting place

# Ask the user to input a positive integer value
# Save the user input as an integer value into the next location in the array.

while i <= user_input_number_of_plays #loop is executed while value of loop control variable is less than user_input_number

  puts "Enter the #{i}#{ordinal_hash[i]} positive integer:" #string "enter 1 st pos int"
  user_input_pos_int = gets.chomp.to_i

  while user_input_pos_int < 1 #IF integer is 0, true, enter loop. IF int is a string, true, enter loop.
    puts "Enter a valid number"
    user_input_pos_int = gets.chomp.to_i #next set of numbes gets converted to an integer
  end
  
  i += 1 #incremental value for the loop

#adding user input (aka element) into the array. currently there's nothing in the array. the .push adds elements to the end
  array_of_ints.push(user_input_pos_int)

end

puts ""
#puts "Here's the array"
print array_of_ints
puts ""


#Go through each value in the array and compare each value to the last number entered by the user. Based on the comparison print the following:
# If the value in the array is LESS THAN < the value of the last number entered, print to the terminal that the value at that index is less than the value at the last index.
# If the value in the array is GREATER THAN > the value of the last number entered, print to the terminal that the value at that index is greater than the value at the last index.
# If the value in the array is EQUAL TO == the value of the last number entered, print to the terminal that the value at that index is equal to the value at the last index.

# print "COMPARISON HERE"

# array_of_ints[array_of_ints.length-1] same as .last
#.length - 1 = because zero based
array_of_ints.last

puts "Comparing to the last value entered, #{array_of_ints.last}, here are the observations:"

min = array_of_ints.first #aka array_of_ints[0]
max = array_of_ints.first
total = 0

#LOOP STARTS HERE
# puts "Display Array Value"
#go through each value in array to compare
array_of_ints.each_with_index do |a_integer, index|
  #puts a_integer

  #comparing a_integer to array_of_ints.last
  #less than

  puts ""

  # if a_integer < array_of_ints.last
  #   puts "The value at index #{index}, #{a_integer} is less than value at the last index, #{array_of_ints.last}."
  # end

  # #greater than
  # if a_integer > array_of_ints.last
  #   puts "The value at index #{index}, #{a_integer} is greater than value at the last index, #{array_of_ints.last}."
  # end

  # #equal to
  # if a_integer == array_of_ints.last
  # puts "The value at index #{index}, #{a_integer} is equal to the value at the last index, #{array_of_ints.last}."
  # end  
  
#generally, put the most likely if statement first, then anomalies towards the end. 
#this code is the same as above, but more efficient.
#reads as: if first num less than last, if true, print. if false, go to elsif, etc.

  if a_integer > array_of_ints.last
    puts "The value at index #{index}, #{a_integer} is greater than value at the last index, #{array_of_ints.last}."
  elsif a_integer < array_of_ints.last
    puts "The value at index #{index}, #{a_integer} is less than value at the last index, #{array_of_ints.last}."
  else #if it's not < > then it's equal to. 
    puts "The value at index #{index}, #{a_integer} is equal to the value at the last index, #{array_of_ints.last}."
  end

puts a_integer

  if a_integer < min #14 < 95
    min = a_integer #14 is the new min. read right to left
  end

  if a_integer > max 
    max = a_integer #the integer is the new max
  end

#total array_of_ints[0] + array_of_ints[1] + ...array_of_ints[array_of_ints.length-1]
  total = total + a_integer
end

puts ""

mean = total.to_f / array_of_ints.length #or add a .0 to the number to get a float

puts "The minimum value in the array is #{min}."
puts "The maximum value in the array is #{max}."
puts "The total is #{total}."
puts "The average is #{mean}."