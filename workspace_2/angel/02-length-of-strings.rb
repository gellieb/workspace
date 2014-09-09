# Find the length of strings in an array

# Problem Statement
# Given an array containing some strings, return an array containing the length of those strings.
# You are supposed to write a method named 'length_finder' to accomplish this task.
# Example:
# Given ['Ruby','Rails','C42'] the method should return [4, 5, 3]

def length_finder(array)
  iterator = 0
  new_array = []
  while iterator < array.length
    new_array << array[iterator].length
    iterator += 1
  end
  new_array
end
puts length_finder(['Ruby','Rails','C42']) # [4,5,3]



# def length_finder(input_array)
#   new_array = []
#   input_array.each {|word| new_array << word.length}
#   new_array
# end


