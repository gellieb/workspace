# v1 ORIGINAL
# Students must present and solve exercises LIVE in class. Fun! 
# Each student will take turns to be assigned a RANDOM exercise that 
# they must then solve. 

# Write a method that assigns random exercises to students. 
# Each time we enter "next", a student and exercise match is shown. 
# No students or exercises should be repeated. 

# HINT: You can try any of these methods if you find them helpful:
#   .delete_at()  .delete()   .pop   .shift    .shuffle

students = ["Pearl", "Edwin", "Sam Rho", "Elizabeth", "Mary", "Lydia", "Jonathan"]

exercises = ["99 bottles of beer", "deaf grandma", "deaf grandma extended", "leap years", "build sort array", "table of contents revisited", "old school roman numerals", "modern roman numerals"]


def random_assigner(students, exercises)
  students.shuffle!
  exercises.shuffle!
  
  

  students.length.times do 
    puts "#{students.shift} will present #{exercises.shift}" if user == "next"
    user=gets.chomp.downcase
  end
end
  


random_assigner(students, exercises)








# iter = 0
# while iter < 7
#   p "The next person will be..."
#   user = gets.chomp.downcase
#   student = students.shuffle[0]
#   exercise = exercises.shuffle[0]
#   if user == 'next'
#     p student + " presenting " + exercise
#     students.shift
#     exercises.shift
#     p students
#     p exercises
#   end
#   if students.length == 0
#     break
#   end
#   iter +=1
# end
