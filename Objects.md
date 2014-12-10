#Objects


##The equality operator (```==```) is a method

quick examples:
```ruby
puts [1,2] == [1,2]   #=> true
puts [1,2] == [1,3]   #=> false
puts "a" == "xyz"     #=> false
```

ex: checking the equality for objects we define
```ruby
class Item
    def initialize(item_name, qty)
        @item_name = item_name
        @qty = qty
    end
end

p Item.new("abcd",1)  == Item.new("abcd",1)  #=> false!!
```
That's the wrong answer. Both objects have exactly the same state and behavior and should have been treated as identical objects.

This is a simple fix: ```a==b``` is the same as ```a.==(b)```. In Ruby, all binary operators (those which have 2 operands) including ```==``` are actually methods that gets called on the parameter on the left-hand side of the operator.

To override the defined ```==``` method that always returns ```false```, we fix it to return ```true``` if the ```item_name``` and ```qty``` of your object is the same as that of the object being compared.

```ruby
class Item
    attr_reader :item_name, :qty
    
    def initialize(item_name, qty)
        @item_name = item_name
        @qty = qty
    end
    def to_s
        "Item (#{@item_name}, #{@qty})"
    end
    def ==(other_item)
      (@item_name == other_item.item_name) && (@qty==other_item.qty) ? true : false
    end
end
```
```ruby
p Item.new("abcd",1)  == Item.new("abcd",1)         #=> true
p Item.new("abcd",2)  == Item.new("abcd",1)         #=> false
```

** Note: you can override almost every operator like this. If you need to be able to add 2 Items that have the same item name, you can use the ```+``` operator on the Item. That way, the new Item object will hold the combined quantity of both the Items.


##Object equality, the eql? method and hash codes

Even though overriding ```==``` worked for simpler equality comparison, there are some cases where that just doesn't cut it.

ex: we built an array of duplicate ```Item``` objects and apply ```uniq```.

```ruby
class Item
    attr_reader :item_name, :qty
    def initialize(item_name, qty)
        @item_name = item_name
        @qty = qty
    end
    def to_s
        "Item (#{@item_name}, #{@qty})"
    end
    def ==(other_item)
        self.item_name == other_item.item_name && self.qty == other_item.qty
    end
end

items = [Item.new("abcd", 1), Item.new("abcd", 1), Item.new("abcd", 1)]
```
```ruby
p items.uniq    #=> [Item (abcd, 1), Item (abcd, 1), Item (abcd, 1)]
```

We expected ```Array#uniq``` to return only one element since the rest were duplicates, but it returned everything. 

We overrode ```==``` but we failed to implement two other methods that are crucial to get object equality correct: the ```eql?``` and ```hash``` methods. Why do we need them?? Why not just ```==```??

While ```==``` does the job of checking the equality of two objects well, it isn't very fast. For operations that involve **larger number of equality checks** (like ```Array#uniq``` and Hash lookups), **the speed disadvantage adds up and becomes an overhead.**

**Answer:** Ruby has a ```hash``` method with every object. It returns a numeric value unique to every object.

ex: print the hash values fro different objects

```ruby
p 1.hash                            #=> 2096836193419431950
p "Hello".hash                      #=> 913871134786439345
p "Hello!".hash                     #=> 3713750837197527217
p [1,2,3].hash                      #=> 4082123785290616871
p({:x => 1, :y => 2}.hash)          #=> -104406567225376990

class Item
  def initialize(name)
    @name = name
  end
end

p Item.new("ruby").hash             #=> 3405772177160918847
```

***Do not confuse*** the method ```hash```, which returns a hash code, with the data structure of Hash.

A *hash code* of an object is usually a short numeric ID of an object. *Hash* is a data structure that uses the hash code of objects for fast key lookup and thus derives the name.

So.... Ruby uses ```hash``` of the object when possible and when ```==``` is too expensive. Comparing only the identifiers is almost always faster than comparing the various instance variables of the underlying object.

(```Array#uniq``` method uses the result of ```hash``` to compare objects and identify duplicates.)

ex: implemementing ```hash``` and ```eql?```
```ruby
class Item
  attr_reader :item_name, :qty
  
  def initialize(item_name, qty)
    @item_name = item_name
    @qty = qty
  end
  
  def to_s
    "Item (#{@item_name}, #{@qty})"
  end
  
  def hash
    self.item_name.hash ^ self.qty.hash
  end

  def eql?(other_item)
    puts "#eql? invoked"
    @item_name == other_item.item_name && @qty == other_item.qty
  end
end

items = [Item.new("abcd", 1), Item.new("abcd", 1), Item.new("abcd", 1)]
```
```ruby
p Item.new("abcd", 1).hash              #=> -3558653463416234203
p items.uniq                            #=> #eql? invoked
                                        #=> #eql? invoked
                                        #=>[Item.new("abcd", 1)]
```

* What is the ```hash``` method doing?
    * The ```^``` operator used is the binary XOR. 
    * The ```hash``` method returns the result of XORing all the instance variables that determine the state of the object. This ensures that ***whenever the state of the object changes, the hash code changes too.*** 
    * Distinct hash codes for distinct objects is an extremely desirable property of hash codes through which operations on which operations on collections become *faster.*

* What was the ```eql?``` method doing?
    * The ```Array#uniq``` method called on it twice to check the equality of the elements of the array. 
    * Even though we use ```==``` method to check the equality of objects, ```Array#uniq``` uses ```eql?``` instead. So, we must use the ```eql?``` method as well whenever we override ```==```. 
    * In most cases, these two methods will be identical.

Summary: to override any of the ```==```, ```eql?```, ```hash``` methods, you must override the others as well.


## Displaying objects

### puts vs p

```ruby 
class Item
  def inspect
    "Result of inspect"
  end
end

puts Item.new
puts Item.new.to_s
p Item.new
```
```ruby
#<Item:0x00000003522e68>
#<Item:0x00000003522e18>
Result of inspect
```
* ```puts``` generally prints the result of applying ```to_s```
    * puts Item.new == puts Item.new.to_s
* ```p``` prints the result of ```inspect```ing the object.

#### inspect vs to_s

```ruby
class Item
  def initialize(item_name, qty)
    @item_name = item_name
    @qty = qty
  end
end

item = Item.new("a",1)

puts item
p item
```
```ruby
#<Item:0x0000000347daf8>
#<Item:0x0000000347daf8 @item_name="a", @qty=1>
```
* ```puts``` prints the class name of the object along with a number displayed a hex, a number relative to the position of the object in memory (not a big use for it)
*```p``` on the otherhand prints the class name and all of the instance variables of the object. 
    * useful while debugging
* you can totally override ```to_s``` to output data that is useful for debugging and tailored for each class.
ex: class Item
```ruby
  def initialize(item_name, qty)
    @item_name = item_name
    @qty = qty
  end
  
  def to_s
    "#{@item_name} #{@qty}"
  end
end```
```ruby
item = Item.new("a",1)
puts item
p item
```


##Serializing

At some point, you will want your Ruby programs to talk to other programs. The communication between them is done through *Application Programming Interface* (API). 

API is a generic term for any interface 
which allows on program to either read data *from* another program or write data *to* another program. Or both.One of the simplest interfaces two Ruby programs can share is a file. 

The first program will transform some of its objects into a string and then write those strings to a file. The second program will look for the file in a shared location (really easy if both programs are running on the same computer), read it and turn the strings in the file back into Ruby Objects.



