# Write a method that takes a string in and returns true if the letter
# "z" appears within three letters **after** an "a". You may assume
# that the string contains only lowercase letters.
#
# Difficulty: medium.

def nearby_az(string)
	iter1 = 0
	while iter1 < string.length
		if string[iter1] != 'a'
			iter1 +=1
			next
		end
		iter2 = iter1 + 1
		while iter2 < string.length && (iter2 <= iter1 + 3)
			if string[iter2] == 'z'
				return true
			end
			iter2+=1
			
		end
		iter1+=1
	end
	return false

end

puts("nearby_az(\"baz\") == true: #{nearby_az("baz") == true}")
puts("nearby_az(\"abz\") == true: #{nearby_az("abz") == true}")
puts("nearby_az(\"abcz\") == true: #{nearby_az("abcz") == true}")
puts("nearby_az(\"a\") == false: #{nearby_az("a") == false}")
puts("nearby_az(\"z\") == false: #{nearby_az("z") == false}")
puts("nearby_az(\"za\") == false: #{nearby_az("za") == false}")
