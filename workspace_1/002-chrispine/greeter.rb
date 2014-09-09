class Greeter
  def initialize (name = "Angel")
    @name = name
  end
  def say_hi
    puts "hi #{name}"
    
  end
  def say_bye
    puts "bye #{name}, see you soon!"
  end
end