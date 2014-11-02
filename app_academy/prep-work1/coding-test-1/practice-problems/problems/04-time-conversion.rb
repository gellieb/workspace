# Write a method that will take in a number of minutes, and returns a
# string that formats the number into `hours:minutes`.
#
# Difficulty: easy.

def time_conversion(minutes)
	hours = minutes / 60
	min = minutes % 60
		if min < 10
			min_new = "0" + min.to_s
			return "#{hours}:#{min_new}"
		end
	p "#{hours}:#{min}"
end

puts("time_conversion(15) == \"0:15\": #{time_conversion(15) == "0:15"}")
puts("time_conversion(150) == \"2:30\": #{time_conversion(150) == "2:30"}")
puts("time_conversion(360) == \"6:00\": #{time_conversion(360) == "6:00"}")
