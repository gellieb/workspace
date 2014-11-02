# Write a method that takes in a number and returns a string, placing
# a single dash before/after each odd digit.
#
# Difficulty: medium.

def dasherize_number(num)
	iter = 0
	num_s = num.to_s
	new_string = ""
	while iter < num_s.length
		digit = num_s[iter].to_i
		if iter > 0
			prev_digit = num_s[iter-1].to_i
			if prev_digit%2==1 || digit%2==1
				new_string += '-'
			end
		end
		new_string+= num_s[iter]
		iter+=1
	end
	return new_string
end

puts("dasherize_number(203) == \"20-3\": #{dasherize_number(203) == "20-3"}")
puts("dasherize_number(303) == \"3-0-3\": #{dasherize_number(303) == "3-0-3"}")
puts("dasherize_number(333) == \"3-3-3\": #{dasherize_number(333) == "3-3-3"}")
puts("dasherize_number(3223) == \"3-22-3\": #{dasherize_number(3223) == "3-22-3"}")