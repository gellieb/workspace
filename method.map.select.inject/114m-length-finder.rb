# Find the length of strings in an array
# Given an array containing some strings, return an array containing 
# the length of those strings. 
# Example:
# Given ['Ruby','Rails','C42'] the method should return [4, 5, 3]

def find_length(array)
  
  array.map {|elem| elem.length}
  
end


puts find_length(['Ruby','Rails','C42'])
