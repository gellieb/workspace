# Write the method 'sum' which takes an array of numbers 
# and returns the sum of the numbers.

def sum(array)
  array.inject(:+) 
  


end

puts sum([12,23,34]) #69
