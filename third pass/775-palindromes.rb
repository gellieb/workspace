# Palindromes
# Given a sentence, write a method that returns true if the sentence is 
# a palindrome. Ignore whitespaces and cases of characters.
# Example:
# Given "Never odd or even" the method should return true

def palindrome(sentence)
  line = sentence.downcase.split.join # same as line = sentence.downcase.gsub(" ", "")
  if line = line.reverse
    # p line
    return true
  else
    return false
  end
  
  
end

puts palindrome("Never odd or even")