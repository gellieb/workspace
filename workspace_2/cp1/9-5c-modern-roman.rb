# nalin's solution method-ized


def roman_numeral num
        # the if statement filters out negative and decimal inputs by the user
        if (num <= 0)  || ((num % 1 > 0.0) && (num % 1 < 0.99)) 
            return "ERROR. The number must be a positive integer."
        else
            roman_num = "M" * (num / 1000)
            roman_num = roman_num + "D" * (num % 1000 / 500)
            roman_num = roman_num + "C" * (num % 500 / 100)
            roman_num = roman_num + "L" * (num % 100 / 50)
            roman_num = roman_num + "X" * (num % 50 / 10)
            roman_num = roman_num + "V" * (num % 10 / 5)
            roman_num = roman_num + "I" * (num % 5 / 1)
            
            roman_num.gsub!("DCCCC", "CM")
            roman_num.gsub!("CCCC", "CD")
            roman_num.gsub!("LXXXX", "XC")
            roman_num.gsub!("XXXX", "XL")
            roman_num.gsub!("VIIII", "IX")
            roman_num.gsub!("IIII", "IV")
            return roman_num
        end
end

def roman_input
    puts
    puts "Please enter a number so that I can convert it to modern Roman: "
    num_entered = gets.chomp.to_f
    roman_output = roman_numeral (num_entered)
    puts "In modern Roman, the number will be represented as: #{roman_output}"
    puts
end

roman_input