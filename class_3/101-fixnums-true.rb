# Create a method that returns true if all the elements of an array are Fixnums.
# Example:   Given [1,2,3], the method should return true

# HINT: There's a method called is_a?() where 5.is_a?(Fixnum) would eq TRUE. 

def is_fixnum(variable)
	if variable.is_a?(Fixnum)
		true
	else 
		false
	end

end

puts is_fixnum(5)
puts is_fixnum(5.0)
puts is_fixnum("h")
