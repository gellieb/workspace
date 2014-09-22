# Create the method 'find_item' that takes a list of items and 
# searches for a target item from within it. Return the order 
# number in the list where the target item first occurs.
# The #index() method will be helpful here.

# Eg, in ["a", "b", "c"], for target "b" the order number returned is 2. 


def find_item(array, target)
  array.select do |elem| elem== target
    return array.index(target)+1
  end




end

puts find_item(["a", "b", "c"], "b")