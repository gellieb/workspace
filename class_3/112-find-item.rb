# Create the method 'find_item' that takes a list of items and 
# searches for a target item from within it. Return the order 
# number in the list where the target item first occurs

# Eg, in ["a", "b", "c"], for target "b" the order number returned is 2. 



def find_item(target, array)
  array.each do |elem| 
    return array.index(elem)+1 if elem==target 
  end
  
end

puts find_item("b", ["a", "b", "c"])



# def find_item(target, array)
#   new_array = []
#   array.each do |elem| 
#     new_array << (array.index(elem)+1) if elem==target 
#   end
#   new_array
    
    
# end

# puts find_item("b", ["a", "b", "c"])
