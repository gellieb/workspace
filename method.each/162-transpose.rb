# My Transpose

# To represent a matrix, or two-dimensional grid of numbers, 
# we can write an array containing arrays which represent rows:

rows = [[0, 1, 2], 
        [3, 4, 5], 
        [6, 7, 8]]

row1 = rows[0]
row2 = rows[1]
row3 = rows[2]

# We could equivalently have stored the matrix as an array of columns:

cols = [[0, 3, 6],
        [1, 4, 7],
        [2, 5, 8]]

# Write a method, my_transpose, which will convert between the
# row-oriented and column-oriented representations.

# Here's a short video of what transpose does:
# https://www.youtube.com/watch?v=djv9V-DFB_Q


rows = [[0, 1, 2], 
        [3, 4, 5], 
        [6, 7, 8]]


def my_transpose(array)
  iter = 0
  new_array = []
  
  while iter < array.length
  inner_arr = []
  inner_iter = 0
    while inner_iter<array.length
    inner_arr << array[inner_iter][iter]
    
    inner_iter+=1
    end
    p inner_arr
    new_array << inner_arr
    iter +=1
  end
  
p inner_arr
p new_array
new_array

end


p my_transpose(rows)
# => inner array= 
# [0, 3, 6]
# [1, 4, 7]
# [2, 5, 8]


#new_array = columns
#[[0, 3, 6], [1, 4, 7], [2, 5, 8]]
p my_transpose(my_transpose(rows))
# => rows