# Find non-duplicate values in an Array
# Given an Array, return the elements that are present exactly once in the array.
# You need to write a method called non_duplicated_values to accomplish this task.
# Example: Given [1,2,2,3,3,4,5], the method should return [1,4,5]


def non_duplicated_values(values)
  iter = 0
  new_array = []
    while iter < values.count
      if values.count(values[iter]) == 1 
        new_array.push(values[iter])
    
      end
    iter+=1
    end
  
  
  new_array
  
  
end

p non_duplicated_values([1,2,2,3,3,4,5])

