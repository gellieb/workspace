# Strongly suggest you time yourself and log it your Exercises Log.

# Rewrite your table of contents program here. 
# Start the program with an array holding all of the information 
# for your table of contents (chapter names, page numbers, 
# and so on). Then print out the information from the array 
# in a beautifully formatted table of contents.

# Use these methods: #each, #ljust, #rjust

# Tip: It's easier to take this step by step. First, try outputing what you want without using the #each method. Use this first solution as a reference when you redo it with the #each method. 

title    = "Table of Contents"
chapters = [["Chapter 1: Getting Started",   "Page 1"],
            ["Chapter 2: Numbers",           "Page 9"],
            ["Chapter 2: Letters",           "Page 13"],
            ["Chapter 3: Arithmetic",        "Page 22"],
            ["Chapter 4: Puts and Gets",     "Page 29"]]

puts title.center(50)

# start your answer below...

chapters.each do |chapter|
  puts chapter[0].ljust(30) + chapter[1].rjust(20)
end
