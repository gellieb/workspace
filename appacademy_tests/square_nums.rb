# square_nums
# Write a method square_nums that takes a number max and returns the number of 
# perfect squares less than max. 
# Do not use Math.sqrt(x) or x ** 0.5; 
# we don't want you to calculate square roots for this problem. 
# You will, however, want to find squares (x * x is fine).

# # square_nums(5) == 2
# # square_nums(10) == 3
# # square_nums(25) == 4

def square_nums(max)
	iter = 0
	arr = []
	while iter < max
		if iter ** 2 < max 
			arr << iter
		end
		iter +=1
	end
	return arr.max
end

puts square_nums(5)
puts square_nums(10)