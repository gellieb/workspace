# Write the method 'sum' which takes an array of numbers 
# and returns the sum of the numbers.

def add(array)
  sum = 0
  array.each {|x|  sum+= x}
  puts sum


end

puts add([12,23,34]) #69
