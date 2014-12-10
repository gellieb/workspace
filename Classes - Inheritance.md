#Inheritance

When classifying objects, you start out with general classes then delve into subclasses which are more specialized. This parent-child relationship between classes is referred to as **inheritance**. The specialized class *inherits* the abilities of its more generic parent.

* ```#is_a?``` = outputs subclass
* ```#superclass``` = outputs its parent class

ex: *inheritance tree* of Ruby's ```Float``` class
```ruby
puts Float.superclass    # Numeric
puts Numeric.superclass  # Object
puts Object.superclass   # BasicObject
```
In Ruby, a ```Float``` is a ```Numeric``` is an ```Object``` is a ```BasicObject```.
All such chains end with ```BasicObject```.

##Inheriting Class

** Pay attention to the syntax -- the ```<``` operator informs Ruby that when creating the class ```MyArray```, it should set ```Array``` as its superclass.

```ruby
class MyArray < Array
end
```
Here, ```MyArray``` is a subclass of Ruby's ```Array. It *inherits* behavior, so it has the all the same methods-- an instance of ```MyArray``` works exactly the same way as an instance of ```Array```.

ex. Squares are essentially Rectangles whose sides are equivalent to one another. So class Square will inherit from class Rectangle.

```ruby
class Rectangle
  def initialize(length, breadth)
    @length = length
    @breadth = breadth
  end

  def perimeter
    2 * (@length + @breadth)
  end
end


class Square < Rectangle
  def initialize(side)           #class Square will accept one parameter
    @length = @breadth = side    #side is equivalent to its length and breadth
  end
end
```

## Redefining, overriding, and super

### Redefining methods

*Redefining* a method refers to simply replacing one method with another. The original method is lost.

```ruby
class Rectangle
  def initialize(length, breadth)
    @length = length
    @breadth = breadth
  end

  def perimeter
    2 * (@length + @breadth)
  end
  
  def area
    @length * @breadth
  end
end

class Rectangle             # we redefined the method for perimeter.
    def perimeter           # so tests will break
        42
    end
end
```

###Overriding methods

*Overriding* in the context of classes involves defining a method in a subclass that is already defined in a superclass. This results in the method being *overridden* in the subclass, but doesn't in anyway affect the method in the superclass.

ex: MyArray is a subclass of superclass Array

```ruby
class MyArray < Array
    def map
        'in soviet russia...'
    end
end

puts Array.new([1,3]).map{|n| n+1} #=> [2,4]
puts MyArray.new([1,3]).map{|n| n+1} #=> behaves differently, returning 'in soviet russia...'
```

###Super Powered

A comon use of inheritance is to have overridden methods in a subclass do something **in addition to** what the superclass method did, rather than something entirely different. This allows us to re-use behavior that exists in a superclass, then modify it to suit the needs of the subclass.

Ruby uses the ```super``` keyword to make this happen. Using ```super``` will call the same method, but as defined in the superclass and give you the result.

ex: we define behavior in the class ```Animal``` that describes how it moves. Now, ```Bird``` in an ```Animal``` that can move, but it *also* wants to talk about *how* it moves.

```ruby
class Animal
    def move
        "I can move"
    end
end

class Bird < Animal
    def move
        super + " by flying"
    end
end

puts Animal.new.move #=> "I can move"
puts Bird.new.move #=> "I can move by flying"
```


