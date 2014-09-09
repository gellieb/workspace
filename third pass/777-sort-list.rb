# Write a program that orders a list of items from the user. The user would
# input items one at a time, hitting enter each time and stopping when a
# blank enter is returned. The program would then return the items back 
# to the user in alphabetical order.

puts "Rattle off some items off the top of your head. One line per word, please."
puts "When you\'re done, just press \'Enter\'. Then I\'ll sort it all for you."
puts 
puts "Start listing!"
puts

list= []
while true
  user = gets.chomp.downcase
  list << user
  p list
  if user == ""
    break
  end
  
end
puts list.sort