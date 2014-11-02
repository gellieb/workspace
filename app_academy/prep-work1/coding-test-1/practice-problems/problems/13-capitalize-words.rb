# Write a method that takes in a string of lowercase letters and
# spaces, producing a new string that capitalizes the first letter of
# each word.
#
# Difficulty: medium.

def capitalize_words(string)
	iter = 0
	arr = string.split
	words=[]
	while iter < arr.length
		capitalized = arr[iter].capitalize
		words <<capitalized
		iter+=1
	end
	words.join(" ")
end

puts(
  "capitalize_words(\"this is a sentence\") == \"This Is A Sentence\": " +
  (capitalize_words("this is a sentence") == "This Is A Sentence").to_s
)
puts(
  "capitalize_words(\"mike bloomfield\") == \"Mike Bloomfield\": " +
  (capitalize_words("mike bloomfield") == "Mike Bloomfield").to_s
)
# puts capitalize_words("this is a sentence")
# puts capitalize_words("mike bloomfield")