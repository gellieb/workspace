# Compute sum of cubes for given range
# Compute the sum of cubes for a given range a to b.
# Write a method called sum_of_cubes to accomplish this task
# Example: Given range 1 to 3 the method should return 36
# Example: Given range 2 to 3 the method should return 35

def sum_of_cubes(a,b)
  iter = a 
  total = 0
  if a > b 
    return "Please set b to be bigger than a."
  end
  while iter <= b 
    total = total + iter**3
    iter+=1
  end
  total
end


puts sum_of_cubes(5,3)
puts sum_of_cubes(1,3) #36
puts sum_of_cubes(2,3) #35