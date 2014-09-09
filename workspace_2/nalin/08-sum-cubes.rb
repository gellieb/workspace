def sum_of_cubes(a, b)
  count = a
  cube_result = 0
  
  while (count <= b)
    cube_result += count**3
    count += 1
  end
  
  cube_result
end

puts sum_of_cubes(1, 3)  # should equal 36
puts sum_of_cubes(2, 3)  # should equal 35
