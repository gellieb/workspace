# Strongly suggest you time yourself and log it your Exercises Log.

# Eventually, someone thought it would be terribly clever 
# if putting a smaller number before a larger one meant 
# you had to subtract the smaller one. 

# As a result of this development, you must now suffer. 
# Rewrite your previous method to return the new-style 
# Roman numerals so when someone calls roman_numeral 4, 
# it should return 'IV'.

def old_roman (num)
  roman = ''
  roman = roman + "M" * (num / 1000)
  roman = roman + "D" * (num % 1000 /500)
  roman = roman + "C" * (num % 500 /100)
  roman = roman + "L" * (num % 100 /50)
  roman = roman + "X" * (num % 50 /10)
  roman = roman + "V" * (num % 10 /5)
  roman = roman + "I" * (num % 5 /1)
  roman
end
def new_roman (num)
  roman_num = old_roman (num)
  roman_num.gsub!("DCCCC", "CM")
  roman_num.gsub!("CCCC", "CD")
  roman_num.gsub!("LXXXX", "XC")
  roman_num.gsub!("XXXX", "XL")
  roman_num.gsub!("VIIII", "IX")
  roman_num.gsub!("IIII", "IV")
  roman_num
end

puts "Give me a number and I\'ll tell you what the Romans said it was."
num = gets.chomp.to_i
puts modern_roman = new_roman(num)