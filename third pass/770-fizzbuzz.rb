# Fizzbuzz

# Write a program that takes in an argument 'max' and 
# then puts the numbers from 1 to 'max.' 
# But for multiples of three print “Fizz” instead of the 
# number and for the multiples of five print “Buzz”. 
# For numbers which are multiples of both three and five 
# print “FizzBuzz”

def fizzbuzz(max)
  iter= 1
  while iter<=max
    if iter%3==0 && iter%5==0
      puts "fizzbuzz"
    elsif iter%3==0
      puts "fizz"
    elsif iter%5==0
      puts "buzz"
    else 
      puts iter
    end
    iter+=1
  end
end

fizzbuzz(20)