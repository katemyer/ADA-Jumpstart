require 'csv'

  data_file = './MajorLandUse.csv'
  land_data = []

  CSV.foreach(data_file, headers: true) do |row|
    land_data.push(row.to_h) # to_h = hash
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

while user_option > options_hash.length || user_option <= 0
    puts "Select a valid option"
    user_option = gets.chomp.to_i
end

#instead of specifically year 2012, let the user input the year
#make sure to change numbers to INTS bc csv is all string
puts "What year do you want to see the state with the most #{options_hash[user_option]}?"
user_year = gets.chomp.to_i

while user_year <= 1900 # this covers if they input string, negative year, or year less than 1900
    puts "Try again."
    user_year = gets.chomp.to_i
end

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

puts "Question 2: In the year 1945, amongst the states in the Mountain region, which state made the least contribution to its region's cropland use for pasture?"

# year = 1945
# Region = mountain region
# least contribution
# Cropland used for pasture
# output : Nevada

puts "What year do you want Cropland used for pasture information?"
user_crop_year = gets.chomp.to_i

#check for valid year
while user_crop_year <= 1900 
    puts "Enter a valid year"
    user_crop_year = gets.chomp.to_i
end

least_Cropland_used_for_pasture = nil
least_state_record = nil 

land_data.each do |record|
    if (record["Year"].to_i == user_crop_year) && (record["Region"] == "Mountain") 
        #compare first record of Cropland used for pasture to next, and so on
        if least_Cropland_used_for_pasture == nil
            least_Cropland_used_for_pasture = record["Cropland used for pasture"].to_i
        end
        if record["Cropland used for pasture"].to_i < least_Cropland_used_for_pasture
            least_Cropland_used_for_pasture = record["Cropland used for pasture"].to_i
            least_state_record = record
        end    
    end
end

if least_Cropland_used_for_pasture == nil || least_state_record == nil
    puts "No data exists"
else
    puts " #{least_state_record["Region or State"]} made the least contribution in Cropland used for pasture with a total of #{least_state_record["Cropland used for pasture"]}."
end

puts "Question 3: Among the states that begin with N, which state had less than 100 in land in urban areas/
for at least 5 years between 1950 and 2000?"

#begins with N : (record["Region or State"].start_with?("N"))
#state < 100 in Land in urban areas : (record["Land in urban areas"].to_i < 100)
# least 5 years : 
#between 1950-2000 : (record["Year"].to_i == (1950...2000)

state_count_hash = {}
# {
# }

land_data.each do |record|
    if (record["Region or State"].start_with?("N")) && 
        (record["Region or State"] != "Northeast") && 
        (record["Region or State"] != "Northern Plains") && 
        (record["Land in urban areas"].to_i < 100) &&
        (record["Year"].to_i >= 1950) && 
        (record["Year"].to_i <= 2000)
        puts "here #{record["Region or State"]}"
        if state_count_hash.key?(record["Region or State"]) # does exist, increment count
            state_count_hash[record["Region or State"]] +=1
        else # does not exist, set count to one
            state_count_hash[record["Region or State"]] =1
        end  
    end
end
puts state_count_hash
# Loop thru hash and eliminate states with less than 5 counts

states = []
state_count_hash.each do |key, value|
    if value >= 5
       states.push(key) 
    end
end

if !states.empty?
    puts "States are: "
    states.each do |state|
        puts state
    end    
else
    puts "No states exist"
end

# North Dakota, Nevada
# puts states = []
# Nevada

puts "Question 4: In the year 1969, amongst the states in the Northeast, Northern Plains, and Appalachian regions, what was the median value for grassland pasture and range?"
# year 1969
# states (Region or State) in Region: Northeast, Northern Plains, Appalachian 
# median value
#Grassland pasture and range

grass_array = []

land_data.each do |record|
    if (record["Year"].to_i == 1969) && (
        (record["Region"] == "Northeast") ||
        (record["Region"] == "Northern Plains") ||
        (record["Region"] == "Appalachian") )
        grass_array.push(record["Grassland pasture and range"].to_i)
    end
end

# array of values = Grassland pasture and range
# take an array of the values and sort them 
# then find out how many values there are. 
# if odd number of values = length +1
# if even number of values = find middle two numbers and divide by 2

grass_array = grass_array.sort
#puts grass_array
#puts grass_array.length
median = nil

if grass_array.length % 2 == 0 # length is even
    first_index = grass_array.length / 2
    #puts first_index
    #puts grass_array[first_index - 1]
    second_index = first_index + 1
    #puts second_index
    median = (grass_array[first_index - 1] + grass_array[second_index - 1]) / 2
    #puts median
else #length is odd 
    #puts (grass_array.length / 2) + 1
    median = grass_array[(grass_array.length / 2) + 1]
end

puts "The median for grassland pasture and range is #{median}."

#initialize array/hash
#access array/hash
#add or delete from array/hash
#zero based for math

puts "Question 5: Consider the top 10 best overall ranked states according to the U.S. News in the year 2017. Amongst these states, what was the average value of all special uses in land in these states in the year 2007."

# look up US news report for top 10 states in 2017
# filter out these states using OR
# filter out the year 2007
# select All special uses of land
# for loop through the values in special uses in land to add each value
# divide by array length to get the average

# "Region or State": Massachusetts, New Hampshire, Minnesota, North Dakota, Washington, Iowa, Utah, Maryland, Colorado, Vermont

#states_array = []
#states_array = ["Massachusetts", "New Hampshire", "Minnesota", "North Dakota", "Washington", "Iowa", "Utah", "Maryland", "Colorado", "Vermont"]
#puts states_array.length 

special_land_array = []

land_data.each do |record|
    if  (record["Year"].to_i == 2007) && (
        (record["Region or State"] == "Massachusetts") ||
        (record["Region or State"] == "New Hampshire") ||
        (record["Region or State"] == "Minnesota") ||
        (record["Region or State"] == "North Dakota") ||
        (record["Region or State"] == "Washington") ||
        (record["Region or State"] == "Iowa") ||
        (record["Region or State"] == "Utah") ||
        (record["Region or State"] == "Maryland") ||
        (record["Region or State"] == "Colorado") ||
        (record["Region or State"] == "Vermont")
        )
        special_land_array.push(record["All special uses of land"].to_i)
    end
end
puts special_land_array

#calculate total here

total = 0
special_land_array.each_with_index do |a_value, index|
total = total + a_value
end
puts total

#calculate mean here

mean = 0
mean = total / special_land_array.length
puts "The average value of all special uses in land in 2007 for the top 10 states based on U.S. News is #{mean}."


