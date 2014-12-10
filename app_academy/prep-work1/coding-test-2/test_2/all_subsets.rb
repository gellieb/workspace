# Attempt this after you have the other two problems working.

# Write a method that, given an array of unique items, finds all the subsets of items:

# subsets(["a", "b", "c"]) == [
#   [], # note that the empty set counts!
#   ["a"], ["a", "b"], ["a", "b", "c"], ["a", "c"],
#   ["b"], ["b", "c"],
#   ["c"]
# ]


# def subsets(arr)
# 	result = []
# 	i = 0
# 	while i < arr.length
# 		result = result + arr.permutation(i).to_a #gives you ALL POSSIBLE COMBOS.
# 		i+=1
# 	end
# 	result
# end

p subsets([1, 2, 3])
def subsets(arr)
	result = []
	i = 0
	while i < arr.length
		result = result + arr.combination(i).to_a 
			#gives you ONLY UNIQUE COMBOS
		i+=1
	end
	result
end