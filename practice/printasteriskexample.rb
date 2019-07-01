puts  "*"
puts  "**"
puts  "***"

row = 1
while row <=3 #condition: is i less than or equal to 3
    #puts "row:" + row.to_s #no quotes needed when integer bc "" means string
    col = 1 
    while col <= row
        print "*"
        col += 1
    end
    print "\n"
    #puts ""
    row +=1 #breaks code
end

