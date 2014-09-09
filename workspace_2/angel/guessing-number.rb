# Number guessing game

# Create a game that gives a user three chances to guess
# a number that the program has randomly generated between
# 1 and 50. The user wins when the user guesses correctly 
# and the game promptly ends. Each time a guess is incorrect, 
# the program will generously provide a hint and suggest the
# user to choose a higher or lower number for the next guess. 
# If the user fails all three guesses, then the user loses and 
# the program tells the user what the correct number was. 

# For the last guess, the program will be even more generous 
# and accept a close-enough guess that is off by 1. For example
# a last guess of 15 wins if the actual number was 16. 
count = 0
comp_num= 25 #rand(50)
while count <= 3
  
  puts "Guess my number!"
  user_num = gets.chomp.to_i
  count +=1
  if user_num == comp_num
    puts "You guessed correctly!"
    break
  elsif user_num < comp_num 
    puts "Guess a little higher."
    count +=1
  elsif user_num > comp_num
    puts "Guess a little lower."
    count +=1
  else 
    puts "Sorry, you didn\'t guess my number."
  puts "It was #{comp_num}"
  end
  
end