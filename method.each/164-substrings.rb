# A substring is a partial piece of the original string (one char, or itself, 
#  or consecutive letters). Write a method substrings that will take a 
# String and return an array containing each of its substrings.

# Example output: 
# substrings("cat") => ["c", "ca", "cat", "a", "at", "t"]

# Hint #1: You can use the .uniq method if you'd like. Check it out. 

# Hint #2: Use string indexing techniques ("cat"[1]), but DON'T use slice!
# See this: http://www.ruby-doc.org/core-2.1.2/String.html#method-i-slice


def substrings(string)
  string_set= []
  iter = 0
  while iter <= string.length
    substr= 0
   #
    while substr <= string.length
      string_set<< string[iter,substr]
      substr+=1
    end
  
  iter+=1
  end
  string_set.uniq

end




p substrings("cat")

# string_set= []
# string.each_char do |str| p str
# string_set << str
# end