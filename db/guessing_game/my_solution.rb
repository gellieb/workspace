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
  	@num = num
  	@swapped = false
  	return :high if @num > @answer
  	return :low if @num < @answer
  	if @num == @answer
  		@swapped = true
  		return :correct 
  	end
  end
  def solved?
  	# return false if (self.guess(@num)== :high || self.guess(@num)== :low)
  	# return true if self.guess(@num) == :correct
  	return false if @num != @answer
  	return true if @swapped == true
  end


  # Make sure you define the other required methods, too
end




# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection 