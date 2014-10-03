# Towers of Hanoi

# Write a Towers of Hanoi game  http://en.wikipedia.org/wiki/Towers_of_hanoi 

# Keep three arrays, which represents the piles of discs. Pick a
# representation of the discs to store in the arrays; maybe just a
# number representing their size.

# In a loop, prompt the user (using gets)
# and ask what pile to select a disc from, and where to put it.

# After each move, check to see if they have succeeded in moving 
# all the discs, to the final pile. If so, they win!

# HINT: Do a LOT of IRB or PRY in order to figure out proper way to maneuver through hashes.

# The objective of the puzzle is to move the entire stack to another rod, obeying the following simple rules:

# Only one disk can be moved at a time.
# Each move consists of taking the upper disk from one of the stacks and placing it on top of another stack i.e. a disk can only be moved if it is the uppermost disk on a stack.
# No disk may be placed on top of a smaller disk.


tower1= [3,2,1]
tower2= []
tower3= []

tower_set = {
	1=>tower1,
	2=>tower2,
	3=>tower3
}
while 