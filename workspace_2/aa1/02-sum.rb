# Write the method 'sum' which takes an array of numbers 
# and returns the sum of the numbers.

# def sum(arr)
#   total = 0
#   arr.each{|num| total=total+num}
#   total
# end


def sum(arr)
  total = 0
  iterator = 0
  
  while iterator < arr.size #4 #need to take out the = otherwise iter can be > arr.size
    total = total + arr[iterator]
    iterator +=1
  end
  total  
end

arr = [2,3,4,5]
puts "let's add up some numbers"
puts "the sum of #{arr.join("+")} is "
puts sum(arr)  #14


#   total = 0
#   while true
#     set = gets.chomp.to_i
#     array = []
#     array << set 
#     if set != "DONE" 
#       array.pop
#       total = total + array.each {|num|   
#       if set == "DONE"
#         break
#       end
#     elsif set != "DONE" || set.class != Fixnum
#       puts "that's not a number."
#     end
#   end
#   total
# end


# puts sum 
