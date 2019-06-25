puts "Hello, World"
puts ""
# STRING 
puts "String Tests"
print "1,2,3,4,5,6,7"

# put adds a new line
puts "1,2,3,4,5,6,7,8,9"

# puts then print
puts "a,b,c,d,e,f"

print "g,h,i,j,k"
puts ""

# INTEGER
puts "Integer Tests"
x = 1
puts x # puts value of x which is 1
puts x.class # Integer, will output integer
puts ""
y1 = "7"
puts y1.class
puts y1
puts ""
word = "hello"
puts word
puts word.class # String
puts ""

# FLOAT
puts "Float Test"
x = 1.2
puts x
puts x.class

#ARRAYS
# 0 based listing meaning the first item counts as 0
# can be both integers and strings, any object
puts ""
puts "Arrays"
arrayTest = [0,1,"dfadsa"]
puts arrayTest[3]
puts arrayTest.class

# Hash
puts ""
puts "Hash"
hashTest = { A: 2, B: 3, C: 1}
puts hashTest
puts hashTest.class
puts hashTest[:A]

# Assignments
puts ""
puts "Assignments"
# assignments are read RIGHT to LEFT
# the value of 5 is assigned to the variable named x

puts ""
# the value of 1 is assigned to the variable named x
x = 1
y = nil # nil is undeclared, not zero nor a string
puts "x=#{x}", "y=#{y}" # example different way to put
# the value stored in x(1) is assigned to y
# note: this does not mean that x and y will always
# store the same value
y = x
puts "x=#{x}", "y=#{y}"
# the value of 3 is assigned to the variable named x
x = 3
# below is an example of string interpolation
puts "x=#{x}", "y=#{y}"
print x,y
# note: y still hold the value of 1
puts ""

puts ""
# the value of "Rosa" is assigned to the variable named dog_name
dog_name = "Rosa"
puts dog_name
# the value of "Raquel" is assigned to the variable named cat_name
cat_name = "Raquel"
puts cat_name
# the value of 7 is assigned to the variable named dog_age
dog_age  = 7
puts dog_age
# the value of 11 is assigned to the variable named cat_age
cat_age  = 11
puts cat_age

puts ""
puts "Compound Assignment Statements"
x = 10
y = 5
puts "x=#{x}", "y=#{y}"
x += 3 # assigns the value of x + 3 to the variable x
       # x = x + 3
puts "x=#{x}", "y=#{y}"
x += y + 3 # assigns the value of x + (y + 3) to the variable x
puts "x=#{x}", "y=#{y}"
x -= 2 # assigns the value of x – 2 to the variable x
puts "x=#{x}", "y=#{y}"
x -= y - 5 # assigns the value of x – (y – 5) to the variable x
puts "x=#{x}", "y=#{y}"
x /= 3 # assigns the value of x / 3 to the variable x
puts "x=#{x}", "y=#{y}"
x *= y # assigns the value of x * y to the variable x
puts "x=#{x}", "y=#{y}"
x %= y # assigns the value of x % y to the variable x
puts "x=#{x}", "y=#{y}"

# puts ""
# puts "Keyboard Inputs"
# # tested this in terminal
# puts "Version 1.1"
# # Print to the terminal asking the user to enter their name
# puts "What's your name?"
# # Let's say that the user entered "Ada Lovelace"
# # The value of "Ada Lovelace/n" gets stored in the variable user_input
# user_input = gets
# puts user_input
# # The value of "Ada Lovelace" gets stored in the variable name
# name = user_input.chomp
# puts name

# puts ""
# puts "Version 1.2"
# # Print to the terminal asking the user to enter their name
# puts "What's your name?"
# # Let's say that the user entered "Ada Lovelace"
# # The value of "Ada Lovelace" gets stored in the variable name
# name = gets.chomp
# puts name

puts ""
puts "Converting user input"
puts "to_i" #converts to INTEGER
puts "2".to_i # prints 2
puts "2a".to_i  # prints 2
puts "a2".to_i  # prints 0
puts "a".to_i # prints 0

puts ""
puts "to_f" # converts to a FLOAT
puts "2.1".to_f   # prints 2.1
puts "2.1a".to_f  # prints 2.1
puts "2a".to_f    # prints 2.0
puts "a2.0".to_f  # prints 0.0
puts "a".to_f   # prints 0.0

puts ""
puts "String Commands"
testString = "charlie"
puts testString
puts testString.class
puts testString.length
puts testString.reverse

a = "an"
b = "sn"
puts b
# b.concat(b)
b.concat(b, b, a)    #=> "snsnsn"
puts b.chars


puts ""
puts "Escape Sequences"
# Escape sequences can be used with double quotes
# using \\ tells ruby that the "" are part of the string variable
str = "hello \"person\"" 
puts str # prints hello "person"

# Escape sequences cannot be used with single quotes
str = "hello \nworld"
puts str # prints hello \nworld

puts ""
puts "String Concatenation"
puts "Version 1 with + operator (SLOW)"
output = ""
puts output
# generate a random number between 2 and 5, both inclusive
my_number = rand(2..5)
puts my_number
output += my_number.to_s # output = output + my_number.to_s
puts output
output += " 1 "
puts output
# generate a random number between 6 and 9, both inclusive
your_number = rand(6..9)
output += your_number.to_s # output = output + your_number.to_s

puts output

puts "Version 2 with << operator (FAST)"
output = "s"
# generate a random number between 2 and 5, both inclusive
my_number = rand(2..5)
output << my_number.to_s

output << "f"

# generate a random number between 6 and 9, both inclusive
your_number = rand(6..9)
output << your_number.to_s

puts output

puts ""
puts "another example"
city = "seattle"
state = "washington"
# Seattle, Washington
city = city.capitalize #reassigning "Seattle" back to city
puts city
state = state.capitalize
puts state
output = city + ", "+ state
puts output

puts ""
puts "Slice more String stuff"
name = "Ada Lovelace"
       #012345678901
puts name[0]
puts name.slice(5) # "o"
puts name.slice(20) # nil
puts name.slice(0, 1) # "A"
puts name.slice(0, 3) # "Ada"
puts name.slice(4, 3) # "Lov"
puts name.slice(0...8) # "Ada Love"
puts name.slice("ace") # "ace"
puts name.slice("Seattle") # nil

puts ""
puts "Split more String stuff"
cityState = "Seattle, Washinton"
puts cityState
arrayCitystate = cityState.split(", ")
city = arrayCitystate[0]
state = arrayCitystate[1]
puts city, state
# city  = Seattle,  state = Washington
