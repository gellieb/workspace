# Estimated total time for all THREE Hash Exercises: 30min

# Set

# In Math a Set is an exclusive list of numbers. Examples are the 
# best way to show this.

# {3,5,6} is a set. 
# {3,5,6,6} is not. 

# In a set, order does not matter. So, {5,3,6} is the same as the one 
# above. So, you can see, the actual index or order of these numbers 
# do not matter, as they would were they to be held in an array. 

# Ruby provides a class named Set in its Standard Library. You can 
# read all about it in ruby-doc. Let's make a set of methods that 
# will manipulate a Hash as if it were a Set.  Like so:

# Note these should be safe methods (no !)

# set_add_el({}, :x)                     # => {:x => true}
# set_add_el({:x => true}, :x)           # => {:x => true} # This should automatically work if the first method worked
# set_remove_el({:x => true}, :x)        # => {}
# set_list_els({:x => true, :y => true}) # => [:x, :y]
# set_member?({:x => true}, :x)          # => true
# set_union({:x => true}, {:y => true})  # => {:x => true, :y => true}
# set_intersection                       # I'm not going to tell you how the last two work
# set_minus                              # Return all elements of the first array that are not in the second array, not vice versa

# Note: 'true' is just used as a placeholder value. 

# We could have defined a class named `Set`, and these methods would
# have been instance methods. We don't define a new class here 
# because I want you to see how you can do this with just methods, 
# and hijack the Ruby `Hash` class to represent your set.


