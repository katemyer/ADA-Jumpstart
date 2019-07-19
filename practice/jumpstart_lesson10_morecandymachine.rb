puts "July 15, 2019"

# Ask the user how much money they have, assume that the $ symbol is part of the prompt (the user doesn't have to enter it)

puts "Mo Candy Machine"
print "How much money do you have? $"
yo_money = gets.chomp.to_f

#Loop until a valid entry has been entered -> while
while yo_money <= 0.00 
  puts "Homie don't play that, try again."
  yo_money = gets.chomp.to_f
end

puts "Baller. Let's see what $#{yo_money} gets you."


#the main candy hash (key) THEN you have another hash (value) for prices (key) and candy brands (value). 
# key candy = {
  # this while thing is the value to key candy ==>{key candy price, value candy brand}
  # }
key_candyhash = {}
key_candyhash = {
"A" => {"key_price" => 1.50, "value_brand" => "Snickers"},
"B" => {"key_price" => 0.75, "value_brand" => "Rolo"},
"C" => {"key_price" => 3.50, "value_brand" => "Fancy Chocolate"},
"D" => {"key_price" => 0.85, "value_brand" => "Starburst"},
"E" => {"key_price" => 2.35, "value_brand" => "Snickers"},
}

# Display all candy options and their costs (even if the user cannot afford the candy)
#this has to be a loop then so it goes through each candy and use #{}
key_candyhash.each do | key, value |
 #first part put exactly the key which is a-e and use #{}
 #second part is VALUE which is the entire second block. so VALUE accessing the first part which is key = key_price AND then second part is value = value_brand
  puts "#{key} $#{value["key_price"]} #{value["value_brand"]}"
end

# Decide whether the user can afford the candy or not, if they can't, tell them so, if they can, calculate and display their change
# [Optional] Handle when the buyer enters "C" or "c" so that it works as expected
puts "Pick something, bro."
yo_candy = gets.chomp.capitalize


# until they enter a valid entry, display the message. loop.
# [Optional] Do something appropriate when the buyer enters an invalid amount for the money and an invalid selection
#they are picking from the ACTUAL candy hash which is the key_candyhash and i need to access their selection which is yo_candy
while key_candyhash[yo_candy] == nil #when they pick outside the hash, so there's no key and value, it's nil
  puts "That's a no from me, dawg. Try again."
  yo_candy = gets.chomp.capitalize
end

#calculate their change. ONE TIME so it's an if statement
#if their money is less than their candy, then no change.
#if their money is more than their candy, then their money - their candy
#ACCESS THE PRICE OF THEIR SELECTION HERE which is "value" of the "value_brand"
if yo_money <= key_candyhash[yo_candy]["key_price"] #money is less than or equal to candy so no change will be given
  puts "Come back with more billz, yo."
else yo_money > key_candyhash[yo_candy]["key_price"]
  yo_change = yo_money - key_candyhash[yo_candy]["key_price"]
  puts "Enjoy, bro. Here's your change $#{yo_change}."
end