Data Types Practice Worksheet
Record the answers to this worksheet in any file or on a piece of paper. This worksheet will not be turned in, so it does not need to be in a specific format. This worksheet will be reviewed on its due date.

Ruby Operations on Basic Data Types
Without putting the code into a Ruby script or IRB, predict the output and data type of the following:

Value ____32______ Data Type: ____integer_____

num = 27
num = num + 5
num

Value ______6____ Data Type: _____integer____

num = 2
num = num + num + 2
num

Value ____"8"______ Data Type: ___string______

num = "4"
num = num + num
num

Value ____dinosaur astronaut______ Data Type: __string_______

cool_thing = "dinosaur"
awesome_thing = "astronaut"
rad_thing = cool_thing + " " + awesome_thing
rad_thing

Value ____8______ Data Type: __int_______

num = 2
num = num * num
num = num * num
num

Value _____0_____ Data Type: ____int_____

num = 27
answer = num % 3
answer

Value ____12______ Data Type: ____int_____

num = 100
num = num / 2
num = num / 2
num = num / 2
num

Value ___12.5_______ Data Type: ___float______

num = 100.0
num = num / 2
num = num / 2
num = num / 2
num

Value ____6.5______ Data Type: ___float______

num = 5.0
num = num * 2 + 3
num = num / 2

Value ____dan______ Data Type: __symbol_______

answer = :dan
answer

Value _"Pikachu", "Bulbasaur", "Squirtle", "Charizard"_ Data Type: ___array______

list = ["Pikachu", "Bulbasaur", "Squirtle", "Charizard"]
list

Value ___"Charizard"_______ Data Type: __array_______

list = ["Pikachu", "Bulbasaur", "Squirtle", "Charizard"]
list[3]

Value __"Bulbasaur"________ Data Type: ___array______

list = ["Pikachu", "Bulbasaur", "Squirtle", "Charizard"]
list[1]

Value _____3_____ Data Type: ___array______

list = ["Pikachu", "Bulbasaur", "Squirtle", "Charizard"]
list.length

Value ___"Pikachu"_______ Data Type: ___array______

list = ["Pikachu", "Bulbasaur", "Squirtle", "Charizard"]
list.first

Value ___nil_______ Data Type: ____array_____

list = ["Pikachu", "Bulbasaur", "Squirtle", "Charizard"]
list[4]

Value ___"Charizard"_______ Data Type: ____array_____

list = ["Pikachu", "Bulbasaur", "Squirtle", "Charizard"]
list[-1]

Value __name________ Data Type: ___hash key______

pikachu = {
  name: "Pikachu",
  type: :electric,
  species: "Mouse Pokemon",
  height: 0.41,
  weight: 6.0,
  id: 25
}
pikachu

Value ___"Pikachu"_______ Data Type: __hash value string_______

pikachu = {
  name: "Pikachu",
  type: :electric,
  species: "Mouse Pokemon",
  height: 0.41,
  weight: 6.0,
  id: 25
}
pikachu[:name]

Value ___25_______ Data Type: ___hash value integer______

pikachu = {
  name: "Pikachu",
  type: :electric,
  species: "Mouse Pokemon",
  height: 0.41,
  weight: 6.0,
  id: 25
}
pikachu[:id]




Comprehension Questions
Given a variable list which is an array:
How would you print the last element of the array? 

# puts array.last or puts array[array.length-1]

How about the first?
# puts array[0] because arrays are 0 based

Compare and contrast arrays and hashes. How are they similar, and how do they differ?
# arrays [] is a list of elements. the elements can be any kind of data type. 
# hashes {} are key:pair values. the key needs to be unique. the values can be any data type. 
# they are similar in that they are objects, so you can store then in a variable. both can start off as empty.
