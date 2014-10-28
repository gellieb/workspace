# U2.W5: Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input:
# Output:
# Steps:


# 3. Initial Solution

# Don't forget to check on intialization for a card length
# of exactly 16 digits
class CreditCard
	def initialize(card)
		@card = card

		if @card.to_s.length > 16
			raise ArgumentError.new("Credit Card number is not 16 digits.")
		end
		if @card.to_s.length < 16
		# if (Math.log10(@card).to_i +1) < 16
			raise ArgumentError.new("Credit Card number is not 16 digits.")
		end
	end

	def check_card

		self.doubles_from_first
		self.sum_digit
# 		@doubled_arr = []
# 		@sum = ""
# 		@arr = @card.to_s.split("")
# 		@arr.each do |digit|
# # p @arr.index(digit)
# 			if @arr.index(digit)%2 == 0 || @arr.index(digit) == 0
# 				@doubled_arr << digit.to_i*2
# 			else @arr.index(digit)%2 == 1
# 				@doubled_arr << digit.to_i
# 			end
# 		end

# 		@resplit = @doubled_arr.join.split("")
# 		@mapped = @resplit.map{|x|x.to_i}
# 		@sum = @mapped.inject(:+)
# 	p @resplit
# 	p @mapped
# 	p @sum		
# 		return false if @sum.to_i % 10 != 0
# 		return true if @sum.to_i % 10 == 0
		
	end

	def doubles_from_first
		@doubled_arr = []
		@arr = @card.to_s.split("")
		iter = 0
		while iter < @arr.length
		# p @arr[iter]
			if iter == 0 || iter%2 == 0 
				@doubled_arr << @arr[iter].to_i*2
				iter+= 1
			elsif iter%2 == 1 || iter== 1
				@doubled_arr << @arr[iter].to_i
				iter+=1
			end
			
		end
		@doubled_arr
	end

	def sum_digit
		@sum=	@doubled_arr.join.split("").map{|x|x.to_i}.inject(:+)
		return false if @sum.to_i % 10 != 0
		return true if @sum.to_i % 10 == 0

	end





end


# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection 