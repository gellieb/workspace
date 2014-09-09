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
iter = 0
comp_num = rand(51)
puts "shh.. it's #{comp_num}"
while iter <3
  puts "Guess my number"
  user_guess = gets.chomp.to_i
 
  if user_guess==comp_num 
    puts "You got it!"
    return
  end
  
  if iter == 2 
    if user_guess = comp_num - 1 || user_guess = comp_num + 1
      puts "Close enough! You win!"
      break
    end 
  end
  
  if user_guess < comp_num 
    if iter < 2
      puts "You\'re number is too low. Guess higher!"
    end
  elsif user_guess > comp_num 
    if iter < 2
      puts "You're number is too high. Guess lower!"
    end
  end 
  iter+=1

end

puts "Sorry it was #{comp_num}"