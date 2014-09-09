# You are given two things: a sentence (containing multiple words) and a 
# single word. Find the frequency of the given word in the given sentence.

# Example: Given 'The best language in the World is Ruby' and 'the' should 
# return 2 (comparison should be case-insensitive). 

# Hint: You can use the method Array#count to count the frequency 
# of any element in a given array. eg:  [9,3,4,9,5].count(9) returns 2

#1:59

def frequency_of_word(sentence, word)
  iter = 0
  results = []
  array = sentence.downcase.split(" ")
  while iter < array.length
    if array[iter] == word
      results << array[iter]
    end
    iter+=1
  end
  
results.length
  
end

# def frequency_of_word(sentence, word)
#   sentence.downcase.split.count(word)
  
# end


p frequency_of_word('The best language in the World is Ruby', "the")