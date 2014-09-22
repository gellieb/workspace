# Implement a Bubble sort in a method #bubble_sort
# that takes an Array and modifies it so that it is in sorted order.
# Bubble sort visualization:  https://www.youtube.com/watch?v=aXXWXz5rF64
# wiki-bubble-sort:  http://en.wikipedia.org/wiki/bubble_sort

# Bubble sort, sometimes incorrectly referred to as sinking sort, is 
# a simple sorting algorithm that works by repeatedly stepping through
# the list to be sorted, comparing each pair of adjacent items and
# swapping them if they are in the wrong order. The pass through the
# list is repeated until no swaps are needed, which indicates that the
# list is sorted. The algorithm gets its name from the way smaller
# elements "bubble" to the top of the list. Because it only uses
# comparisons to operate on elements, it is a comparison
# sort. Although the algorithm is simple, most other algorithms are
# more efficient for sorting large lists.


def bubble_sort(array)
  
  swapped = true
  while swapped do
    swapped = false
    0.upto(array.size-2) do |num| #the minus 2 is because currently the array size if 6. position wise, that would be 0-6.
      #then the total number of compared pairs would be *5*. hence the -2.
      if array[num] > array[num+1]
        array[num], array[num+1] = array[num+1], array[num]
          swapped = true
      end
    end
  end
 array
end

puts bubble_sort([6,7,2,4,1,3,5])





# def bubble_sort
  
#   0.upto(array.size-2) do |num| #the minus 2 is because currently the array size if 6. position wise, that would be 0-6.
#     #then the total number of compared pairs would be *5*. hence the -2.
#     if array[num] > array[num+1]
#       array[num], array [num+1] = array[num+1], array[num]
#     end
#   end
    
# array
# end

# puts bubble_sort([6,7,2,4,1,3,5])