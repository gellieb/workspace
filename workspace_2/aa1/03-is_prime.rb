# Write the method 'is_prime?' that takes a number num 
# and returns true if it is prime and false otherwise.
# You may use modulus (5 % 2) which returns the remainder when 
# dividing 5 by 2: 1. If num is divisible by i, then num % i == 0. 
# (You are not expected to know about modulo for code school tests)

# def is_prime?(num)
#   i = 1
#   while i<= num
#   puts "Give me a number and I'll tell you if it\'s a prime number."
#   num = gets.chomp.to_i
  
#     if num%i ==0
#       i += 1
#       return "#{num} is a prime number"
#     else
#       return "#{num} is not a prime number"
#     end 
#   end 
# end

def is_prime?(num)
  iter = 1

  while iter < num
    if num%iter== 0 && iter != 1 && iter != num
      return "you're not a prime"  #return gets out of entire method/completely stops iteration
    end 
    iter += 1 #increase iter at the end of if conditional but within the while loop
  end    
  puts "you're a prime!"  
end


puts is_prime?(13)
puts is_prime?(27)
puts is_prime?(50)

