# TROUBLESHOOT THIS. Run it a bunch of times, it runs funny. 
# Figure out what the problem is and solve it.

def guess_game
	the_number = rand(1..50)

	puts "guess the number! 1- 50"
	puts "you have three guesses"
	puts "(logging the number: #{the_number})"  # Log used for testing

	iter = 0

	until iter == 3
		guess = gets.chomp.to_i
		if guess == the_number
			puts "you win!"
			break
		elsif iter == 2 && (guess == the_number+1 || guess == the_number-1)
			puts "close enough. you win!"
		elsif iter == 2
			puts "you lose. correct number was #{the_number}"
		elsif guess < the_number
			puts "guess higher!"
		elsif guess > the_number
			puts "guess lower!"
		end

		iter +=1
	end

end

guess_game

#just added () around the nested conditional 