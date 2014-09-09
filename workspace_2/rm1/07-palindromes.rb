# These exercises are from https://rubymonk.com/
# execute the method to test results
# ENTER YOUR TIME


# Palindromes

# Problem Statement
# Given a sentence, return true if the sentence is a palindrome.

# You are supposed to write a method palindrome? to accomplish this task.

# Note Ignore whitespace and cases of characters.

# Example:
# Given "Never odd or even" the method should return true



def palindrome?(sentence)
  
  a = sentence.downcase.gsub(/ /, "") 
  if a == a.reverse
    return true
  else 
    return false
  end
  
end

puts palindrome?("Never odd or even") #return true

# 29"