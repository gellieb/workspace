# What if Grandma doesn’t want you to leave? 
# When you shout BYE, she could pretend not to hear you. 
# Change your previous program so that you have to shout 
# BYE three times in a row. Make sure to test your program: 
# if you shout BYE three times but not in a row, you should 
# still be talking to Grandma.”

puts "Hi grandma!"
puts "Hello there, grandbaby"
puts "Did you say something??"
count = 0  

 

while TRUE
gbaby = gets.chomp
    if gbaby == "BYE"
        count = count + 1 
    else gbaby != "BYE"
        count = 0 
    end 
    if count >=3 
            puts "Bye, darling. I do love when you come see me :)"
            puts "Come see me again soon!"
            break
    end
        
         
    if gbaby != gbaby.upcase
        puts "HUH?!  SPEAK UP, BABY!"
        puts "What\'d you say?"
    else 
        puts "NO, NOT SINCE " + (1930+ rand(21)).to_s + "!"
        puts "hmm??"
    
    end     
end 


#11:40 (define count=0 at start & if not 3 consecutive 'BYE's)