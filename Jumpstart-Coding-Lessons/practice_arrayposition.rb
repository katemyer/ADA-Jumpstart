#IF ELSE: check something
#WHILE LOOP: find something aka loop until you tell it to stop


array_test = [1,100,2,200,50]
# puts array_test
# #find 1 = position 3
# puts array_test[0]
# puts array_test[1]
# puts array_test[2]
# puts array_test[3]
# puts array_test[4]
puts array_test.length

#i = 0 - 

# i = 0 
# while i <= array_test.length
#    puts array_test[i]
#     if array_test[i] == 30
#         puts "found 30"
#         puts i
#         #i = array_test.length
#         break #use only for loops
#     end
#    i +=1 
# end

#PRINT LAST TO FIRST

# i = array_test.length
# while i >= 0
#     puts i
#     i -=1
# end
# puts "done"

# i = array_test.length #initial condition
# while i > 0 #when you want the initial condition to STOP
#     puts i
    
#     arr_value = array_test[i-1] #reassignment of array_test[i-1] variable to use belowt
#     puts arr_value #inside this bracket, allowed to access hash position +/-
#     if arr_value == 30 #condition
#         puts "here's 30"
#         puts i
#         break
#     end
#     i -=1
# end
# puts "done"

i = 0
while i < array_test.length #stop at end at array
    #puts array_test[i]
    if array_test[i] > 5
        puts array_test [i]
    end
    i +=1
end
