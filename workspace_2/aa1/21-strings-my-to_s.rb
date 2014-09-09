# Estimated total time for all TWO String Exercises: 1hr

# Your own to_s method

# In this exercise, I'd like you to write a method 
# num_to_s(num, base), which will convert a number to a string in 
# a different base. For instance, 
    # num_to_s(123, 10) == "123"
    # num_to_s(4, 2) == "100"
# It should work for bases up to 16 (hexadecimal).

# You can also think of writing numbers in bases like this.
    # 123 in base 10 = 1*10^2 + 2*10^1 + 3*10^0
    # 8 in base 2 = 1000 = 2^3*1 + 2^2*0 + 2^1*0 + 2^0*0
    # 6 in base 2 = 110 = 2^2*1 + 2^1*1 + 2^0*0
    # 10 in base 3 = 101 = 1*3^2 + 0*3^1 + 1*3^0

# You should not call the built-in to_s yourself. To get around 
# this restriction you might either:
# - Have a giant `case`/`when` switch (ugly; no!)
# - Create a `Hash` where the keys are digit numbers and the 
# values are the digit strings (for bases > 10 this will involve 
# some characters; hex digits go up to 'f').

# You will want to use the %, or modulus function; this finds the
# remainder when you divide by a number:

    # (123 / 10**0) % 10 == 3 # ones place
    # (123 / 10**1) % 10 == 2 # tens place
    # (123 / 10**2) % 10 == 1 # hundreds place

# Notice that %10 gives you the ones place, in decimal. Why? 
# Then you can *shift* the ones place off by dividing by 10; 
# this rounds down, leaving you with everything except the ones.

# The same logic applies for binary (base 2); but instead of the 
# base being ten, you use two instead. Then you find the digits in 
# the ones place, twos place, eights place, etc.


