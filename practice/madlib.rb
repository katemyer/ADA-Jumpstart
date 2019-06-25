# First play a few on eduplace to become familiar with the game

# Create a MadLib program that accepts input from the user and outputs a completed MadLib

# Use up to ten different parts of speech in order to fill in your MadLib

# Output should consist of a paragraph of output that has the user’s input substituted into the MadLib, we have provided an example run, but your MadLib program should be unique to you

# Welcome to my MadLib program. Please enter in some information below:

# name: Starrx
# adjective: hugex
# noun: tablecloth x
# adjective: dryx
# food (plural): tacos
# noun (plural): packs
# verb ending in -ed: ended
# noun: jellyfish

# HERE'S YOUR MADLIB.......

# Come on over to Starr’s Pizza Parlor where you can enjoy your favorite huge-dish pizza`s.
# You can try our famous tablecloth-lovers pizza,
# or select from our list of dry toppings,
# including delicious tacos, packs, and many more.
# Our crusts are hand-ended and basted in jellyfish to make
# them seem more Hand-made.
# Your code should use comments throughout to explain the code, reuse at least one word, and ask for at least 1 number

# Explore Ruby's built in methods for String like capitalize, downcase, upcase

# Have a welcome message and instructions for what person will need to do
puts "Welcome to my MadLib program. Please enter in some information below:" 

# list of variables person needs to fill in

# name: Starr
puts "Enter a name"
name = gets.chomp
name = name.capitalize #steve to Steve

# adjective: huge
puts "Enter an adjective"
adj1 = gets.chomp.downcase #gets the info from user, chomps gets rid of \r \n, downcase lowercase


# noun: tablecloth
puts "Enter a noun"
noun1 = gets.chomp.downcase

# adding number
puts "Enter a number"
number = gets.chomp.to_i

# adjective: dry
puts "Enter another adjective"
adj2 = gets.chomp.downcase

# expanded example of line above
# adj3 = gets
# adj3 = adj3.chomp
# adj3 = adj3.downcase

# food (plural): tacos
puts "Enter a plural food item"
foods = gets.chomp.downcase

# noun (plural): packs
puts "Enter a plural noun"
nouns = gets.chomp.downcase

# verb ending in -ed: ended
puts "Enter verb ending in -ed"
verb = gets.chomp.downcase

# noun: jellyfish
puts "Enter a noun"
noun2 = gets.chomp.downcase

# go through madlib paragraph and replace variables with what person wrote in
puts "Come on over to #{name}’s Pizza Parlor where you can enjoy your favorite #{adj1}-dish pizza`s.\n"\
"You can try our famous #{noun1}-lovers pizza, or select from our list of #{number} #{adj2} toppings,\n"\
"including delicious #{foods}, #{nouns}, and many more. \n"\
"Our #{adj1} crusts are hand-#{verb} and basted in #{noun2} to make \n"\
"them seem more Hand-made.\n"

# Your code should use comments throughout to explain the code, reuse at least one word, and ask for at least 1 number

# display the final madlib
