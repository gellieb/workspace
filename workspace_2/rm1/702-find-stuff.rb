# Create the method 'find_item' that takes a list of items and 
# searches for a target item from within it. Return the order 
# number in the list where the target item first occurs
# ex. 'the' in ["this", "the", "that"] should eq. 2
# ex. 'the' in ["cat", "in", "the", "hat", "the"] should eq. 

def find_item(word, array)
  iter = 0
  while iter < array.length
    # is "this" same as "the"?
    if word == array[iter]
      return iter + 1 #in this case, iter +1 will add 1 to the position number
    end

    iter += 1
  end
  puts "#{word} doesn't exist"
end


puts find_item('the', ["this", "that"])