# U2.W5: A Nested Array to Model a Bingo Board SOLO CHALLENGE


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #fill in the outline here

# Check the called column for the number called.
  #fill in the outline here

# If the number is in the column, replace with an 'x'
  #fill in the outline here

# Display a column to the console
  #fill in the outline here

# Display the board to the console (prettily)
  #fill in the outline here

# Release 1: Initial Solution

class BingoBoard

  def initialize
    # populates an 5x5 array with numbers 1-100
    # to make this accessible across your methods within this class, I made
    # this an instance variable. @ = instance variable
    @bingo_board = [[1,2,3,4,5],[6,7,8,9,10],[11,12,13,14,15],[16,17,18,19,20],[21,22,23,24,25]]
    # Array.new(5) {Array(5.times.map{rand(1..100)})}
    @arr = [ "b", "i", "n", "g", "o"] 

  end
  def random_generator
    new_ball = []
    @num = rand(1..26)
    @letter = @arr.sample
    @index = @arr.index(@letter)
    new_ball << @letter << @num
    # p new_ball
  end

  def checker
    self.random_generator
    if @bingo_board[@arr.index(@letter)].include?(@num)
      p @letter + " " + @num.to_s
    end
  end

  def replacer
    @bingo_board.each do |subarray| 
      if subarray[@index] == @num
        subarray[@index] = "X" 
      end
    end
    self.print_board
      # check target item in subarray for @num 
      # if @num is there then delete and replace with 'x'
  end

  def print_board
    @bingo_board.each  {|subarray| p subarray}
  end
end


# Release 3: Refactored Solution



# Release 2: DRIVER TESTS GO BELOW THIS LINE



# Release 4: Reflection