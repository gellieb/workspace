# combine_arrays

# Write a method that takes two sorted arrays and produces the sorted array that combines both.

# Restrictions:

# Do not call sort anywhere.
# Do not in any way modify the two arrays given to you.
# Do not circumvent (2) by cloning or duplicating the two arrays, only to modify the copies.
# Hint: you will probably need indices into the two arrays.

# combine_arrays([1, 3, 5], [2, 4, 6]) == [1, 2, 3, 4, 5, 6]


def combine_arrays(arr1, arr2)
	combo = arr1 + arr2
	swapped = true

	while swapped
		swapped = false
		(combo.length-1).times do |i|
			if combo[i] > combo[i+1]
				combo[i], combo[i+1] = combo[i+1], combo[i]
				swapped= true
			end
		end
	end
	combo
end

p combine_arrays([1, 3, 5], [2, 4, 6])