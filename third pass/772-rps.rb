# Implement a Rock, Paper, Scissors game. The method `rps` should 
# take a string (either "Rock", "Paper" or "Scissors") as a 
# parameter and return the computer's choice, and the outcome of 
# the match. Example:

# rps("Rock") # => "Paper, Lose"
# rps("Scissors") # => "Scissors, Draw"
# rps("Scissors") # => "Paper, Win"

def rps(user_hand)
user_hand.downcase!
comp_hand = ["rock", "paper", "scissors"].sample
#   "rock" < "paper"=== tru
#   "rock" > "scissor"
#   "paper" < "scissor"
  if (comp_hand == "rock" && user_hand == "paper") || 
    (comp_hand== "scissors" && user_hand == "rock") || 
    (comp_hand== "paper" && user_hand == "scissors")
     "user had #{user_hand} and computer had #{comp_hand}. User wins!"
  elsif comp_hand == user_hand
     "user had #{user_hand} and computer had #{comp_hand}. Draw!"
  else 
     "user had #{user_hand} and computer had #{comp_hand}. Computer wins!"
  end
end


p rps("Rock") # => "Paper, Lose"
p rps("Scissors") # => "Scissors, Draw"
p rps("Scissors") # => "Paper, Win"
