#JS: Objects

Javascript has one complex data type = Object data type, and five simple (primitive) data types: Number, String, Boolean, Undefined, and Null. The primitive data types are immutable, while objects are mutable.


##What is an Object?
* an unordered list of primitive data types and sometimes reference data types
* stored as a series of name-value pairs. (Like Ruby's hash)
* each item = property
* each function = method

Property names can be string or numbers, but if a number, it has to be accessed with the bracket notation.(Best not to use numbers as property names)

```
var ageGroup = {30: "Children", 100:"Very Old"};
console.log(ageGroup.30) // This will throw an error​
​// This is how you will access the value of the property 30, to get value "Children"​
console.log(ageGroup["30"]); // Children​
​
​//It is best to avoid using numbers as property names.
```

##Reference Data Type vs Primitive Data Types
* Reference data type's value is stored as a reference. **Not stored directly on the variable, as a value, as the primitive data types are.**

Example 1: primitive data saved-as-value

```
// The primitive data type String is stored as a value​
​var person = "Kobe";  
​var anotherPerson = person; // anotherPerson = the value of person​
person = "Bryant"; // value of person changed​
​
console.log(anotherPerson); // Kobe​
console.log(person); // Bryant
```
note: even though *person* is changed to "Bryant", *anotherPerson* still retains the value that person had.

Example 2: Saved-as-reference
```
var person = {name: "Kobe"};
​var anotherPerson = person;
person.name = "Bryant";
​
console.log(anotherPerson.name); // Bryant​
console.log(person.name); // Bryant
```

This time, the value of person was stored as a reference and not an actual value. *(note: in example 1, person is set equal to a specific value. In example 2, person is set to an object, with the reference of what the property name is)*
So when we changed the person.name property, its change was reflected in anotherPerson.

##Object data properties have attributes
Each data property has:

+ name-value pair
+ 3 attributes
    + Configurable Attribute: specifies whether the property can be deleted/changed
    + Enumerable: specifies whether the property can be returned in a for/in loop
    + Writable: specifies whether the property can be changed
+ ECMAScript 5 specifies accessor properties (getters and setters) along with the data properties noted above.


##Creating objects

+ Object literals
    2. most common and easiest way 
    
``` 
// This is an empty object initialized using the object literal notation​
​var myBooks = {};
​
​
​// This is an object with 4 items, again using object literal​
​var mango = {
color: "yellow",
shape: "round",
sweetness: 8,
​
​howSweetAmI: function () {
console.log("Hmm Hmm Good");
}
}


```

+ Object constructor
    3. used to initialize new objects
    4. use *new* keyword to call the constructor


### Practical patterns for creating objects


1. **constructor pattern** : With this pattern, it's easy to create all sorts of fruit.


```
	function Fruit (theColor, theSweetness, theFruitName, theNativeToLand) {
​
    this.color = theColor;
    this.sweetness = theSweetness;
    this.fruitName = theFruitName;
    this.nativeToLand = theNativeToLand;
​
    this.showName = function () {
        console.log("This is a " + this.fruitName);
    }
​
    this.nativeTo = function () {
    this.nativeToLand.forEach(function (eachCountry)  {
       console.log("Grown in:" + eachCountry);
        });
    }
​
​
}
```

Ex: application to other fruits 

```
var mangoFruit = new Fruit ("Yellow", 8, "Mango", ["South America", "Central America", "West Africa"]);
mangoFruit.showName(); // This is a Mango.​
mangoFruit.nativeTo();
​//Grown in:South America​
​// Grown in:Central America​
​// Grown in:West Africa​
​
​var pineappleFruit = new Fruit ("Brown", 5, "Pineapple", ["United States"]);
pineappleFruit.showName(); // This is a Pineapple.
```
Notes:

+ an inherited property is defined on the object's prototype property. ex: someObject.prototype.firstName = "rich"
+ an own property is defined directly on the object itself.
+ to access a property of an object, we use object.property
+ to invoke a method of an object, we use object.method()
 
2. **Prototype Pattern for Creating objects**

```
function Fruit () {
​
}
​
Fruit.prototype.color = "Yellow";
Fruit.prototype.sweetness = 7;
Fruit.prototype.fruitName = "Generic Fruit";
Fruit.prototype.nativeToLand = "USA";
​
Fruit.prototype.showName = function () {
console.log("This is a " + this.fruitName);
}
​
Fruit.prototype.nativeTo = function () {
            console.log("Grown in:" + this.nativeToLand);
}
```
ex: to call the Fruit() constructor in this prototype pattern

```
var mangoFruit = new Fruit ();
mangoFruit.showName(); //​
mangoFruit.nativeTo();
​// This is a Generic Fruit​
​// Grown in:USA
```
​
### Own and inherited properties
​
​Own properties are properties that were defined on the object, while the inherited properties were inherited from the object's Prototype object.
​
+ **in**: find out if a property exists on an object(inherited or own)


```
// Create a new school object with a property name schoolName​
​var school = {schoolName:"MIT"};
​
​// Prints true because schoolName is an own property on the school object​
console.log("schoolName" in school);  // true​
​
​// Prints false because we did not define a schoolType property on the school object, and neither did the object inherit a schoolType property from its prototype object Object.prototype.​
console.log("schoolType" in school);  // false​
 
​// Prints true because the school object inherited the toString method from Object.prototype. ​
console.log("toString" in school);  // true
```

+ **hasOwnProperty**: find out if object has specific property as one of its own properties (NOT inherited ones)

```
// Create a new school object with a property name schoolName​
​var school = {schoolName:"MIT"};
​
​// Prints true because schoolName is an own property on the school object​
console.log(school.hasOwnProperty ("schoolName"));  // true​
 
​// Prints false because the school object inherited the toString method from Object.prototype, therefore toString is not an own property of the school object.​
console.log(school.hasOwnProperty ("toString"));  // false 
```

+ **Accessing and Enumerating Properties on Objects**: access the enumerable (own and inherited) properties on objects, use for/in loop

```
// Create a new school object with 3 own properties: schoolName, schoolAccredited, and schoolLocation.​
​var school = {schoolName:"MIT", schoolAccredited: true, schoolLocation:"Massachusetts"};
​
​//Use of the for/in loop to access the properties in the school object​
​for (var eachItem in school) {
console.log(eachItem); // Prints schoolName, schoolAccredited, schoolLocation​
​
}
```

+ **Accessing Inherited properties**: inherited properties are NOT enumerable, so for/in loops do not show them. However, inherited properties that are enumerable are revealed in the for/in loop iteration.

```
 //Use of the for/in loop to access the properties in the school object​
​for (var eachItem in school) {
console.log(eachItem); // Prints schoolName, schoolAccredited, schoolLocation​
​
}
​
​// Create a new HigherLearning function that the school object will inherit from.​
​/* SIDE NOTE: As Wilson (an astute reader) correctly pointed out in the comments below, the educationLevel property is not actually inherited by objects that use the HigherLearning constructor; instead, the educationLevel property is created as a new property on each object that uses the HigherLearning constructor. The reason the property is not inherited is because we use of the "this" keyword to define the property.
*/​
​
​
​function HigherLearning () {
​this.educationLevel = "University";
}
​
​// Implement inheritance with the HigherLearning constructor​
​var school = new HigherLearning ();
school.schoolName = "MIT";
school.schoolAccredited = true;
school.schoolLocation = "Massachusetts";
​
​
​//Use of the for/in loop to access the properties in the school object​
​for (var eachItem in school) {
console.log(eachItem); // Prints educationLevel, schoolName, schoolAccredited, and schoolLocation​
}
```
+ **Deleting properties of an Object**: use delete operator
+ **Serialize and deserialize objects**: to transfer your objects via HTTP or to convert it into a string, you need to 
    + serialize (aka convert into a string): **JSON.stringify** function to serialize objects.
    + Deserialize (aka convert from string to object): **JSON.parse**

```
var christmasList = {mike:"Book", jason:"sweater", chelsea:"iPad" }
JSON.stringify (christmasList);
​// Prints this string:​
​// "{"mike":"Book","jason":"sweater","chels":"iPad"}"  
​
​// To print a stringified object with formatting, add "null" and "4" as parameters:​
JSON.stringify (christmasList, null, 4);
// "{
    "mike": "Book",
    "jason": "sweater",
    "chels": "iPad"​
}"
​
​// JSON.parse Examples \\​
 // The following is a JSON string, so we cannot access the properties with dot notation (like christmasListStr.mike)​
​var christmasListStr = '{"mike":"Book","jason":"sweater","chels":"iPad"}';
​
​// Let’s convert it to an object​
​var christmasListObj = JSON.parse (christmasListStr); 
​
​// Now that it is an object, we use dot notation​
console.log(christmasListObj.mike); // Book
```

