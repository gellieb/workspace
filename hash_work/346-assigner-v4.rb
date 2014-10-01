# v4 REDO THE RANDOM ASSIGN v3
# You may take your answer from the earlier Random Assign exercise
# and modify it for the following Hash data structure:
require 'pry'

classes = {
  :students => {:girls => ["Pearl", "Elizabeth", "Mary", "Lydia"], 
               :boys => ["Edwin", "Sam Rho", "Jonathon"]},
  :exercises => ["99 bottles of beer", "deaf grandma", "deaf grandma extended", "leap years", "build sort array", "table of contents revisited", "old school roman numerals", "modern roman numerals"]
}
puts "Type 'next' to see who will be presenting next"
puts
until classes[:students][:girls].empty? && classes[:students][:boys].empty? 
	response = gets.chomp.downcase
	girl = classes[:students][:girls].shuffle![0]
	boy = classes[:students][:boys].shuffle![0]
	exercise_arr= classes[:exercises].shuffle!
	exercise1 = exercise_arr[0]
	exercise2 = exercise_arr[1]

	if response == 'next' && !classes[:students][:boys].empty?
		puts "#{boy} will present #{exercise1}."
			classes[:students][:boys].delete_at(0)
			classes[:exercises].delete(exercise1)
	end

	if response == 'next'
		puts "#{girl} will present #{exercise2}."
			classes[:students][:girls].delete_at(0)
			classes[:exercises].delete(exercise2)
	end
	


p classes
puts

end






# while classes[:students].length > 0
# 	response= gets.chomp.downcase
# 	student= classes[:students].shuffle![0]
# 	exercise= classes[:exercises].shuffle![0]
# 	if response == 'next'
# 		puts "#{girl} will present #{exercise}."
# 		classes[:students].delete_at(0)
# 		classes[:exercises].delete_at(0)
	
	# puts "#{boy} will present #{exercise}."

# 	end
# end
