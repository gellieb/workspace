# Implement a Caesar cipher.  
#  Example: caesar("hello", 3)  # => "khoor"`

#  * Assume the text is all lower case letters.
#  * You'll probably want to map letters to numbers (so you can shift
#    them). You can do this mapping yourself, but you may also want to
#    use the ASCII codes, which are accessible through String#each_byte.
#  * You will probably also want to use String#ord and Fixnum#chr.
#  * Important point: ASCII codes are all consecutive!
#  * Lastly, be careful of the letters at the end of the alphabet, like "z"!

## Resources
#  http://en.wikipedia.org/wiki/Caesar_cipher
#  http://www.ruby-doc.org/core-1.9.3/String.html
#  http://en.wikipedia.org/wiki/Ascii


def caesar(string, number)
	str = string.downcase.split("")
	arr = []
	str.each do |c| 
		if (c.ord + number) > 122 
			arr << (97 + ((c.ord + number)%122) - 1).chr
		else 
			arr << (c.ord + number).chr
		end
	end
	p arr.join
	
end


# REFACTORED
def caesar(string, number)
	str = string.downcase.split("")
	arr = []
	str.each do |c| 
	(c.ord + number) > 122 ? (arr << (97 + ((c.ord + number)%122) - 1).chr) : (arr << (c.ord + number).chr)
   # condition ? true result : false result

	end
	p arr.join
	
end



caesar("hello", 3) == "khoor" ? "pass" : "fail"
caesar("zebra", 3) == "cheud" ? "pass" : "fail"
caesar("xenon", 3) == "ahqrq" ? "pass" : "fail"



