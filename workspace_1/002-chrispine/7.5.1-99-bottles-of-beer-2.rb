# Write a program that prints out the lyrics 
# to that beloved classic, “99 Bottles of Beer on the Wall.”

# THE SONG SHOULD PRINT LIKE SO:
# 99 bottles of beer on the wall, 99 bottles of beer.
# Take one down and pass it around, 98 bottles of beer on the wall.
#
# 98 bottles of beer on the wall, 98 bottles of beer.
# Take one down and pass it around, 97 bottles of beer on the wall.
#
# (...and so on until...)
#
# 1 bottle of beer on the wall, 1 bottle of beer.
# Take one down, pass it around, no more bottles of beer on the wall.

beer_count= 100
count = beer_count - 1 

while TRUE
    count > 1 
    puts count.to_s  + " bottles of beer on the wall, " + count.to_s + " bottles of beer."
    puts "Take one down and pass it around,"
    count = count - 1
    puts count.to_s + " bottles of beer on the wall."
    
    
    if count == 1 
        puts "1 bottle of beer on the wall, 1 bottle of beer."
        puts "Take one down, pass it around, no more bottles of beer on the wall."
    break 
    end
    
end 

#11:19