# Write a program that asks for a starting year and 
# an ending year and then puts all the leap years between 
# them (and including them, if they are also leap years). 

# Leap years are years divisible by 4 (like 1984 and 2004). However, 
# years divisible by 100 are not leap years (such as 1800 and 1900) 
# unless they are also divisible by 400 (such as 1600 and 2000, 
# which were in fact leap years). What a mess!
puts"Give me a starting and an ending year,"
puts "and I will tell you all of the leap years between them."
puts "The only thing is that your numbers have to be integer and nonzero numbers, k?"
puts "Alright, give it to me!"
start_year= gets.chomp.to_i
end_year= gets.chomp.to_i


  def is_leap 
    leap_yr = (start_year..end_year).to_a
    if leap_yr.each%4 == 0
      return true
    elsif leap_yr.each%100 !=0
      return true
    else leap_yr.each%400 == 0
      return true
    end 
  end 
      
    puts "The leap years between #{start_year} and #{end_year} are:"
    #leap_yr = all_years.select {|number| number%4==0 || (number%400 ==0 && number%100 !=0)}
  
puts is_leap


