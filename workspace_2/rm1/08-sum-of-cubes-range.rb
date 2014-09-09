# Compute sum of cubes for given range
# Compute the sum of cubes for a given range a through b.
# Write a method called sum_of_cubes to accomplish this task
# Example Given range 1 to 3 the method should return 36

def sum_of_cubes(a, b)
  iterator = a
  sum = 0
  while iterator <= b 
    sum = sum + iterator ** 3
    iterator += 1
  end
  sum
end

puts sum_of_cubes(1, 3)  # should equal 36
