# “Write a program that asks for a person’s first name, 
# then middle, and then last. Finally, it should greet 
# the person using their full name.”

puts "What\'s your name?"
first_name = gets.chomp.capitalize
puts "Do you have a middle name?"
response = gets.chomp.capitalize  
    if response == "Yes"
        puts "What is it?"
        middle_name = " " + gets.chomp.capitalize + " "
    elsif response == "No"
        puts "Oh, okay. That's fine."
        middle_name = " "
    
    end
puts "What\'s your last name?"
last_name = gets.chomp.capitalize
puts
puts "Hi! " + first_name + middle_name + last_name + "!"
puts "Nice to meet you!"

#11min (stuck on that middle_name==nil thing)
