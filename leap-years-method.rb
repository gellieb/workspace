def leap_years(start_yr, end_yr)
    puts "The leap years between #{start_yr} and #{end_yr} are:"
    year = (start_yr..end_yr).to_a
    leap_yr = year.select {|number| number%400==0 || (number%4 == 0 && number%100!=0)}
end

puts "Give me a starting year and an ending year, "
puts "and I\'ll tell you all of the leap years "
puts "within that range."

start_yr = gets.chomp.to_i  
end_yr = gets.chomp.to_i 

puts leap_years(start_yr,end_yr)
