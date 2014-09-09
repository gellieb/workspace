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


correct_num = 25 # rand(50)+1
guess_count = 1

puts "Enter a guess for the number: "



while guess_count <= 3
guess = gets.chomp.to_i
  if guess == correct_num
    puts "Hey, you got it right!"
    break
  elsif guess_count == 3
    puts "Sorry, the number was #{correct_num}."
    break
  else
    if guess < correct_num
      guess_count += 1
      puts "That's not right. The correct number is higher."
      puts "Guess again: "
    else
      guess_count += 1
      puts "That's not right. The correct number is lower."
      puts "Guess again: "
    end
  end
end
