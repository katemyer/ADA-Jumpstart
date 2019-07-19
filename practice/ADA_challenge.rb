require 'csv'

  data_file = './MajorLandUse.csv'
  land_data = []

  CSV.foreach(data_file, headers: true) do |row|
    land_data.push(row.to_h) # hash
  end

#   print land_data

#Before you begin, first exclude all rows: 1) "48 states" or "U.S. Total" 2) states with the letter G
#1) under column Region


# land_data.each do |region|
#     # puts region["Region"]
#     if region["Region"] == "48 States" || region["Region"] == "U.S. total"
#         land_data.delete(region)
#     end
# end


land_data.delete_if do |region|
    if region["Region"] == "48 States" || region["Region"] == "U.S. total" || region["Region or State"].index('g') != nil
        true
    end
end

print "here"
puts ""

puts "Question 1: Which state had the most forest-use land grazed in 2012?"

# Check if land gazed is the current greatest
# Check if land gazed is greater than the current champ
# If so then have a new champ


# What option do you want?
# 1. most Forest-use land grazed
# 2. Most Forest-use land not grazed
# 3. Most Forest-use land (all)

puts "What information do you want to select from below?"

options_hash = {}
options_hash = {
    1 => "Forest-use land grazed",
    2 => "Forest-use land not grazed",
    3 => "Forest-use land (all)"
}

puts "Here are your options:"
options_hash.each do |key, value|
    puts "#{key}: most #{value}"
end

user_option = gets.chomp.to_i
puts options_hash[user_option]

#instead of specifically year 2012, let the user input the year
#make sure to change numbers to INTS bc csv is all string
puts "What year do you want to see the state with the most #{options_hash[user_option]}?"
user_year = gets.chomp.to_i

current_greatest_land = 0
current_greatest_state = ""

land_data.each do |record|
     # puts region["Region"]
    if record["Year"].to_i == user_year 
        #puts "#{record["Region or State"]}, #{record["Year"]}, #{record["Forest-use land grazed"].to_f}"
        if record[options_hash[user_option]].to_f > current_greatest_land
            current_greatest_land = record[options_hash[user_option]].to_f
            current_greatest_state = record["Region or State"]
        end
    end
end

#if year doesn't exist, then greatest land and state also don't exist.
#land mass (it's a number) is set to zero and state (it's a string) is set to an empty string
if (current_greatest_land == 0) && (current_greatest_state == "")
    puts "Data for #{user_year} does not exist"
else #everything else. in this it means there was data. 
    puts "#{current_greatest_state} has the most #{options_hash[user_option]} of #{current_greatest_land}"
end



