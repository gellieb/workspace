# Write a method that takes an array of numbers. If a pair of numbers
# in the array sums to zero, return the positions of those two numbers.
# If no pair of numbers sums to zero, return `nil`.
#
# Difficulty: medium.

def two_sum(nums)
	iter = 0
	sum = 0
	while iter < nums.length
		iter2 = iter + 1
		while iter2 <nums.length
			if nums[iter] + nums[iter2] == 0
				return [iter, iter2]
			end
			iter2+=1
		end
		iter+=1
	end

	return nil
end

puts("two_sum([1, 3, 5, -3]) == [1, 3]: #{two_sum([1, 3, 5, -3]) == [1, 3]}")
puts("two_sum([1, 3, 5]) == nil: #{two_sum([1, 3, 5]) == nil}")
