# # Create the method 'find_item' that takes a list of items and 
# # searches for a target item from within it. Return the order 
# # number in the list where the target item first occurs

# # Eg, in ["a", "b", "c"], for target "b" the order number returned is 2. 
# #1:36

# def find_item(array, target)
#   iter = 0
#   while iter<array.length
#     if array[iter]==target
#       return iter + 1
#     end
#     iter+= 1
#     # if array[iter] !=target
#     #   return "There is no #{target} in this array"
#     # end
#   end
#   nil # return nil to mean item not found
# end

# p find_item(["a", "c", "b"], "b")
# p find_item(["a", "c", "c"], "b")

# #4"  (how to state when there isn't a target in array)

def find_item(target,list)
  counter = 0
  all_positions = []

	while counter < list.length
		if list[counter] == target
			all_positions << counter
			#p counter
			
		end
		counter +=1
	end
p all_positions
  
end

puts find_item(2,[1,3,4,6,2,5,4,2,2,2]) 
# how to collect positions of all targets, not just the first