# Create a Dog class that is initialized with a name.
# Create a new instance of the Dog class.


# class Dog

# 	def initialize(name)
# 		@name = name
# 	end

# 	def bark
# 		return "ruff ruff"
# 	end




# end

# dog_tag = Dog.new("Foxy Cleopatra")
# p dog_tag.bark


#Add an instance method to the Insect class to calculate the age_in_years.
# class Insect
#   def initialize(age_in_days)
#     @age_in_days = age_in_days
#   end

#   def age_in_years
#   	p @age_in_days/365
# end

# Create a Lamp class with a class method called about_me that returns the String "We brighten up people's lives".
# class Lamp
# 	def initialize(appliance)
# 		@appliance = appliance 
# 	end
# 	def Lamp.about_me()
# 		return "We brighten up people's lives"
# 	end

# end

# app = Lamp.about_me
# p app

# # Add a method to the WaterBottle class that returns the size of the WaterBottle and demonstrate how this method can be used.
# class WaterBottle
#   def initialize(size)
#     @size = size
#   end
#   attr_reader :size
#   # def size
#   # 	return @size
#   # end
# end
# canteen = WaterBottle.new(24)
# p canteen.size

# # Create a Person class that is initialized with an age and create an age=() method that can be used to update the @age instance variable.  Also include an age method that returns the value of the @age instance variable.  Demonstrate how the methods can be used.
# class Person
# 	def initialize(age)
# 		@age= age
# 	end

# 	attr_writer :age

# 	# def age=(new_age)
# 	# 	@age = new_age
# 	# end

# 	attr_reader :age
# 	# def age
# 	# 	return @age
# 	# end

# end

# pearl = Person.new(24)
# p pearl.age
# p pearl.age=(35)
# p pearl.age


# module Clueless
#   def funny()
#     return("AS IF?!")
#   end
# end

# class Actress
#   include Clueless
# end

# # What does this code return?
# alicia = Actress.new
# p alicia.funny()

# # Demonstrate that instances of the Person class and instances of the Alien class can use the say_something() method.
# module HappyHappy
#   def say_something()
#     return("Happy happy, joy joy")
#   end
# end

# class Person
#   include HappyHappy
# end

# class Alien
#   include HappyHappy
# end


# human = Person.new
# p human.say_something
# alien = Alien.new
# p alien.say_something

# Create a module called MathHelper with a method multiply_by_two() that takes a number as an argument and multiplies it by two.  Create a class called Homework and demonstrate how multiply_by_two() can be used.

# module MathHelper
# 	def multiply_by_two(number)
# 		return number.to_i * 2
# 	end
# end

# class Homework
# 	include MathHelper
# end

# h = Homework.new
# p h.multiply_by_two(3)

# Inheritance is a way for classes to access all the methods from a parent class.  Inheritance is a great way for a class to get all the methods from a parent class and add some extra ones.  In the following example, the Dog class inherits from the Mammal class.

# class Mammal
#   def heartbeat?
#     true
#   end
# end

# class Dog < Mammal
# end

# # Demonstrate that instances of the Dog class have access to the heartbeat? method.

# d=Dog.new
# p d.heartbeat?

# The ancestors() class method demonstrates all the classes that a class inherits from.  Show all the classes that the Array class inherits from.

# p Array.ancestors

# class Box
# end

# my_box = Box.new
# p my_box.methods.count
# # Explain how my_box.methods().count() returns a number greater than 50, even though no methods are defined in the Box class.

# Create a BaseballPlayer class that is initialized with hits, walks, and at_bats.  Add a batting_average() method that returns hits divided by at_bats as a floating point number.  Add an on_base_percentage() method that returns (hits + walks) divided by at_bats as a floating point number.  Demonstrate how the batting_average() and on_base_percentage() methods can be used.

# class BaseballPlayer
# 	def initialize (hits, walks, at_bats)
# 		@hits = hits
# 		@walks = walks	
# 		@at_bats = at_bats
# 	end

# 	def batting_average()
# 		return (@hits.to_f/@at_bats)
# 	end

# 	def on_base_percentage
# 		return ((@hits + @walks).to_f/@at_bats)
# 	end
# end

# b=BaseballPlayer.new(330, 110, 1125)
# p b.batting_average
# p b.on_base_percentage


# Create a Person class that is initialized with a first_name and last_name.  Create first_name() and last_name() methods that return the values of the corresponding instance variables.  Create a full_name() method that concatenates the first_name and last_name in a single string.

# class Person
# 	def initialize(first_name, last_name)
# 		@first_name = first_name
# 		@last_name = last_name
# 	end
# 	attr_reader :first_name, :last_name
# 	# attr_reader :first_name
# 	# attr_reader :last_name
# 	# def first_name()
# 	# 	return @first_name 
# 	# end
# 	# def last_name()
# 	# 	return @last_name
# 	#end
# 	def full_name
# 		return @first_name + @last_name
# 	end
# end
# my_name = Person.new("Angel", "Baek")
# p my_name.full_name
# p my_name.first_name

# Create a module called MathHelpers with the exponent() method that takes a two numbers as arguments and raises the first number to the power of the second number.  Create a class called Calculator with a method called square_root() that takes the square root of the number (raises it to the power of 0.5).  The square_root() method should use the exponent() method.

module MathHelpers
	def exponent(num_1, num_2)
		return num_1**num_2
	end

end

class Calculator
	include MathHelpers

	def square_root(num_1)
		return exponent(num_1, 0.5)
	end
end

a=Calculator.new
p a.square_root(36)


