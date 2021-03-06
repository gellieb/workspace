# Time: You have 15 minutes

# Even Fibonacci numbers

# Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:

# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

# By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.

# Angel's time: 17 minutes

def fib
  
  nums = []
  first_idx = 1
  next_idx = 1
  current_idx = first_idx +next_idx
  
    nums << next_idx
  while current_idx < 4000000 do
    nums << current_idx
    first_idx = next_idx
    next_idx = current_idx
    current_idx = first_idx +next_idx
  end
  nums
end

def even_fib
  even_nums = []
  fib.select do |num|
    if num%2 == 0 
      even_nums << num
    end
  end
  even_nums.inject(&:+)
end

p fib 
p even_fib