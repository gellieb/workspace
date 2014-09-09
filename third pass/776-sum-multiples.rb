# Sum of Multiples of 3 and 5
# If we list all the integers below 10 that are multiples of 3 or 5, 
# we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 50 (Answer should eq 593)
# HINT: a splat (asterisk) can create a range like so:  [*1..50]
iter = 0
multiples_set = []
numbers = [*1..50] #[1..50] does not spread out
while iter<50

  if (numbers[iter]%3==0) || (numbers[iter]%5==0)
    multiples_set.push(numbers[iter])
  end
  # puts "multiple set array is: #{multiples_set}"

iter+=1
  
end


# NEW PART OF CODE
iter2 = 0
total = 0
while iter2<multiples_set.length
  total= total + multiples_set[iter2]
  iter2+=1
end
p total
# puts sum_multiples([*1..50]) #=> 593
