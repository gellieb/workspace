# Smallest multiple

# Create method(s) to solve this.

# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?



def smallest_multiple(max)
  i = max
  arr = [*1..max]
  
  while true
    divisible_by_all = true

    arr.each do |num|
      if i%num != 0
        divisible_by_all = false
      end
    end
    
    return i if divisible_by_all == true
    
    i+=1
  end

  
end

p smallest_multiple(13)