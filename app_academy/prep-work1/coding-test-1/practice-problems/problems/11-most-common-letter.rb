# Write a method that takes in a string. Your method should return the
# most common letter in the array, and a count of how many times it
# appears.
#
# Difficulty: medium.

def most_common_letter(string)
	iter = 0
	arr = string.split("")
	most_letter = nil
	most_count = nil
	while iter < arr.length
		current_letter = arr[iter]
		if most_letter == nil || arr.count(current_letter)> 1
			most_letter = current_letter
		elsif arr.count(current_letter) > 1 && (arr.count(most_count)<arr.count(current_letter))
			most_letter = current_letter
		end
		iter +=1
	end

	return [most_letter, arr.count(current_letter)]
end

puts("most_common_letter(\"abca\") == [\"a\", 2]: #{most_common_letter("abca") == ["a", 2]}")
puts("most_common_letter(\"abbab\") == [\"b\", 3]: #{most_common_letter("abbab") == ["b", 3]}")

# puts most_common_letter("abbab")

