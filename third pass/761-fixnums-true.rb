# Create a method that returns true if all the elements of an array are Fixnums.
# Example:   Given [1,2,3], the method should return true

# HINT: There's a method called is_a?() where 5.is_a?(Fixnum) would eq TRUE. 

def set_class(array)
  iter = 0
  while iter < array.length
    if array[iter].is_a?(Fixnum) != true
      return "Not all of the elements are Fixnum"
    else 
    iter +=1
    end
    
  end
  
  true
end

p set_class([1,2,3])
p set_class([1,2,3,"fr"])

#9"