## Info about Ruby, websites, pdfs

https://ruby.github.io/TryRuby/

http://ruby-for-beginners.rubymonstas.org/index.html


## Mark Down Notes

https://www.markdownguide.org/basic-syntax/

# Notes

OBJECT = some THING (car, house, animal)
CLASS = attributes or behaviors of an OBJECT (color, weight, model, blueprint of the house)
METHOD = object's behavior and this depends on the class
    -to call a method, use DOT
    - example: dog.color or dog.weight. Using dog.kind? will tell you the value (kind) of dog if the information is in the library of kind

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
    -- example: charlie \'s tells Ruby to take it literal "Charlie's" rather than thinking that 's is another string 
        -- puts "Charlie\'s favorite toy is a monkey." => Charlie's favorite toy is a monkey
    -- using /n*NO SPACE* literally moves the word to the next line
        --puts "Charlie\'s favorite \ntoy is \na \nmonkey'" 
            => Charlie's favorite
            toy is 
            a monkey

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

- shortcuts for hashes
<https://codeburst.io/ruby-shortcuts-pulling-info-from-hashes-values-keys-1d6ba0256b2d>

## Git Version Control and Github

-<https://codeburst.io/git-version-control-system-github-54f4c2755372>
-Git: lets group of people work on same document at the same time.
-Git version control: the version control keeps track of changes that the group made just like track changes in word document
-Github: cloud where gits are stored

## .class command
-<http://ruby.bastardsbook.com/chapters/strings/>
-typing charlie.class or 42.class will tell you what kind of class the item is. 
-- number, string "", float, etc.

# CSV references

http://jtrudell.github.io/blog/csv_files/

https://stackoverflow.com/questions/14199784/convert-csv-file-into-array-of-hashes

https://technicalpickles.com/posts/parsing-csv-with-ruby

# GitHub References
https://github.com/Ada-Developers-Academy/textbook-curriculum/blob/master/00-programming-fundamentals/git-diff-pull-and-merge.md

https://github.com/Ada-Developers-Academy/textbook-curriculum/blob/master/00-programming-fundamentals/managing-git-branches.md

https://github.com/Ada-Developers-Academy/textbook-curriculum/blob/master/00-programming-fundamentals/git-merge-conflicts.md

https://github.com/Ada-Developers-Academy/textbook-curriculum/blob/master/00-programming-fundamentals/exercises/git-pull-requests.md

# Data Structures: Arrays and Hashes
https://github.com/Ada-Developers-Academy/textbook-curriculum/blob/master/01-ruby-fundamentals/data-structures.md (reviewed)

# Loop Worksheet
https://github.com/Ada-Developers-Academy/textbook-curriculum/blob/master/01-ruby-fundamentals/exercises/loop-table-worksheet.md (reviewed)

# While Loop Worksheet
https://github.com/Ada-Developers-Academy/textbook-curriculum/blob/master/01-ruby-fundamentals/exercises/while-worksheet.md (reviewed)

#Conditional Practice
https://github.com/Ada-Developers-Academy/textbook-curriculum/blob/master/01-ruby-fundamentals/exercises/conditionals.md

#Data Transformation Worksheet
https://github.com/Ada-Developers-Academy/textbook-curriculum/blob/master/01-ruby-fundamentals/exercises/data-transformation-worksheet.md

#Water Waves Admissions Program
https://github.com/Ada-Developers-Academy/textbook-curriculum/blob/master/01-ruby-fundamentals/exercises/admissions-program.md
