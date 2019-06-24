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
y = "7"
puts y.class
puts y
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