# Find the length of strings in an array
# Given an array containing some strings, return an array containing the length of those strings.

# You are supposed to write a method named 'length_finder' to accomplish this task.
# Example:
# Given ['Ruby','Rails','C42'] the method should return [4, 5, 3]



def str_length(array)
  
  array.map {|elem| elem.length}
  
end

puts str_length(['Ruby','Rails','C42'])


def str_length(array)
  new_array = []
  array.each {|elem| new_array<< elem.length}
  new_array #return value very important here, otherwise returns original array
end

puts str_length(['Ruby','Rails','C42'])