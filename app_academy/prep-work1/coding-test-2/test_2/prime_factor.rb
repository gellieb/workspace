# You have 25 minutes to do this.

# Largest prime factor

# Create a method that can determine the largest prime factor of a number.
# Using your method, find the largest prime factor for number 13195.

def largest_prime_factor(n)
  i = 1
  # factor = 0 
  i_arr = []
  while  (i < n) 
  
    if n%i == 0
      i_arr << i
    end
    i+=1
  end
  
  largest_factors = i_arr.select {|prime|  is_prime?(prime)}
  return largest_factors[-1]
 
end


def is_prime?(n)
  i = 2
  while i < n
    if n%i == 0 
    
    return false
    end
    i+=1
  end
  
  true
end


p is_prime?(2639)
p largest_prime_factor(13195)