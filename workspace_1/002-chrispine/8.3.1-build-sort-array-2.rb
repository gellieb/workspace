def alphabetized (word_bank)
  word_bank = Array.new
  new_word = gets.chomp
  word_bank.push new_word
    if word.empty?
       word_bank.sort
    end
end
 
 
 
puts "Type as many words as you can."
puts "When you\'re done, just let me know with an empty line!"
puts "Ready??? GO!"
word_bank = []

while true
  new_word = gets.chomp
  word_bank.push new_word
  if new_word.empty?
    puts "Now sorting..."
    puts word_bank.sort
    break
  else 
    puts "Added to list"
  end
end
 

