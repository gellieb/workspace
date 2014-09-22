# Find non-duplicate values in an Array
# Given an Array, return the elements that are present exactly once in the array.
# Can you use any of these methods: #count()

# Example: Given [1,2,2,3,3,4,5], the method should return [1,4,5]

def find_nondupes(array)
    new_array = []
    array.each do |element|
      if array.count(element) == 1
        new_array << element
      end
    end
    new_array
end

puts find_nondupes([1,2,2,3,3,4,5]) #[1,4,5]