puts "Hey! Type in as many words as you want, in any order you want, "
puts "and I'll sort them all for you in alphabetical order."
puts "Here\'s the drill though: one word per line and when you\'re done, "
puts "just press 'Enter' on an empty line. I'll do the rest."
puts "Are you ready??"
puts 


words = []
while true
    word = gets.chomp
    if word.empty?
        break
    end 

    words.push word
end
    puts "Ok. I\'m sorting..."
    puts 
    puts "Here you go!"
    puts words.sort
    