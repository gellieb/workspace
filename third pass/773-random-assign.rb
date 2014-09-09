# The students have to solve some exercises live in class. Fun! A student
# will present his/her solution to an exercise, followed by another and so on.
# Create a program that assigns random exercises to students in random order. 
# Each time we enter "next", a student and exercise match is shown. 
# No students or exercises should be repeated. 

students = ["Pearl", "Edwin", "Sam Rho", "Elizabeth", "Mary", "Lydia", "Jonathan"]

exercises = ["99 bottles of beer", "deaf grandma", "deaf grandma extended", "leap years", "build sort array", "table of contents revisited", "old school roman numerals", "modern roman numerals"]

# HINT:  Use the .delete_at() or .delete() methods. They do different things.









# students = ["Pearl", "Edwin", "Sam Rho", "Elizabeth", "Mary", "Lydia", "Jonathan"]
# exercises = ["99 bottles of beer", "deaf grandma", "deaf grandma extended", "leap years", "build sort array", "table of contents revisited", "old school roman numerals", "modern roman numerals"]

# puts "Enter 'next' to see next student and exercise match"
# # loop until there are no more students left
# until students.length == 0

#   # when user inputs "next", a random student and random exerise match is shown
#   user_input = gets.chomp.downcase

#   if user_input == "next"
#   # print out the student and exercise
#     student_index = rand(students.length)
#     exercise_index = rand(exercises.length)

#     puts students[student_index]  # > 0 through 6
#     puts exercises[exercise_index]

#   # delete that student and exercise from the lists
#     students.delete_at(student_index)
#     exercises.delete_at(exercise_index)

# # log the remaining students and exercises lists. Delet this chunk if it works
#     print "students remaining: "
#     print students
#     puts
#     puts
#     print "exercises remaining: "
#     print exercises
#     puts

#   end  

# end