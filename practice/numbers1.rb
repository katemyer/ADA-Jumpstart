# Assignment 1: Numbers
# Do the following 3 times
# Ask the user to input a positive integer value
# Convert the user input to an integer and save the value in a variable.
# Add 20 to each of the three numbers
# Print this new value for each to the console. 
# The output should look like: "Twenty added to the numbers you entered gives us 24, 73 and 42.
name = "kate"
number1 = "123".to_i
number2 = "456"
number3 = "1"


puts "Welcome to the First Ever Numbers Game!"
puts "Enter your name"
# gets prompts user, saves to name as a string
# chomp cuts off \n, \r from string
name = gets.chomp

# display name
puts "Hey #{name}!" 

#Entering numbers
puts "Enter first number!"

# gets value from user
# chomp 
# to_i change to interger if not integer sets number1 to 0
number1 = gets.chomp.to_i

# Check if number is class integer
# puts x.class # Integer, will output integer
if number1.is_a? Integer and number1 >= 0
    puts "Great!" 
# Check if  postive number, 0 is ok
# if any check fails, tell user sorry incorrect input and move on
 else
    puts "This number is bad."
    # need to prompt user for another number until we get a good number
 end


# WHILE statement
while !(number1.is_a? Integer and number1 > 0)  do
   #prompt for user for new number
    puts "Enter Another number!"
    number1 = gets.chomp.to_i
end

puts "Enter second number!"
number2 = gets.chomp
puts "Enter third number!"
number3 = gets.chomp

# Arrays-listing numbers selected
puts "Here are the numbers you selected:"
output = ""
my_number = number1.to_s + ", "+ number2.to_s + ", "+ number3.to_s
puts my_number

#get the user numbers and convert to integers and add 20
puts "Twenty added to your numbers gives us:"
number1 = number1.to_i + 20
puts = number1.to_s
#puts number1
number2 = number2.to_i + 20
puts = number2.to_s
#puts number2
number3 = number3.to_i + 20
puts = number3.to_s
#puts number3

#array to 
nums = [number1, number2, number3]

nums.each do |num|
    #print num.to_s + ' '
    print "#{num} "
end

# Array = Array.new
# array = [number1, number2, number3]
# puts Array