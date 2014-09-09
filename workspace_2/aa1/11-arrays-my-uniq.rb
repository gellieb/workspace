# Estimated total time for all FOUR Array Exercises: 2hrs

# My uniq (remove dupes)

# Array has a `uniq` method that removes duplicates from an
# array. It returns the unique elements in the order in which
# they first appeared:
# [1, 2, 1, 3, 3].uniq # => [1, 2, 3]

# Write your own `uniq` method, called `my_uniq`; it should 
# take in an Array and return a new array. It should not call 
# uniq.

# One special feature of Ruby classes is that they are *open*; 
# we can add new methods to existing classes. Here, add your 
# my_uniq method to Array:

# This is also called *monkey patching*, and it is often 
# frowned upon to, after-the-fact, add new methods to a class. 
# However, it is occasionally useful and interesting to try out.

# NOTE: You may solve this problem without using the below 
# class monkey patch if you prefer not to (just delete below). 


class Array
  def my_uniq
    # ...
  end
end

