# Do the following three times:
# Ask the user to input a positive integer value
# If the number is greater than or equal to 20, display a message to share so and a different message otherwise.
# Example output:
# Note: User input is indicated in ~~ (tildes).
#    This program will ask you to enter numbers and share if the number is less than 20.
#    Enter the 1st number: ~34~
#    34 is greater than or equal to 20.
#    Enter the 2nd number: ~20~
#    20 is greater than or equal to 20.
#    Enter the 3rd number: ~12~
#    12 is less than 20.


puts "This program will ask you to enter numbers and share if the number is less than 20."
puts "Enter the 1st number:"
number1 = gets.chomp.to_i
if number1 == 20
    puts "#{number1} is equal to 20."
elsif number1 > 20
    puts "#{number1} is greater than or equal to 20."
else
    puts "#{number1} is less than 20."
end

puts "Enter the 2nd number:"
number1 = gets.chomp.to_i
if number1 == 20
    puts "#{number1} is equal to 20."
elsif number1 > 20
    puts "#{number1} is greater than or equal to 20."
else
    puts "#{number1} is less than 20."
end

puts "Enter the 3rd number:"
number1 = gets.chomp.to_i
if number1 == 20
    puts "#{number1} is equal to 20."
elsif number1 > 20
    puts "#{number1} is greater than or equal to 20."
else
    puts "#{number1} is less than 20."
end