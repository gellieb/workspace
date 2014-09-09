# “Whatever you say to Grandma (whatever you type in), 
# she should respond with this:
# HUH?!  SPEAK UP, SONNY!
# unless you shout it (type in all capitals). 

# If you shout, she can hear you (or at least she thinks so)
# and yells back:
# NO, NOT SINCE 1938!

# Have Grandma shout a different year each time, 
# maybe any year at random between 1930 and 1950. 
# (This part is optional and would be much easier if you read 
# the section on Ruby’s random number generator here.) 
# You can’t stop talking to Grandma until you shout BYE.”

# Hint 1: Don’t forget about chomp! 'BYE' with an Enter 
# at the end is not the same as 'BYE' without one!

# Hint 2: Try to think about what parts of your program 
# should happen over and over again. All of those should be 
# in your while loop.

# Hint 3: People often ask me, “How can I make rand give me a 
# number in a range not starting at zero?” Well, you can’t; 
# rand just doesn’t work that way. So, I guess you’ll have to 
# do something to the number rand returns to you.

puts "Hi grandma!"
puts "Hello there, grandbaby"
puts "Did you say something??"

 

while TRUE
gbaby = gets.chomp
     if gbaby == "BYE"
        puts "Bye, darling. I do love when you come see me :)"
        puts "Come see me again soon!"
        break
         
    elsif gbaby != gbaby.upcase
        puts "HUH?!  SPEAK UP, BABY!"
        puts "What\'d you say?"
    else 
        puts "NO, NOT SINCE " + (1930+ rand(21)).to_s + "!"
        puts "hmm??"
    
    end     
end 

#18:03 (unnecessary breaks in loop)
    

