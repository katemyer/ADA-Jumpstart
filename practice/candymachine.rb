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


puts "Welcome to Ada Developers Academy's Computer Candy Machine!"
print "How much money do ya got?"
money = gets.chomp.to_f

puts "#{money}, that's all?"
print "Well, lemme tell ya what we got here."

# letter1 = "A $0.65 Twix"
# letter2 = "B $0.50 Chips"
# letter3 = "C $0.75 Nutter Butter"
# letter4 = "D $0.65 Peanut Butter Cup"
# letter5 = "E $0.55 Juicy Fruit Gum"

puts ""
puts "Today's Selections"
puts "A $0.65 Twix"
puts "B $0.50 Chips"
puts "C $0.75 Nutter Butter"
puts "D $0.65 Peanut Butter Cup"
puts "E $0.55 Juicy Fruit Gum"


puts "So, What'll ya have?"
letter1 = gets.chomp
if letter1 == "a" || letter1 == "A"
    if money >= 0.65 
        change = money - 0.65
        puts "Enjoy your Twix! Your change is #{change}"
    else
        puts "You don't have enough money."
    end

elsif letter1 == "b" || letter1 == "B"
    if money >= 0.50
        change = money - 0.50
        puts "Enjoy your chips! Your change is #{change}"
    else
        puts "Sucks to be you."
    end

elsif letter1 == "c" || letter1 == "C"
    if money >= 0.75
        change = money - 0.75
        puts "Nutter Butter! Your change is #{change}"
    else
         puts "Too bad. So sad." 
    end

elseif letter1 == "d" || letter1 == "D"
    if money >= 0.65
        change = money - 0.65
        puts "Peanut Better Jelly Peanut Butter! Your change is #{change}"
    else
        puts "Don't be Jelly!"

elseif letter1 == "e" || letter1 == "E"
    if money >= 0.55
        change = money - 0.55
        puts "Juicy Fruit is gonna move ya! Your change is #{change}"
    else
        puts "Another sticky situation, ey?" 
    end
end