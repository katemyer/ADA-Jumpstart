# Ask the user how much money they have, assume that the $ symbol is part of the prompt (the user doesn't have to enter it)
puts "Welcome to the Candy Machine Lesson 10."
print "How much money do you have to spend?:$"
user_money = gets.chomp.to_f

#check to make sure it's a positive number
while user_money <= 0.0
  puts "Invalid input. Try again."
  print "How much money do you have to spend?:$"
  user_money = gets.chomp.to_f
end

# Display all candy options and their costs (even if the user cannot afford the candy)

puts "Great! Here are your candy choices:"

candy_choices = {
  "A" => {"price" => 0.65, "brand" => "Twix"},
  "B" => {"price" => 0.50, "brand" => "Chips"},
  "C" => {"price" => 0.75, "brand" => "Nutter Butter"},
  "D" => {"price" => 0.65, "brand" => "Peanut Buttercup"},
  "E" => {"price" => 0.55, "brand" => "Juicy Fruit Gum"}
}

puts candy_choices["A"]["price"]
puts candy_choices["A"]["brand"]

#version 1 for displaying candy choices
# puts "A #{candy_choices["A"]["price"]} #{ candy_choices["A"]["brand"]}"
# puts "B #{candy_choices["B"]["price"]} #{ candy_choices["B"]["brand"]}"
# puts "C #{candy_choices["C"]["price"]} #{ candy_choices["C"]["brand"]}"
# puts "D #{candy_choices["D"]["price"]} #{ candy_choices["D"]["brand"]}"
# puts "E #{candy_choices["E"]["price"]} #{ candy_choices["E"]["brand"]}"

#version 2-more efficient
candy_choices.each do |key, value|
 puts "#{key}: $#{value["price"]} #{value["brand"]}"
end


# Decide whether the user can afford the candy or not, if they can't, tell them so, if they can, calculate and display their change
# [Optional] Handle when the buyer enters "C" or "c" so that it works

puts "Pick one"
user_candychoice = gets.chomp.capitalize

#check to make sure it's a valid candy selection
# [Optional] Do something appropriate when the buyer enters an invalid amount for the money and an invalid selection
while (candy_choices[user_candychoice] == nil) 
  puts "Invalid input. Try again."
  user_candychoice = gets.chomp.capitalize
end

puts "calculate change"
if user_money < candy_choices[user_candychoice]["price"]
  puts "Not enough money."
elsif user_money > candy_choices[user_candychoice]["price"]
  user_change = user_money - candy_choices[user_candychoice]["price"]
  puts "Delicious. Here's your change $#{user_change}."
else user_money == candy_choices[user_candychoice]["price"]
  puts "No change."
end

puts "more efficient version of change calculation"
if user_money < candy_choices[user_candychoice]["price"]
  puts "Not enough money."
else # user_money >= candy_choices[user_candychoice]["price"]
  user_change = user_money - candy_choices[user_candychoice]["price"]
  puts "Delicious. Here's your change $#{user_change}."
end