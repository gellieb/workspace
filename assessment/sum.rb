# Write the method 'sum' which takes an array of numbers 
# and returns the sum of the numbers.

def sum(array)
  iter=0
  results = 0
  while iter < array.length
    results = results +  array[iter]
    iter+=1
  
  end
  results
end

puts sum([1,2,3])