# v4 REDO THE RANDOM ASSIGN v3
# You may take your answer from the earlier Random Assign exercise
# and modify it for the following Hash data structure:

classes = {
  :students => {:girls => ["Pearl", "Elizabeth", "Mary", "Lydia"], 
               :boys => ["Edwin", "Sam Rho"]},
  :exercises => ["99 bottles of beer", "deaf grandma", "deaf grandma extended", "leap years", "build sort array", "table of contents revisited", "old school roman numerals", "modern roman numerals"]
}

while (classes[:students][:girls].length) + (classes[:students][:boys].length) > 0
	response = gets.chomp.downcase
	girl = classes[:students][:girls].shuffle![0]
	boy = classes[:students][:boys].shuffle![0]
	exercise = classes[:exercises].shuffle![0]
	if response == 'next'
		next if boy.empty?
		puts "#{girl} will present #{exercise}."
			classes[:students][:girls].delete_at(0)
			classes[:exercises].delete_at(0)
		puts "#{boy} will present #{exercise}."
			classes[:students][:girls].delete_at(0)
			classes[:exercises].delete_at(0)
	end

end
