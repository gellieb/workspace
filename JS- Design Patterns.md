#JS: Learning JavaScript Design Patterns


##What is a pattern?
A pattern is a reusable solution that can be applied to commonly occurring problems in software design. Another way of looking at patterns are as templates for how we solve problems-- ones which can be used in quite a few different situations.

Design patterns have 3 main benefits:

1. **Patterns are proven solutions**: provide solid approaches to solving issues in software development using proven techniques that reflect the experience and insights the developers that helped define them bring to the pattern

2. **Patterns can be easily reused**: A pattern usually reflects an out of the box solutiong that can be adapted to suit our own needs. This feature makes them quite robust.
3.  **Patterns can be expressive**: When we look at a pattern there's generally a set structure and vocabulary to the solution presented that can help express rather large solution quite elegantly.

For design patterns to be valid, they need to display some recurring phenomenon. This can be qualified in at least three key areas, *rules of three*:

1. **Fitness of purpose** - how is the pattern considered successful
2. **Usefulness** - why is the pattern considered successful?
3. **Applicability** - is the design worthy of being a pattern because it has wider applicability? If so, this needs to be explained. When reviewing or defining a pattern, it is important to keep the above in mind.

#JavaScript Design Patterns

## The Constructor Pattern
In classical object-oriented programming languages, a constructor is a special method used to initialize a newly created object once memory has been allocated for it. In JavaScript, as almost everything is an object, we're most often interested in object constructors.

### Object Creation
+ Three common ways to create new objects in JS

```
// Each of the following options will create a new empty object:
 
var newObject = {};
 
// or
var newObject = Object.create( Object.prototype );
 
// or
var newObject = new Object();
```
+ 4 ways to assign keys and values to an object

```
// ECMAScript 3 compatible approaches
 
// 1. Dot syntax
 
// Set properties
newObject.someKey = "Hello World";
 
// Get properties
var value = newObject.someKey;
 
 
 
// 2. Square bracket syntax
 
// Set properties
newObject["someKey"] = "Hello World";
 
// Get properties
var value = newObject["someKey"];
 
 
 
// ECMAScript 5 only compatible approaches
// For more information see: http://kangax.github.com/es5-compat-table/
 
// 3. Object.defineProperty
 
// Set properties
Object.defineProperty( newObject, "someKey", {
    value: "for more control of the property's behavior",
    writable: true,
    enumerable: true,
    configurable: true
});
 
// If the above feels a little difficult to read, a short-hand could
// be written as follows:
 
var defineProp = function ( obj, key, value ){
  var config = {
    value: value,
    writable: true,
    enumerable: true,
    configurable: true
  };
  Object.defineProperty( obj, key, config );
};
 
// To use, we then create a new empty "person" object
var person = Object.create( Object.prototype );
 
// Populate the object with properties
defineProp( person, "car",  "Delorean" );
defineProp( person, "dateOfBirth", "1981" );
defineProp( person, "hasBeard", false );
 
console.log(person);
// Outputs: Object {car: "Delorean", dateOfBirth: "1981", hasBeard: false}
 
 
// 4. Object.defineProperties
 
// Set properties
Object.defineProperties( newObject, {
 
  "someKey": {
    value: "Hello World",
    writable: true
  },
 
  "anotherKey": {
    value: "Foo bar",
    writable: false
  }
 
});
 
// Getting properties for 3. and 4. can be done using any of the
// options in 1. and 2.
```


