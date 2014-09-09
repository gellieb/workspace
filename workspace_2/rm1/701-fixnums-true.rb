# Create a method that returns true if all the elements of an array are Fixnums.
# Example:   Given [1,2,3], the method should return true

# HINT: use this INSIDE your method  .is_a?(Fixnum)  # evaluates TRUE or FALSE

def integer(array)
  iter = 0
  while iter < array.length
    if !array[iter].is_a?(Fixnum)
      return FALSE
    end
    iter += 1
  end
  
  TRUE
end


puts integer([1, 2, "a", 3])


