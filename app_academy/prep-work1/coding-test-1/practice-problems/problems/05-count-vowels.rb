# Write a method that takes a string and returns the number of vowels
# in the string. You may assume that all the letters are lower cased.
# You can treat "y" as a consonant.
#
# Difficulty: easy.

def count_vowels(string)
	sum = 0
	if string.include?('a') || string.include?('e') ||string.include?('i')||string.include?('o')||string.include?('u')
		sum = sum + string.count('a') + string.count('e')+ string.count('i')+ string.count('o')+ string.count('u')
	end
return sum
end

puts("count_vowels(\"abcd\") == 1: #{count_vowels("abcd") == 1}")
puts("count_vowels(\"color\") == 2: #{count_vowels("color") == 2}")
puts("count_vowels(\"colour\") == 3: #{count_vowels("colour") == 3}")
puts("count_vowels(\"cecilia\") == 4: #{count_vowels("cecilia") == 4}")
