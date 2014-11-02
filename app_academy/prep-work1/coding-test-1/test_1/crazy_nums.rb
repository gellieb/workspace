# crazy_nums
# Write a method crazy_nums that takes a number, 
# max, and returns an array of the integers that

# ARE less than max
# AND ARE divisible by either three or five
# BUT ARE NOT divisible by both three and five
# You may wish to use the modulo operation: 5 % 2 returns the remainder 
# when dividing 5 by 2: 1. If num is divisible by i, then num % i == 0.

# crazy_nums(3) == []
# crazy_nums(10) == [3, 5, 6, 9]
# crazy_nums(20) == [3, 5, 6, 9, 10, 12, 18]

def crazy_nums(max)
	iter =0
	arr = []
	while iter < max
		if iter%3==0 &&iter%5==0 
			iter +=1
		elsif iter%3==0 || iter %5 == 0
			arr<< iter 
		end
		iter+=1
	end
	arr 
end





p crazy_nums(3)
p crazy_nums(10) 
p crazy_nums(20)