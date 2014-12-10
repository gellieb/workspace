#I/O Streams


##I/O streams and the IO class

An input/output stream is a sequence of date bytes that accessed sequentially or randomly. Complex and abstract, but I/O streams are used to work with almost everything about your computer that you can touch, see, or hear:

* printing text to the screen
* receiving key-press input from the keyboard
* playing sound through speakers
* sending and receiving data over a network
* reading and writing files stored on a disk

All of these listed operations are considered "side-effects". The touch/see/hear metric doesn't seem to work for network traffic and disk-activity: in these two cases, side-effects has physically changed something in the world even if you can't see it.

In comparison, "pure" code has no side-effects: it's code which simply performs calculations. Still, a "pure" program isn't very useful if it can't even print its result to the screen. This is where I/O streams come in. Ruby's ```IO``` class allows you to initialize these streams.

```ruby
# open the file "new-fd" and create a file descriptor:
fd = IO.sysopen("new-fd", "w")

# create a new I/O stream using the file descriptor for "new-fd":
p IO.new(fd)
```
(a little more abstract)

```fd```, the first argument to ```IO.new```, is a file descriptor. This is a ```Fixnum``` value we assign to an ```IO``` object. We're using a combo of the ```sysopen```method with ```IO.new``` but we can also create IO objects using the ```BasicSocket``` and ```File``` that are subclasses of ```IO```.

The notion of creating a "file descriptor" is inherited from UNIX, where everything is a file. 

(a bit more concrete)
ex:
```ruby
io_streams = Array.new
ObjectSpace.each_object(IO) { |x| io_streams << x }

p io_streams
```
There are a bunch of I/O streams that Ruby initializes when the interpreter gets loaded. Creates a list evaluated from your environment.


##Standard Output, Input, and Error

```STDOUT```, ```STDIN```, and ```STDERR``` are constants that are ```IO``` objects pointing to your program's output, input and error streams that you can use through your terminal, without opening any new files.
```ruby
p STDOUT.class                  #=> IO
p STDOUT.fileno                 #=> 0 
  
p STDIN.class                   #=> IO
p STDIN.fileno                  #=> 1 

p STDERR.class                  #=> IO
p STDERR.fileno                 #=> 2 
```

Whenever you call ```puts```, the output is sent to the ```IO``` object that ```STDOUT``` points to. It is the same for ```gets```, where the input is captured by the ```IO``` object for ```STDIN``` and the ```warn``` method which directs to ```STDERR```.

There's more....

The ```Kernel``` module provides us with global variables ```$stdout```, ```$stdin```, and ```$stderr```, which point to the same ```IO``` objects that the constants ```STDOUT```, ```STDIN```, and ```STDERR``` point to. We can see this by checking their ```object_id```.

```ruby
p $stdin.object_id                      #=> 3324640
p STDIN.object_id                       #=> 3324640

puts

p $stdout.object_id                     #=> 3324580
p STDOUT.object_id                      #=> 3324580

puts

p $stderr.object_id                     #=> 3324520
p STDERR.object_id```                   #=> 3324520
```

The ```object_ids``` are consistent between the global variables and constants. Whenever you call ```puts```, you're actually calling ```Kernel.puts``` *(methods in ```Kernel``` are accessible everywhere in Ruby)*, which in turn calls ```$stdout.puts```.

What's with all the indirection??
* The purpose of these global variables is **temporary redirection**: you can assign these global variables to ***another*** ```IO``` object and pick up an IO stream other than the one that is linked to by default. 
* This is sometimes necessary for logging errors or capturing keyboard input you normally wouldn't. Most of the time, this won't be necessary but it's nice to know you could.


##Opening and closing using "File" class

Before, ```IO.sysopen``` and ```IO.new``` were used to create a new ```IO``` object. This time, ```File``` class will be used. It's much more straightforward.

```ruby
mode = "r+"
file = File.open("friend-list.txt", mode)
puts file.inspect
puts file.read
file.close
```
```ruby
#<FakeFS::File:0x00000003520280>
Jasim
Neha
Timothy
Smit
Nid
Srihari
Jithu
Asif
```

```mode``` is a string that specifies the way the file is opened. In this code example, ```mode``` is a variable for ```"r+"```, opens the file in read-write mode, starting from the beginning.

_Here is a list of other possible modes_:
* ```"r"``` : read-only, starts at the beginning of the file (default mode)
* ```"r+"``` : read-write, starts at beginning of the file
* ```"w"````: write-only, truncates existing file to zero length or creates a new file for writing
* ```"w+"``` : read-write, truncates existing file to zero length or creates a new file for reading and writing
* ```"a"``` : read-write, starts at end of file if file exists, otherwise creates a new file for reading and writing
* ```"b"``` : binary file mode (may appear with any of the key letters listed above)
* ```"t"``` : text file mode (may appear with any of the key letters listed above except ```"b"```)
* ```File.open``` also takes an optional block which will auto-close the file you opened once you're done with it

ex: another example
```ruby
what_am_i = File.open("clean-slate.txt", "w") do |file|
  file.puts "Call me Ishmael."
end

p what_am_i                         #=> nil

File.open("clean-slate.txt", "r") {|file| puts file.read }  #=> Call me Ishmael
```

##Reading and Writing

Methods to read from an I/O stream. In the following examples, our I/O stream is a file, but files behave just like an other I/O stream.

The ```File#read``` method accepts two optional arguments:
    
* ```length```: the number of bytes upto which the stream will be read
* ```buffer```: you can provide a ```String``` buffer which will be filled with the file data. This buffer is sometimes useful for performance when iterating over a file, as it re-uses an already initialized string.

ex 1: file#rewind
```ruby
file = File.open("master", "r+")

p file.read
file.rewind             #** next example contrasts what happens when 
                        # you comment out this line 

buffer = ""
p file.read(23, buffer)
p buffer

file.close
```
```ruby 
output:
"Master loves you as he loves Jacob."
"Master loves you as he "
"Master loves you as he "
```

ex 2: no file#rewind
```ruby
new output:
"Master loves you as he loves Jacob."
nil
""
```

Why did we have to use ```File#rewind``` *before* the second call to ```File#read```
* The reason is due to Ruby's internal handling of files.
* When reading from a ```File``` object, Ruby keeps track of your position. Therefore, you could read a file one line (or page, or random chunk) at a time *without* recalculating where you left off after the last read.
    * if ```file.read``` were changed to ```file.read(16)``` and ```file.rewind``` commented out again: 
    
        ```
"Master loves you"              # first 16 bytes
" as he loves Jacob."
" as he loves Jacob."
```
    * ```file.read(16)``` will output the first 16 bytes of the file
    * ```file.rewind``` will repeat that twice

ex: file.seek
```ruby
p File.read("monk")                 #=> "Master loves you as he loves Jacob."

File.open("monk") do |f|            #=> "he loves J"
  f.seek(20, IO::SEEK_SET)
  p f.read(10)
end
```
* ```File#seek``` will "seek" to a certain byte (ex: 20) in the file to tell Ruby where you want to start reading from.
* If you want a particular set of bytes from the file, you can pass the ```length``` parameter to ```File#read``` to select a number of bytes from your new starting point.

ex: ```readlines```

```ruby
lines = File.readlines("monk")
p lines                             #=> ["Master loves", "you as he", "loves Jacob."]

p lines[0]                          #=> "Master loves"
```
* ```readlines``` returns an array of the lines of the opened IO stream. You can, again, optionally limit the number of lines and/or insert a custom separator between each of these lines
