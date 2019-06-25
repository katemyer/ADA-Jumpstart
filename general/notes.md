# Notes

## Setting up Dev Environment

[link](https://stackoverflow.com/questions/51539711/how-to-debug-ruby-code-on-visual-studio-code)

## If the debugger does not run, in the launch.json need to add this

"cwd": "${workspaceRoot}",
"program": "${file}"

Restarting VSC helps

## PUTS Command

[link](https://www.codesdope.com/ruby-putsputsputs/)

command + / in VSC to comment a block of code

## STRING commands

[link](https://ruby-doc.org/core-2.4.0/String.html#method-i-reverse)

use double quotes "  instead of single quote ' for STRINGS

```ruby
# string interpolation can be used with double quotes
 puts "#{str}, world" # prints hello, world
 # string interpolation cannot be used with single quotes
 puts '#{str}, world' # prints #{str}, world
```

## Scripting vs Programming
