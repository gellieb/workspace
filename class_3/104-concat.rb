# Create a method that takes in an Array of Strings and uses
# inject to return the concatenation of the strings.

# Example:
# concatenate(["Yay ", "for ", "strings!"]) # => "Yay for strings!"

def concatenate(array)
  array.inject do |accum, elem| accum + elem
  end
    
end

puts concatenate(["Yay ", "for ", "strings!"]) == "Yay for strings!" ? "Pass" : "Fail"