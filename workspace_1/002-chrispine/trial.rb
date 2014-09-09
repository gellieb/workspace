def alphabetized (new_word)
  a = Array.new
    while true
      new_word = gets.chomp
      a.push new_word
      if new_word.empty?
        puts "Now sorting..."
        puts a.sort
        break
      else
        puts "Added. Next!"
      end
    end
end
 
puts "Type as many words as you can."
puts "When you\'re done, just let me know with an empty line!"
puts "Ready??? GO!"
new_word = gets.chomp
return alphabetized(new_word)
