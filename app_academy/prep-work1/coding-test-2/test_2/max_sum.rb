# corgi_golden_age
# Each year, the Census Bureau records the change in the population of Welsh corgis. In year zero, if 10 corgis are born and 5 die (sad!), there are 5 more corgis. In year one, if 10 corgis are born and 13 die, there are 3 fewer corgis. An array of changes in corgi populations would look like [5, -3, ...].

# I give you an array of annual changes in the corgi population. I want to find the Corgi Golden Age, the years in which the cumulative change in the corgi population was greatest. For instance, if the array is [100, -101, 200, -3, 1000], the corgi Golden Age existed between years 2 and 4 (representing [200, -3, 1000]), since that's the time period during which the most corgis were born.

# Write a method, corgi_golden_age, which should return the start and end indices of the Corgi Golden Age:

# corgi_golden_age([100, -101, 200, -3, 1000]) == [2, 4]
# corgi_golden_age([5, 3, -5, 1, 19, 2, -4]) == [0, 5]
# Do not worry about the speed of your solution.

# Hints: iterate through all the subarrays; compute the sum of each subarray and compare to the best Corgi Golden Age seen so far. A subarray is defined by its start index and end indices, so iterate through all pairs of indices. You should probably use two loops, one nested inside the other.
def corgi_golden_age(arr)
	max_subset_sum = 0
	max_i = 0
	max_j = 0
	sum = 0
	i = 0
	j=i+1
	while i < arr.length
		while j < arr.length
			sum = arr[i]+arr[j]
			if sum > max_subset_sum
				max_subset_sum = sum
				max_i = i
				max_j = j
			end
			j+=1
		end
		i+=1
	end
	return [max_i, max_j]

end
p corgi_golden_age([100, -101, 200, -3, 1000]) 


def max_subsum(a)
    (0...a.length).flat_map { |i| (i...a.length).map { |j| i..j } }inject([a[0], 0..0]) 
    { |max, i| a[i].inject(:+) > max.first ? 
    [a[i].inject(:+),i ]: max }.last
end
