#Variables and Accessors

##Instance Variables

For a class to justify its existence, it needs to have two distinct features:

1. **State**: A class must have some kind of state that defines the attributes of its instances.
2. **Behavior**: A class must also do something meaningful. This is achieved by the programmer adding methods to the class that interact with its state to give us meaningful results.
```ruby
class Item
  def initialize(item_name, quantity)
    @item_name = item_name
    @quantity = quantity
  end
  
  def show
    puts @item_name
    puts @quantity
  end
end
```
```ruby
Item.new("tv",1).show
Item.new("fridge",1).show
```

* **Variables**: 
    - Instance variables: have ```@``` at the beginning of the name.
    -They are part of the class (every instance of the class will have unique copies of this variable).
    
    - ```Item.new``` creates a new object-- an instance of the class ```Item`   ``.
    - If the variable is not prefixed with a ```@```, it is considered to be a local variable.
    
ex: difference between local and instance variables. Following will raise an error.
```ruby
class Item
  def initialize(item_name, quantity)
    @item_name = item_name
    @quantity = quantity
    supplier = "Acme corp"
  end
  
  def show
    puts @item_name
    puts @quantity
    puts supplier
  end
end

Item.new("tv",1).show
``` 
```ruby
class: NameError
message: undefined local variable or method `supplier' for #<Item:0x0000000318d0f0 @item_name="tv", @quantity=1>
```
The error message indicates that ```supplier``` is a local variable and undefined. A local variable is **available only** inside the method it is defined. In other words, the "scope" of a local varialbe is bound to the method where it is defined.

In contrast to a local variable, the instance variable is bound to the specific instance of the class. By binding itself to the entire object, an instance variable makes itself available to every method of the object.



##Getter and Setter methods

Objects can't exist in isolation. It has to communicate its state with other objects at some point but only the object's own methods can access its instance variables. So, there exist "**getter**" methods whose sole purpose is to return the value of a particular instance variable. 

ex: getter method

```ruby
class Item
  def initialize(item_name, quantity)
    @item_name = item_name
    @quantity = quantity
    @color = color
  end
  
  def item_name
    @item_name
  end
end

item = Item.new("tv",1)
puts item.item_name
```

The getter method here is the ```item_name```. 

Having to explicitly define getter methods ensures that the object is always in control of how your state is exposed to the public.

**Setter methods** change the value of the instance variables from the outside. All setter methods end with the ```=``` sign in their names.

ex: setter method ```quantity=``` is set to the parameter ```new_quantity```.
```ruby
class Item
  def initialize(item_name, quantity)
    @item_name = item_name
    @quantity = quantity
  end
  
  def quantity=(new_quantity)
    @quantity = new_quantity
  end
  
  def quantity
    @quantity
  end  
end
```

###Making life easier through attr_accessors

1. ```attr_reader``` method defines the reader method. It's a shortcut when your getter simply returns the value of the variable of the same name.

```ruby
attr_reader :item_name

def item_name
    @item_name
end
``` 
2 . ```attr_writer``` method sets the value of the instance variable of the same name as the setter.

```ruby
attr_writer :color

def color=(new_color)
    @color= new_color
end
```
3 . ```attr_accessor``` will define both the getter and setter.




##Class Variables and Methods

Compare instance methods and class methods
```ruby
class Item
  def initialize(item_name)
    @item_name = item_name
  end
  
  def show
    puts "Instance method show invoked for '#{self}'"
  end  
  
  def to_s
    "Item: #{@item_name}"
  end
  
end

Item.new("silence").show
```
Both ```initialize``` and ```show``` are **instance methods**, acting on **instances of a Class**.



```ruby
class Item
  def self.show
    puts "Class method show invoked"
  end  
end

Item.show
```

1. ```def self.show``` : the keyword ```self``` denotes the method ```show``` is being defined in the context of the Class itself, not on its instances. Any method definition without ```self``` is by default an instance method.

```ruby
class Item
  
  class << self
    def show
      puts "Class method show invoked"
    end
  end
