# Write a program that asks for a person’s favorite number. 
# Have your program add 1 to the number, 
# and then suggest the result as a bigger and better 
# favorite number.

puts "What\'s your favorite number?"
fav_num = gets.chomp.to_i 
better_num = fav_num + 1 
puts "Well, that\'s a great number,"
puts "but might I suggest " + better_num.to_s + "?"
puts "It\'s SO much better. Don\'t you agree?"

#2:35