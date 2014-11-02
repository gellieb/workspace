def no_repeats(year_start, year_end)
	unique_yrs = []
	(year_start..year_end).each do |year|
		unique_yrs << year if no_repeat?(year) # = true, automatically set to true
	end
	unique_yrs

end


def no_repeat?(year)
	digits = []
	year.to_s.each_char do |digit| #individualizes each digit of year after converting it to a string
		if digits.include?(digit)
			return false # no_repeat?(year) = false if there are duplicate years
		elsif digits<< digit #otherwise
		end
	end
	return true
end

puts no_repeats(1234, 1234)
puts no_repeats(1123, 1123)
puts no_repeats(1980, 1987)

# def no_repeats(year_start, year_end)
# 	# year_start_s = year_start.to_s
# 	# year_end_s = year_end.to_s
# 	non_dupes = []
# 	(year_start..year_end).each do |year|
# 		non_dupes << year if no_repeat?(year)
# 	end
# 	non_dupes
# end


# def no_repeat?(year)
# 	char_set = []
# 	year.to_s.each_char do |char|
# 		return false if char_set.include?(char)
# 		char_set << char
# 	end
	
# 	return true

# end