# Fizzbuzz

# Write a program that takes in an argument 'max' and 
# then puts the numbers from 1 to 'max.' 
# But for multiples of three print “Fizz” instead of the 
# number and for the multiples of five print “Buzz”. 
# For numbers which are multiples of both three and five 
# print “FizzBuzz”


def fizzbuzz(max)
  array = [*1..max]
  iter = 0 
  while iter < array.length
    if array[iter]%3==0 && array[iter]%5==0
      array[iter]= "fizzbuzz"
    elsif array[iter]%3==0 
      array[iter] = "fizz"
    elsif array[iter]%5==0
      array[iter] = "buzz"
    end

    iter+=1
  end
  array
end

puts fizzbuzz(20)