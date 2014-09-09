# POW

# Write the method 'pow' that takes two numbers (non-negative, 
# integer) numbers, base and exponent and returns base raised to the 
# exponent power. (You cannot use Ruby's '**' notation).


def pow(base, exponent)
  count = 0
  result = 1
  while count < exponent
    result = result* base
    count +=1
  end
  result
  #power = base.times exponent
end


puts pow(2,3)