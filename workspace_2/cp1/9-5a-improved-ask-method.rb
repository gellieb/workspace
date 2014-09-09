# These exercises are excerpted from Chris Pine's excellent book called 'Learn to Program.'' 
# Read it at  https://pine.fm/LearnToProgram/
# Buy it at  http://pragprog.com/book/ltp2/learn-to-program

# That ask method I showed you was OK, but I bet you could do 
# better. Try to clean it up by removing the answer variable. 
# You’ll have to use return to exit from the loop. 
# (Well, it will get you out of the whole method, but it will 
# get you out of the loop in the process.) How do you like 
# the resulting method? I usually try to avoid using return 
# (a personal preference), but I might make an exception here.


def ask question
  while true
    puts question
    reply = gets.chomp.downcase
    if (reply == 'yes' || reply == 'no')
      if reply == 'yes'
        answer = true
      else
        answer = false
      end
      break
    else
      puts 'Please answer "yes" or "no".'
    end
  end
  answer
end

puts 'Hello, and thank you for...'
puts
ask 'Do you like eating tacos?'       #  Ignore this return value
ask 'Do you like eating burritos?'    #  And this one
wets_bed = ask 'Do you wet the bed?'  #  Save this return value
ask 'Do you like eating chimichangas?'
ask 'Do you like eating sopapillas?'
puts 'Just a few more questions...'
ask 'Do you like drinking horchata?'
ask 'Do you like eating flautas?'
puts
puts 'DEBRIEFING:'
puts 'Thank you for...'
puts
puts wets_bed

