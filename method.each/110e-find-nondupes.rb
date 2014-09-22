# Find non-duplicate values in an Array
# Given an Array, return the elements that are present exactly once 
# in the array.  Using the #count() method here will be helpful. 

# Example: Given [1,2,2,3,3,4,5], the method should return [1,4,5]

def nondupes(array)
  new_array = []
  array.each do |elem| 
    if array.count(elem) == 1
    new_array << elem 
    end
  end
  new_array
end


puts nondupes([1,2,2,3,3,4,5]) == [1,4,5] ? "pass" : "fail"