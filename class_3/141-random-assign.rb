# v1 ORIGINAL
# The students have to solve some exercises live in class. Fun! A student
# will present his/her solution to an exercise, followed by another and so on.
# Create a program that assigns random exercises to students in random order. 
# Each time we enter "next", a student and exercise match is shown. 
# No students or exercises should be repeated. 
# HINT:  Use the .delete_at() or .delete() methods. They do different things.

students = ["Pearl", "Edwin", "Sam Rho", "Elizabeth", "Mary", "Lydia", "Jonathan"]

exercises = ["99 bottles of beer", "deaf grandma", "deaf grandma extended", "leap years", "build sort array", "table of contents revisited", "old school roman numerals", "modern roman numerals"]

# v2 IMPROVED: Do two things: re-write the program so that if the student 
# is a girl, they don't have to do "modern roman numerals".  And no one 
# should get "deaf grandma extended" until "deaf grandma" is first solved - 
# and the same for "modern roman numeral" and "old school roman numeral"
# HINT:  You can use  .include?()
# HINT:  Also learn the "next" keyword


index = rand(8)
iter = 0


while iter < 7 
  puts "The next person to present will be..."
  user_input = gets.chomp.downcase 
  next_student = students.shuffle[0]
  next_exercise = exercises.shuffle[0]
  if user_input == "next"
    puts next_student
    puts next_exercise
  
  end
  students.delete(next_student)
  exercises.delete(next_exercise)
  p students
  p exercises
  
  iter +=1
end


