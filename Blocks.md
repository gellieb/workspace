# Blocks



## Yield

ex: using regular block syntax
~~~ruby
def calculation(a, b, operation)
  operation.call(a, b)
end

puts calculation(5, 6, lambda { |a, b| a + b }) # addition
puts calculation(5, 6, lambda { |a, b| a - b }) # subtraction
```

ex: same output, just using yield

```ruby
def calculation(a, b)
  yield(a, b)
end

puts calculation(5, 6) { |a, b| a + b } # addition #11
puts calculation(5, 6) { |a, b| a - b } # subtraction #-1
```

* The block is now no longer a parameter to the method. The block has been *implicitly* passed to the method - note how it’s outside the parentheses.
* Yield makes executing the block feel like a method invocation within the method invocation rather than a block that’s being explicitly called using Proc#call.
* You have no handle to the block anymore — yield “magically” invokes it without any object references being involved.

** note: blocks can be passed implicitly without any parameters. The syntax remains the same.

ex : where neither the method nor block take any parameters
```ruby
def foo
    yield
end
foo { puts "sometimes shortcuts do get you there faster”  }
```

### **Magic Blocks (Rules kept; Rules broken)**

* Yield is _not_ a method
	Yield calls the block. It isn’t a method; it is a keyword
* Objects are abandoned
	Everything in Ruby is an object. There isn’t an object that represents the block, but yield seemingly invokes the #call method on it.





## Implicit and Explicit Blocks

### Converting implicit blocks into explicit ones

Sometimes, the performance benefits of implicit block invocation are outweighed by the need to have the block accessible as a concrete object.

It's easy to convert blocks from implicit to explicit and back again, but special syntax is required.

ex: Converting implicit to explicit

```ruby
def calculation(a,b, &block) # &block is an *explicit* (named) parameter
    block.call(a,b)
end

puts calculation(5,5) {|a,b| a + b} # this is an implicit block 
                                    # *nameless* and not passed as an 
                                    # explicit block
```

ex: the other way-- explicit to implicit

```ruby 
def calculation(a,b)
    yield(a,b) # yield calls an *implicit* (unnamed block)
end

addition = lamda {|x,y| x+y}
puts calculation(5, 5, &addition) #like the last example, &addition is 
                                  # an explicit (named) block
                                  #-- but "yield" can still call it!
```
####Syntactic rules to convert blocks from implicit to and from explicit
1. The **block** should be the **last** parameter passed to a method.
2. Placing an ampersand (```&```) before the name of the last variable triggers the conversion 
3. ** ```&block``` converts it into **implcit**

```ruby
###explicit to implicit
def filter(array, block)
    return array.select(&block)
end

Filter.call([1, 2, 3, 4]){|number| number.even?} #=> [2,4]
Filter.call([1, 2.0, 3, 4.0]){|number| number.integer?} #=> [1,3]
```
example: a method ```#filter``` will accept an explicitly passed block. We look to the block to tell us whether a value from the array should be accepted or rejected.
```Array#select``` method does this but it ***requires an implicit block***

```ruby
###implicit to explicit (a little more complicated)
Filter = lambda do |array, &block|  #block is implicitly passed
    array.select(&block)
end

Filter.call([1, 2, 3, 4]){|number| number.even?} #=> [2,4]
Filter.call([1, 2.0, 3, 4.0]){|number| number.integer?} #=> [1,3]
```
example: in this example, the ```#filter``` itself was converted into a block, making the incoming block implicitly pass.
So here, the block passed to filter was changed from implicit to explicit, then back again.



##Syntax

###Introducing the do-end delimiter

A block can be created by wrapping a chunk of code with curly braces (```{}```) or the words ```do``` and ```end```.
Unlike the curly braces, the ```do```-```end``` syntax requires the ```do```, the code for the block, and the ```end``` to all be on separate lines, respectively.

ex: four examples, 4 different syntaxes, all functionally identical
```ruby
addition = lambda {|a, b| a + b }
puts addition.call(5, 5)

addition = lambda {|a, b|
 a + b
}
puts addition.call(5, 5)

addition = lambda do |a, b|
 a + b
end
puts addition.call(5, 5)

addition = lambda do |a, b|; a + b; end
puts addition.call(5, 5)
```



## Blocks, Procs, and Lambdas

### Lambda vs. Proc

A block created with ```lambda``` behaves like a method when you use ```return``` and exits the block, handing the control back to the calling method.

A block created with ```Proc.new``` behaves like it's **a part of the calling method** when ```return``` is used within it. It returns from **both** the block itself as well as the calling method.

ex: Lambda and return
```ruby
def a_method
 lambda { return "we just returned from the block" }.call # exits block
 return "we just returned from the calling method" #goes to calling method
end

puts a_method #=> "we just returned from the calling method"
```
ex: Proc.new and return (exits block **and** calling method)
```ruby
def a_method
 Proc.new { return "we just returned from the block" }.call
 return "we just returned from the calling method"
end

puts a_method #=> "we just returned from the block"
```
As a result, ```Proc.new``` is something that's hardly ever used to explicitly create blocks because of the *weird* return semantics. Avoid unless necessary.

###Summary of different way to create blocks
1. Implicitly when calling a method.
2. Explicitly using the ```Kernel#lambda``` factory method
3. Explicitly using ```Proc.new```

Both 2. and 3. have alternative syntaxes to make shorter code:
** The ```->``` is a shorter version of ```Kernel#lambda```.** 

```ruby
# 2 forms, identical result

short = ->(a,b){ a + b }
puts short.call(2,3)

long = lambda {|a,b| a+b}
puts long.call(2,3)
```

