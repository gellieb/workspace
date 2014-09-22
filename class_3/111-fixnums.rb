# Create a method that returns true if all the elements of an array are Fixnums.
# Example:   Given [1,2,3], the method should return true

# HINT: There's a method called is_a?() where 5.is_a?(Fixnum) would eq TRUE. 

def fixnum_yes?(array)
    array.each { |elem| return FALSE if elem.is_a?(Fixnum) == FALSE }
    TRUE #default value is TRUE
end 


puts fixnum_yes?([1,"g",3])
puts fixnum_yes?([190])
puts fixnum_yes?(["",1,2,3])

# def fixnum_yes?(array)
#     new_array = []
#     array.each do |elem|
#       new_array << elem.is_a?(Fixnum)
#         return FALSE if elem.is_a?(Fixnum) == FALSE
#     end
#     TRUE #default value is TRUE
# end 




# def fixnum_yes?(array)
#     new_array = []
#     array.each do |elem|
#       new_array << elem.is_a?(Fixnum)
#         if elem.is_a?(Fixnum) == FALSE
#           return FALSE
#         else 
#           TRUE
#         end
#     end

#     new_array
# end 



# def fixnum_yes?(array)
#     new_array = []
#     array.each do |elem|
#       new_array << elem.is_a?(Fixnum)
#     end

#     if new_array.include?(FALSE)
#       return FALSE
#     else 
#       TRUE
#     end    
#     new_array
# end 


