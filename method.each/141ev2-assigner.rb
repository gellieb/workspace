# v2 IMPROVED
# Modify the Original so that if the student is a girl, she doesn't 
# have to do "modern roman numerals". 
# And "deaf grandma" must always precede deaf grandma extended" 
# And  "old school roman numeral" must always precede "modern roman numeral"
# HINT:  You can use  .include?()
# HINT:  Also learn the "next" keyword

students = ["Pearl", "Edwin", "Sam Rho", "Elizabeth", "Mary", "Lydia", "Jonathan"]

exercises = ["99 bottles of beer", "deaf grandma", "deaf grandma extended", "leap years", "build sort array", "table of contents revisited", "old school roman numerals", "modern roman numerals"]



def random_assigner(students, exercises)
  students.shuffle!
  exercises.shuffle!
  student = students[0]
  exercise = exercises[0]
  
  students.length.times do 
    user = gets.chomp.downcase
    if user == "next"
      if (student == "Pearl" || student == "Elizabeth" || student == "Mary" || 
        student == "Lydia") && exercise == "modern roman numerals"
        puts "Let's try a different person."
        next
      elsif exercise == "deaf grandma extended" && exercises.include?("deaf grandma")
        puts "We have to do the simpler version first."
        next
      elsif exercise == "modern roman numerals" && exercises.include?("old school roman numerals")
        puts "We have to do the simpler version first."
        next
      end
    
    puts "#{student} will present #{exercise}"
    
    students.delete(student)
    exercises.delete(exercise)
    end
  end
end
  


random_assigner(students, exercises)

