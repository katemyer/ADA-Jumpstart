# Ask the user for the count of numbers.
# Do the following count number of times:
# Ask the user to input a positive integer value
# If the number is divisible by 3, display a message to share so and a different message otherwise.
# Once you have a working program, refactor your code to use a different type of loop. e.g. if you used a while loop to begin with, change it to an times loop with iteration variable.
# Example output:
# Note: User input is indicated in ~~ (tildes).
#    Let's play a numbers game. How many numbers would you like to enter?
#    ~5~
#    Enter the 1st positive integer: ~34~
#    34 is not divisible by 3.
#    Enter the 2nd positive integer: ~21~
#    21 is divisible by 3.
#    Enter the 3rd positive integer: ~12~
#    12 is divisible by 3.
#    Enter the 4th positive integer: ~582~
#    582 is divisible by 3.
#    Enter the 5th positive integer: ~80~
#    80 is not divisible by 3.

puts "Let\'s play a numbers game. Enter a number."
user_input_number = gets.chomp.to_i

#error check in case they put an invalid number
while user_input_number == 0
  puts "Enter a valid number"
  user_input_number = gets.chomp.to_i
end
puts "Your number is #{user_input_number}"


#display the prompt 4 times
#if i=0, then zero based and last number isn't included, use <
#if=1, then need to do <= to include last num but stops the loop
ordinal_hash = 
{1 => 'st', 2 => 'nd', 3 => 'rd', 4 => 'th', 5 => 'th', 6 => 'th', 7 => 'th', 8 => 'th', 9 => 'th', 0 => 'th'}
# puts ordinal_hash[1] #accessing value in hash
# puts ordinal_hash[2]
# puts ordinal_hash[3]
# puts ordinal_hash[4]
# puts ordinal_hash[5]


#WHILE LOOP
puts "WHILE LOOP HERE"
#i is a starting place in our loop.
i = 1 
while i <= user_input_number # loop is executed while value of loop control variable is less than 4
  #puts "The number is #{i}"
  #try to add st,nd,rd,th. 
  #you can add multiple #{} to one line
  #string interpolation #{} reads the code
  #puts "ordinal_hash[i]"= displays exactly whats in the quotes
  #puts "#{ordinal_hash[i]}"= displays the value we set, value inside bracket is what we are trying to access
  
  puts i #1
  puts i + i #2
  puts i.to_s + i.to_s #11
  puts "Enter the " + " 1" + "st" +" positive integer:"
  puts "Enter the " + i.to_s + ordinal_hash[i] +" positive integer:"
  puts "Enter the #{i}#{ordinal_hash[i]} positive integer:"
  
  user_input_actual = gets.chomp
  user_input_nextnum = user_input_actual.to_i

    while (user_input_nextnum == 0) && (user_input_actual != '0')
      puts "Enter a valid number"
      user_input_nextnum = gets.chomp.to_i
    end

  if user_input_nextnum % 3 == 0
   puts "#{user_input_nextnum} is divisible by 3."
  else #all other conditions 
   puts "#{user_input_nextnum} is not divisible by 3."
  end
    
  i += 1 #incremental value of the loop
end

# #Times loop - no iteration
# user_input_number.times do 
#   puts "hello! "
# end

#Times Loop - with iteration
puts "TIMES LOOP HERE"
user_input_number.times do |i|
  puts "Enter the #{i+1} positive integer:"
  user_input_nextnum = gets.chomp.to_i
    while user_input_nextnum == 0
      puts "Enter a valid number"
      user_input_nextnum = gets.chomp.to_i
    end

  if user_input_nextnum % 3 == 0
   puts "#{user_input_nextnum} is divisible by 3."
  else #all other conditions 
   puts "#{user_input_nextnum} is not divisible by 3."
  end
    
  #i += 1 #increment the value of loop control variable by 1
end