# Create a method that returns true if all the elements of an array are Fixnums.
# Ex. Given [1,2,3], the method should return true
# Ex. Given [1,"cat",3], the method should return false

# HINT: There's a method called is_a?() where 5.is_a?(Fixnum) would eq TRUE. 

def maybe_fixnum?(array)
  array.select |elem| elem.is_a?(Fixnum) == FALSE
    return FALSE
    TRUE
  
end

puts maybe_fixnum?([1,2,3])
puts maybe_fixnum?([1,"",3])
puts maybe_fixnum?([11111])
puts maybe_fixnum?(["g"])
