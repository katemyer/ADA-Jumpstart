# puts "enter a number"
# your_number = gets.chomp.to_i

your_number_hash = 
{1 => "one", 
  2 => "two", 
  3 => "three", 
  4 => "four", 
  5 => "five", 
  6 => "six", 
  7 => "seven", 
  8 => "eight",
  9 => "nine", 
  10 => "ten"}
# test = "blah"
# a = 1
# b = 2
# a == b
puts "START"
test1 = "" #initialized to "" empty string
test2  = nil    #initialized to nil



puts test1
puts test2

puts "Done"
# i = 0 #start
# while i <= 10 #condition. if true, enters loop. if false, ends.
#   puts i #code
#   i = i + 1 #breaks code
# end #end

puts "enter number"
user_input = gets.chomp.to_i #"I AM A STRING Object".to_i (method = function) results in 0
#while  user_input <=0 && user_input !=0
#if user puts a letter, it will return 0.
#nil is empty/none but not value 0
#when input is string, it's not a valid number 0 is returned.
puts user_input
puts "is #{user_input} < 0:" + (user_input < 0).to_s #condition is in (). is true or false.
while  user_input < 0 
  puts "enter valid int"
  user_input = gets.chomp.to_i
end
