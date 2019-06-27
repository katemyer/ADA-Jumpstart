# Ask the user how much money they have, assume that the $ symbol is part of the prompt (the user doesn't have to enter it)
# Display all candy options and their costs (even if the user cannot afford the candy)
# Decide whether the user can afford the candy or not, if they can't, tell them so, if they can, calculate and display their change
# [Optional] Handle when the buyer enters "C" or "c" so that it works as expected
# [Optional] Do something appropriate when the buyer enters an invalid amount for the money and an invalid selection
# Example output
# Welcome to Ada Developers Academy's Computer Candy Machine!
# (All candy provided is virtual.)

# How much money do ya got? > $1.00
# $1.00, that's all?
# Well, lemme tell ya what we got here.

# A $0.65 Twix
# B $0.50 Chips
# C $0.75 Nutter Butter
# D $0.65 Peanut Butter Cup
# E $0.55 Juicy Fruit Gum

# So, What'll ya have? > C

# Thanks for purchasing candy through us.
# Please take your candy, and your $0.25 change!

puts "Welcome to Ada Developers \nAcademy\'s Computer Candy Machine!"
puts ""
puts "How much money do ya got?"

#user inputs cash amont, make it a float
user_money = gets.chomp.to_f.round(2)

#put a check here to make sure it's a positive integer. set to float and round to 2

#use WHILE LOOP evaluates a boolean, True or False.
#while booloean is true where  <0, then enter loop
#if boolean is false where cash does not <0, then eit and moves on
#example below

# x = gets.chomp.to_i
# while x >= 0
#   puts x
#   x -= 1 # <- refactored this line
# end
# puts "Done!"

#use a WHILE statement
#if user inputs money less than 0 or words/letters, then please enter valid dollar
#otherwise end and displays next statement
#example below

# while !(number1.is_a? Integer and number1 > 0)
#    #prompt for user for new number
#     puts "Enter Another number!"
#     number1 = gets.chomp.to_i
# end

while user_money <= 0
  puts "Please enter a valid dollar amount:"
  user_money = gets.chomp.to_f.round(2)
end

#print prints one line at a time
print "\n$ #{user_money}" "\nThat\'s all? Let's take a look at the menu!\n"

puts ""

#display the items on the menu
#assign value (dollar) to key (A-E) in the hash 
#use HASH bc need to assign a value to the label (A-E) & order matters
#this is called the HASH MAP. use "key" => "value"

#usings single quote is literal, 'A' = a or A. not a string
candy_price_hash = 
{'A' => 0.65, 'B' => 0.50, 'C' => 0.75, 'D' => 0.65, 'E' => 0.55}

#now need to assign name of candy to key (A-E) with prices
#example: : hash = { bacon: "protein", apple: "fruit" }
#set the key to all uppercase in case user inputs lowercase

puts "~~~ADA's Candy Menu~~~~"
puts ""
##{} indicates order of operation, stuff inside{} gets eval first
# A twix = user_candy is the selection of A-E
# user candy price = A
puts "A Twix: $ #{candy_price_hash["A"]}" 
puts "B Chips: $ #{candy_price_hash["B"]}"
puts "C Nutter Butter: $ #{candy_price_hash["C"]}"
puts "D Peanut Butter Cup: $ #{candy_price_hash["D"]}"
puts "E Juicy Fruit: $ #{candy_price_hash["E"]}"
puts ""

#ask user to input their candy choice
puts "What will you have?"
user_candy = gets.chomp.capitalize # A B C D

#check that is a valid key enter ....loop command use WHILE to compare T/F
#comparing string boolean, need to use nil not 0
#user candy does not equal to right letter selection

while candy_price_hash[user_candy] == nil #candy price that user selected is not valid then enter loop below
  puts "Please enter a valid candy selection:"
  user_candy = gets.chomp.capitalize
end

#check that the user amount is more than the candy amount, otherwise end with your broke
#if user cash is more than amount the enter loop to gives the change, round to 2, and thank you msg
#user cash less than user candy AND candy price

#saving variables already selected
selected_price = candy_price_hash[user_candy]

if user_money < selected_price #if cash is less than price of candy
    puts "That's a no from me, dawg."
else #have enough money
    puts "Great choice! Here's your change $#{user_money - selected_price}!"
    puts "Come back soon!"
end