# U2.W5: Build a simple guessing game


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input:
# Output:
# Steps:


# 3. Initial Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end
  
  def guess(num)
  	return :high if num > @answer
  	return :low if num < @answer
  	return :correct if num == @answer
  end
  def solved?
  	return false if (guess(num)== :high || guess(num)== :low)
  	return true if guess(num) == :correct
  end



  # Make sure you define the other required methods, too
end




# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection 