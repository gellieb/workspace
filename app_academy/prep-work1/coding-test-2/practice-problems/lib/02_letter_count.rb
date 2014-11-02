def letter_count(str)
	str = str.split.join #gets rid of all spaces
	hash = {}
	str.each_char do |letter|
		hash[letter] = 0 unless hash.include?(letter)
		hash[letter] +=1
	end
	hash
end




p letter_count("cat")
p letter_count("moon")
p letter_count("cats are fun")




# def letter_count(str)
# 	str = str.split.join
# 	hash = {}
# 	str.each_char do |char|
# 		hash[char] = 0 unless hash.include?(char)
# 		hash[char]+=1


# 	end

# 	hash


# end
