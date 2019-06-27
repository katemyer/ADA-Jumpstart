# Notes

# 07 Environment Setup

## Setting up Dev Environment

[link](https://stackoverflow.com/questions/51539711/how-to-debug-ruby-code-on-visual-studio-code)

## If the debugger does not run, in the launch.json need to add this

"cwd": "${workspaceRoot}",
"program": "${file}"

Restarting VSC helps

## PUTS Command

[link](https://www.codesdope.com/ruby-putsputsputs/)

command + / in VSC to comment a block of code

## STRING commands- 

[link](https://ruby-doc.org/core-2.4.0/String.html#method-i-reverse)

use double quotes "  instead of single quote ' for STRINGS

```ruby
# string interpolation can be used with double quotes
 puts "#{str}, world" # prints hello, world
 # string interpolation cannot be used with single quotes
 puts '#{str}, world' # prints #{str}, world
```


## Scripting vs Programming

## .chomp

chomp is the method to remove trailing new line character i.e. '\n' from the the string. whenever "gets" is use to take i/p from user it appends new line character i.e.'\n' in the end of the string.So to remove '\n' from the string 'chomp' is used. str = "Hello ruby\n" str = str.chomp. puts str.

# LEARNING TO CODE

## 08 Hello World
- History: Brian Kerningham (1974) Used as a sanity test to make sure the language is correctly installed
- Ruby IRB = interactive ruby
- .rb = extension to save file as a ruby file
- Puts = prints something to the screen and adds a new line at end of message.

Example: 123 456
- Prints = info will be on same line as your message

Example: 123456 

## 09 Comments, Data Types, Math Operators, Keyboard Inputs, Strings

<https://github.com/Ada-Developers-Academy/jump-start/tree/master/learning-to-code/grammar>
 <http://ruby.bastardsbook.com/chapters/strings/>
 - escape commands \ tells Ruby that the character after is a special character
    -- example: charlie \n's tells Ruby to take it literal "Charlie's" rather than thinking that 's is another string 

### Data Types

- Comments: # space

- STRING commands

[link](https://ruby-doc.org/core-2.4.0/String.html#method-i-reverse)

use double quotes "  instead of single quote ' for STRINGS

```ruby
# string interpolation can be used with double quotes
 puts "#{str}, world" # prints hello, world
 # string interpolation cannot be used with single quotes
 puts '#{str}, world' # prints #{str}, world
```

- Integer: number with no decimal 5

- Float: real number with decimal 0.5

- Array: ordered list [1,2,3]

- Symbol: :coffee

- Hash: set of values { A: 1, B: 5, C:7}

- Range: set of values with beginning and end (2,3,4,5,6)

- Data Type: use .class

### Keyboard INPUTS:

- Gets: short for gets string of whatever use enters
- Chomp: chomp removes newline character
- Puts: output a statement on the terminal, short for puts a string of output followed by newline character

### Converting USER INPUTS:
- gets to_i
- gets to_f

- Assignment statements are read RIGHT TO LEFT and uses the phrase ASSIGNS/STORES THE VALUE instead of equals/equals to
X = 5 
Dog_name = Charlie

Math Operators: +,-,*,/, % remainder
- Order of operations: pemdas

## 10 Rational operators, Logical Operators, Conditionals
## 11 Iterators
## 12 Arrays
## 13 Hashes

## Git Version Control and Github

-<https://codeburst.io/git-version-control-system-github-54f4c2755372>
-Git: lets group of people work on same document at the same time.
-Git version control: the version control keeps track of changes that the group made just like track changes in word document
-Github: cloud where gits are stored

## .class command
-<http://ruby.bastardsbook.com/chapters/strings/>
-typing charlie.class or 42.class will tell you what kind of class the item is. 
-- number, string "", float, etc.