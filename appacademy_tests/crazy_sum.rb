# crazy_sum
# # Write a method named crazy_sum(numbers) that takes an array of numbers.
#  crazy_sum should multiply each number in the array by its 
#  position in the array, and return the sum.

# # crazy_sum([2]) == 0 # (2*0)
# # crazy_sum([2, 3]) == 3 # (2*0) + (3*1)
# # crazy_sum([2, 3, 5]) == 13 # (2*0) + (3*1) + (5*2)
# # crazy_sum([2, 3, 5, 2]) == 19 # (2*0) + (3*1) + (5*2) + (2*3)
# # Make sure your code works for arrays with repeats of the same number 
# (like [2, 3, 5, 2]). Hint: be careful about using Array#index; why?


def crazy_sum(numbers)
	arr = []
	iter = 0
	while iter < numbers.length
		product = numbers[iter] * iter
		arr << product
		iter += 1
	end
	return arr.reduce(:+)
end

puts crazy_sum([2])
puts crazy_sum([2, 3])
puts crazy_sum([2, 3, 5])