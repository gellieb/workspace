# v3 REDO THE RANDOM ASSIGN v1
# v1 ORIGINAL
# Students must present and solve exercises LIVE in class. Fun! 
# Each student will take turns to be assigned a RANDOM exercise that 
# they must then solve. 

# Write a method that assigns random exercises to students. 
# Each time we enter "next", a student and exercise match is shown. 
# No students or exercises should be repeated. 

# HINT: You can try any of these methods if you find them helpful:
#   .delete_at()  .delete()   .pop   .shift    .shuffle
# You may take your answer from the earlier Random Assign exercise
# and modify it for the following Hash data structure:

classes = {
  :students => ["Pearl", "Edwin", "Sam Rho", "Elizabeth", "Mary", "Lydia", "Jonathan"],
  :exercises => ["99 bottles of beer", "deaf grandma", "deaf grandma extended", "leap years", "build sort array", "table of contents revisited", "old school roman numerals", "modern roman numerals"]
}

while classes[:students].length > 0
	response= gets.chomp.downcase
	student= classes[:students].shuffle![0]
	exercise= classes[:exercises].shuffle![0]
	if response == 'next'
		puts "#{student} will present #{exercise}."
		classes[:students].delete_at(0)
		classes[:exercises].delete_at(0)
	end
end





# my_hash = {
#   :students => ["A", "B", "C"],
#   :exercises => ["ant", "bob", "cat", "dog"]
# }

# p my_hash
# p classes[:students][0]
# my_hash.assoc(:students)[1]
