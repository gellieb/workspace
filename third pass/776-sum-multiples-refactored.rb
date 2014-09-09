# Sum of Multiples of 3 and 5
# If we list all the integers below 10 that are multiples of 3 or 5, 
# we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 50 (Answer should eq 593)
# HINT: a splat (asterisk) can create a range like so:  [*1..50]
iter = 0
numbers = [*1..50] #[1..50] does not spread out
total = 0

while iter<numbers.length
  if (numbers[iter]%3==0) || (numbers[iter]%5==0)
    total = total + numbers[iter]
  end
    iter+=1
  

end
p total



