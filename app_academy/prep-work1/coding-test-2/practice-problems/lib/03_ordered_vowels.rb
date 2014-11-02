def ordered_vowel_words(str)
	words = str.split(" ")
	ordered_words = words.select do |word|
		ordered_vowel_word?(word)
	end
	ordered_words
end

def find_vowels(word)
  vowels = %w{a e i o u}
  letters_arr = word.split('') #splits word into individual letters and sorts into array
  vowels_arr = letters_arr.select do |letter|
 	  vowels.include?(letter)
  end
  vowels_arr
end

def ordered_vowel_word?(word)
	find_vowels(word).each_index do |i|
		if i < find_vowels(word).length-1
			return false if find_vowels(word)[i] > find_vowels(word)[i+1]
		end
	end
	return true
end




# def ordered_vowel_words(str)
# 	words = str.split(" ")
# 	# divides phrase at every " ". splits up phrase into individual elements (words) in array

# 	ordered_vowels = words.select do |word|
# 		ordered_vowel_word?(word)
# 	end
# 	ordered_vowels.join

# end

# def ordered_vowel_word?(word)
# 	vowels = %w{a e i o u}
# 	letters_array = word.split('')
# 	#splits single word into individuals elements of characters
# 	vowels_array = letters_array.select do |letter|
# 		vowels.include?(letter)
# 	end
# 	#selects from letters_array elements that are included in vowels

# 	vowels_array.each_with_index do |item, i|
# 		#iterates from 0 to (length of vowels_array - 1)
# 		if i < vowels_array.length-1
# 			if vowels_array[i] > vowels_array[i+1]
# 				return false
# 			end
# 		end
# 	end
# 	true

# end
# ["o", "i", "a", "e"]

p ordered_vowel_word?("amends") #.should == "amends"


p ordered_vowel_words("amends") #.should == "amends"
p ordered_vowel_words("complicated") #.should == ""
p ordered_vowel_words("afoot") #.should == "afoot"
p ordered_vowel_words("crypt") #.should == "crypt"
p ordered_vowel_words("o") #.should == "o"
p ordered_vowel_words("tamely") #.should == "tamely"

phrase = "this is a test of the vowel ordering system"
result = "this is a test of the system"
p ordered_vowel_words(phrase) #.should == result





