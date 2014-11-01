# Write a method that finds if an array of numbers has a pair that sums to zero. Be careful of the case of zero; there need to be two zeroes in the array to make a pair that sums to zero.

# def two_sum(array)
# 	new_arr = []
# 	if has_zero_sum_pair? 
#   	new_arr << a[i]
#   	new_arr << a[j]	

#   end
#   new_arr
# end




def has_zero_sum_pair?(array)
	(0..array.length-2).each do |i|
    (i+1..array.length-1).each do |j|
      return true if array[i] + array[j] == 0
    end
  end
  false



end




p has_zero_sum_pair?([0, 4, 3, 0, -3, 2, -2, 1, 3, -4, -4])



