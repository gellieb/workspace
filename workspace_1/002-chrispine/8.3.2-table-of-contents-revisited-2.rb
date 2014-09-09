# Strongly suggest you time yourself and log it your Exercises Log.

# Rewrite your table of contents program here. 
# Start the program with an array holding all of the information 
# for your table of contents (chapter names, page numbers, 
# and so on). Then print out the information from the array 
# in a beautifully formatted table of contents.


title    = 'Table of Contents'
chapters = [['Chapter 1: Getting Started', 'Page 1'],
          ['Chapter 2: Numbers',           'Page 9'],
          ['Chapter 3: Letters',           'Page 13']]

# start your answer below...

title = 'Table of Contents'
chapters = ["Chapter 1: Getting Started", "Page 1", "Chapter 2: Numbers", "Page 9", "Chapter 3: Letters", "Page 13"]
puts title.center (50)
puts chapters[0].ljust(25) + chapters[1].rjust(25)
puts chapters[2].ljust(25) + chapters[3].rjust(26)
puts chapters[4].ljust(25) + chapters[5].rjust(27)

#9:01