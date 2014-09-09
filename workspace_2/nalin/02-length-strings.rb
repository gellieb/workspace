# Find the length of strings in an array

# Problem Statement
# Given an array containing some strings, return an array containing the length of those strings.
# You are supposed to write a method named 'length_finder' to accomplish this task.
# Example:
# Given ['Ruby','Rails','C42'] the method should return [4, 5, 3]


def length_finder(input_array)
  word_length = []
  counter = 0

  while counter < input_array.length
    word_length << input_array[counter].length
    counter += 1
  end

  word_length
end

p length_finder(["Ruby","Rails","C42"])
