def stock_picker(arr)
  low = 0
  max_sum = 0
  sum= 0
  lowest = 0
  highest = 0
  
  while low < (arr.length)
    high = 1
    while high < (arr.length) 
      sum = arr[high] - arr[low]
      if sum > max_sum
        max_sum = sum
        lowest = low
        highest = high
      end
      high+=1
    end
    low+=1
  end
  p max_sum
  return [lowest, highest]
  
end

p stock_picker( [ 44, 30, 24, 32, 35, 30, 40, 38 ] )

