# Find the length of strings in an array
# Given an array containing some strings, return an array containing the length of those strings.
# You are supposed to write a method named 'length_finder' to accomplish this task.
# Example:
# Given ['Ruby','Rails','C42'] the method should return [4, 5, 3]

def length_finder(input_array)
  new_array = []
  iterator = 0
  
  while iterator < input_array.length
    new_array << input_array[iterator].length
    iterator += 1
  end
  
  new_array
end

# def length_finder(input_array)
#   new_array = []
#   input_array.each do |word|
#     new_array << word.length
#   end
#   new_array
# end

p length_finder(['Ruby','Rails','C42'])   # [4, 5, 3]
