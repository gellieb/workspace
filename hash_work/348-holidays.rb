# You have a bunch of decorations for various holidays organized by season.

holiday_supplies = {
  :winter => {
    :christmas => ["Lights", "Wreath"],
    :new_years => ["Party Hats"]
  },
  :summer => {
    :fourth_of_july => ["Fireworks", "BBQ"],
    :labor_day=> ["white clothes", "grill"]
  },
  :fall => {
    :thanksgiving => ["Turkey"]
  },
  :spring => {
    :memorial_day => ["BBQ"]
  }
}


# Puts the second supply for the fourth_of_july? 
# ex: puts holiday_supplies[:spring][:memorial_day][0]
puts "Q1: #{holiday_supplies[:summer][:fourth_of_july][1]}"



# Add a supply to a Winter holiday, then puts to check winter supplies.
puts "\nQ2: #{holiday_supplies[:winter][:thanksgiving] = ["Stuffing", "Sweet potatoes"]}"
puts holiday_supplies[:winter]


# Add a supply to memorial day, then puts to check spring supplies.
puts "\nQ3: #{holiday_supplies[:spring][:memorial_day] << "grill"}"
puts holiday_supplies[:spring]


# Add a new holiday to any season with supplies, then puts 
puts "\nQ4:#{holiday_supplies[:summer][:labor_day]= "white clothes", "grill"}"
puts holiday_supplies[:summer]



# Write a method to collect all Winter supplies from all holidays, then run it. 
# ex: winter_suppliers(holiday_supplies) #=> ["Lights", "Wreath", etc]
puts "\nQ5:"



def winter_suppliers(hash)
  if hash.has_key?(:winter)
    hash[:winter].values.flatten
  end

end
puts winter_suppliers(holiday_supplies)


# Write a loop to list out all the supplies you have for each holiday and the season.
# Example Output:
# Winter:
#   Christmas: Lights and Wreath
#   New Years: Party Hats
puts "\nQ6:"
holiday_supplies.each do |season, holidays|
  puts season.to_s.capitalize + ':'
  holidays.each do |holiday, supplies|
    str = ""
    str << "   #{holiday.to_s.capitalize.gsub(/_/, ' ')}: "
    iter = 0
    supplies.each do |supply|
      if iter == 0
        str << supply.downcase
      else 
        str << " and #{supply.downcase}"
      end
      iter +=1
      
    end
    puts str
  end
end








# Write a method to collect all holidays with BBQ.
puts "\nQ7:"

# p holiday_supplies.length
# #while holiday_supplies
# holiday_supplies.key("BBQ")



def bbq_holidays(hash)
  arr = []
  hash.each do |season, holidays|
    holidays.each do |holiday, supplies|
      arr << holiday if supplies.include?("BBQ")
      
    end
    
  end
  arr
end

puts bbq_holidays(holiday_supplies)






# def bbq_holidays(hash)
#   #str = ""
#   iter = 0
#   while iter <=hash.length
#     if hash.values[iter].values.flatten.include?("BBQ")
#       p hash.values[iter].keys
#     end
#     iter+=1
#   end
# hash
# end
# p bbq_holidays(holiday_supplies)