end
```

2 . Another way to define class methods: ```class << self```

** Class methods do *not* have access to instance methods or instance variables. However, instance methods can access both class methods and class variables.



###Using class variables to store application configuration

* instance variables: prefixed with only one ```@```
* class variables: prefixed with ```@@```

ex: we define a class Planet that keeps cound of the number of instances of Planets ever created

```ruby
class Planet
  @@planets_count = 0
    
  def initialize(name)
    @name = name
    @@planets_count += 1
  end
  
  def self.planets_count
    @@planets_count
  end  
end

Planet.new("earth"); Planet.new("uranus")

p Planet.planets_count # => 2
```
* As seen here, class variables can be used to store data that belongs to a class, but not to its instances.
* There aren't very many cases when you need to use class variables. Improper usage is generally frowned upon in Ruby community.
* One of the proper uses of class variables is to store application configuration:
    * e.g. application names, version, database, and other settings

ex: we defined class ApplicationConfiguration, in which we defined two class methods: ```set``` and ```get```.
* A class variable ```@@configuration``` was created to be a hash to store the key-value pairs. We can keep adding to it while within this Class.


###Class variables and inheritance

```ApplicationConfiguration``` was great to be used by a single application, but what happens when multiple applications need to store their configuration as well?

**Answer**: build new classes, one for each application and have each ***inherit*** from ```ApplicationConfiguration``` so that we get the ```set``` and ```get``` methods without have to set those class methods again.

ex:
```ruby
class ApplicationConfiguration
  @@configuration = {}

  def self.set(property, value)
    @@configuration[property] = value
  end

  def self.get(property)
    @@configuration[property]
  end
end

class ERPApplicationConfiguration < ApplicationConfiguration
end

class WebApplicationConfiguration < ApplicationConfiguration
end

ERPApplicationConfiguration.set("name", "ERP Application")
WebApplicationConfiguration.set("name", "Web Application")
```
```
output:
p ERPApplicationConfiguration.get("name")  #=>"Web Application"
p WebApplicationConfiguration.get("name")  #=>"Web Application"
p ApplicationConfiguration.get("name")     #=>"Web Application"
```

**Uh-oh.. This isn't right** 
Even though I have 2 classes, *changes in one affects changes in the other.* The base class ```ApplicationConfiguration``` is also affected when you change anything in any inherited class!

This is because they all share the same copy of the class variable ```@@configuration```. This is how inheritance of class variables work. But this isn't the behavior we want!

**Answer: class instance variables**


ex: defining a class instance variable and how it works with inheritance

```ruby
class Foo
  @foo_count = 0
  
  def self.increment_counter
    @foo_count += 1
  end
  
  def self.current_count
    @foo_count
  end  
end

class Bar < Foo
  @foo_count = 100
end

Foo.increment_counter
Bar.increment_counter
```
The class instance variable is in the above example ```@foo```. Even though the notation is confusingly similar to a normal instance variable, the *difference here* is that ```@foo``` is **initialized directly in the class body** and is accessed only from class methods.

```ruby
p Foo.current_count    #=> 1
p Bar.current_count    #=> 100
```
The values for ```@foo_count``` are different for both ```Foo``` and ```Bar```. This means that both classes are operating on different ```@foo_count```. **Note: we have to initialize ```@foo_count``` in all inherited classes.**

Class instance variables are a better alternative than class variables simply because the data is not shared across the inheritance chain. Another major difference between class variables and class instance variables are that class instance variables are available only in class methods. But class variables are available in both class methods and instance methods.

**Summary:**

* Instance variables are available only for instances of a class. They look like ```@name```.
* Class variables are available to both class methods and instance methods. They look like ```@@name```.
* It is *almost always* a bad idea to use a class variable to store a state (because if it will be affected if the base class is inherited). There are only a few valid cases where class variables are the right choice.
* Prefer class instance variables over class variables when you do really need to store data. Class instance variables use the same notation as that of an instance variable. But unlike instance variables, you declare them inside the class definition directly.


