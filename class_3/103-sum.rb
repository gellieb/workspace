# Write the method 'sum' which takes an array of numbers 
# and returns the sum of the numbers.

def sum(array)
	total = 0
	array.each do |element| 
		total = total + element 
	end
	total
end

puts sum([1,2,3,4,123]) #133


# def sum(array)
# 	total = 0
# 	iter = 0
# 	while iter < array.length
# 		total = total + array[iter]
# 		iter+=1
# 	end
# 	total
# end

