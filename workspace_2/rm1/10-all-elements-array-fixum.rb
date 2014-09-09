# These exercises are from https://rubymonk.com/
# execute the method to test results
# ENTER YOUR TIME


# Check if all elements in an array are Fixnum

# Problem Statement
# Given an array, return true if all the elements are Fixnums.

# You need to write array_of_fixnums? method to accomplish this task.

# Example:
# Given [1,2,3], the method should return true



def array_of_fixnums?(array)
iterator = 0
  while iterator < array.length 
    if array[iterator].class != Fixnum
      return false
    end
    iterator += 1 
    if array[iterator].class == Fixnum
      return true
    end
  
  end
array
end

puts array_of_fixnums?([2, 3, 4])

puts array_of_fixnums?([2,"f", 3])

# 45"