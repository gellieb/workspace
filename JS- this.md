#JS: *this*

TLDR: 

1. this = shortcut reference for the "antecedent object"-- invoking object
2. this = window object when in global scope
3. Common problems we run into:
    4. *this* in method callback: use bind(), apply(), or call() to specifically set value of this
    5. *this* in closure/anonymous function: store value of this in variable
    6. *this* in method assigned to a variable: use bind()
    7. *this* in borrowed methods: use apply()
        8. **note: using apply()**: first parameter = whatever you're setting, second parameter = must be array

```
We use this similar to the way we use pronouns in natural languages like English and French. We write, “John is running fast because he is trying to catch the train.” 

```

In a similar graceful manner, in JavaScript, we use the this keyword as a shortcut, a referent; it refers to an object; that is, the subject in context, or the subject of the executing code.

If we use person.firstName and person.lastName, as in the last example, our code becomes ambiguous.  So we use the “this” keyword not only for aesthetics (i.e., as a referent), but also for precision; its use actually makes our code more unambiguous, just as the pronoun “he” made our sentence more clear. It tells us that we are referring to the specific John at the beginning of the sentence.

Just like the pronoun “he” is used to refer to the antecedent (antecedent is the noun that a pronoun refers to), the **this keyword is similarly used to refer to an object that the function (where this is used) is bound to. The this keyword not only refers to the object but it also contains the value of the object**. Just like the pronoun, this can be thought of as a shortcut (or a reasonably unambiguous substitute) to refer back to the object in context (the “antecedent object”).


## *this* keyword basics

First, know that all functions in JavaScript have properties, just as objects have properties. And when a function executes, it gets the this property—**a variable with the ***value of the object*** that invokes the function where *this* is used.**

* **ALWAYS** refers to (and holds the value of) an object-- _singular object_
* usually used inside a function or a method
    * although can be used outside a function in the global scope
* when using **strict mode** : *this* = *undefined* in global functions and in anonymous functions that are not bound to any object.

Basic example: use of *this* in JS:

```
    var person = {
    firstName: "Penelope",
    lastName: "Barrymore",
    fullName: function () {
        ​// Notice we use "this" just as we used "he" in the example sentence earlier?:​
        console.log(this.firstName + " " + this.lastName);
    ​// We could have also written this:​​
        console.log(person.firstName + " " + person.lastName);
    }
}

```

Basic jQuery example: *this*:

```
 // A very common piece of jQuery code​
​
    $ ("button").click (function (event) {
    // $(this) will have the value of the button ($("button")) object​
​// because the button object invokes the click () method​
    console.log ($ (this).prop ("name"));
    });

```
Explanation on jQuery's *this*:

* $(*this*) is equivalent to *this* keyword in JS
* the anonymous function is executed in the button's click() method.
* $(this) is bound to the button object because the jQeury library **binds** $(this) to the object that invokes the click method.
* ***therefore*** $(this) = ($("button")) object, even though $(this) is defined inside the anonymous function and can't itself access the 'this' variable on the outer function.
    * btw, the button is a DOM element as well as an object.
    * in this case, it's a jQuery object because it's wrapped in jQuery $() function

## biggest gotcha with JS "this" keyword

Most important principle of JS's *this*:
***this* is not assigned a value until an object invokes the function where *this* is defined.**

Even though it appears *this* refers to the object where it is defined, it isn't until an object invokes the *this Function* that *this* is assigned a value. And the value it is assigned is based **exclusively** on the **object** that invokes the this Function. 

 However, there are a few scenarios where this does not have the value of the invoking object. I touch on those scenarios later.
 
## *this* in the global scope

TLDR: In global scope, *this* = *window* object, except when in strict mode. Window object = main container of the entire JavaScript application or web page.

ex: *this* in global scope

```
 var firstName = "Peter",
    lastName = "Ally";
​
    function showFullName () {
    // "this" inside this function will have the value of the window object​
    // because the showFullName () function is defined in the global scope, just like the firstName and lastName​
    console.log (this.firstName + " " + this.lastName);
    }
​
    var person = {
    firstName   :"Penelope",
    lastName    :"Barrymore",
    showFullName:function () {
    // "this" on the line below refers to the person object, because the showFullName function will be invoked by person object.​
    console.log (this.firstName + " " + this.lastName);
    }
    }
​
    showFullName (); // Peter Ally​
​
    // window is the object that all global variables and functions are defined on, hence:​
    window.showFullName (); // Peter Ally​
​
    // "this" inside the showFullName () method that is defined inside the person object still refers to the person object, hence:​
    person.showFullName (); // Penelope Barrymore
```

##Important note about *context*

TLDR: 

1. Object that invokes *this Function* is in context. 
2. Change the context by invoking the *this Function* with another object.
    3. This new object is in *context*

The *context* in JS ~ subject in a sentence.

ex: "John is the winner who returned the money"
+ "John" = subject, the *context* of the sentence is John because the focus of the sentence is on him at this particular time in the sentence.
+ "who" pronoun is referring to John, the antecedent.
+ And just like we can use a semicolon to switch the subject of the sentence, we can have an object that is current context and switch the context to another object by invoking the function with another object.


```
	var person = {
   firstName   :"Penelope",
   lastName    :"Barrymore",
   showFullName:function () {
​// The "context"​
console.log (this.firstName + " " + this.lastName);
 }
}
​
​// The "context", when invoking showFullName, is the person object, when we invoke the showFullName() method on the person object.​
​// And the use of "this" inside the showFullName() method has the value of the person object,​
person.showFullName(); // Penelope Barrymore​
​
​// If we invoke showFullName with a different object:​
​var anotherPerson = {
firstName   :"Rohit",
lastName    :"Khan"​
};
​
​// We can use the apply method to set the "this" value explicitly—more on the apply() method later.​
​// "this" gets the value of whichever object invokes the "this" Function, hence:​
person.showFullName.apply (anotherPerson); // Rohit Khan​
​
​// So the context is now anotherPerson because anotherPerson invoked the person.showFullName ()  method by virtue of using the apply() method​
```


## when *this* is most misunderstood and becomes tricky

### 1. Fix *this* when used in method passed as a callback

``` // We have a simple object with a clickHandler method that we want to use when a button on the page is clicked​
    var user = {
    data:[
    {name:"T. Woods", age:37},
    {name:"P. Mickelson", age:43}
    ],
    clickHandler:function (event) {
    var randomNum = ((Math.random () * 2 | 0) + 1) - 1; // random number between 0 and 1​
​
    // This line is printing a random person's name and age from the data array​
    console.log (this.data[randomNum].name + " " + this.data[randomNum].age);
    }
    }
​
    // The button is wrapped inside a jQuery $ wrapper, so it is now a jQuery object​
    // And the output will be undefined because there is no data property on the button object​
    $ ("button").click (user.clickHandler); // Cannot read property '0' of undefined
```

Problem: Here, since the button ($("button")) is an object on its own and we are passing the user.clickHandler method to its click() method as a callback, ***this* refers to the button object the object that is invoking user.clickHandler is the button object.** *this* does not refer to the user object. It refers to the object where the user.clickHander method is executed because *ths* is defined within that method.
EEK!!!

**Solution: use bind(), apply(), or call() to specifically set the value of this**

Instead of this line: $("button").click(user.clickHandler);
DO: $("button").click(user.clickHandler.bind(user)); // P. Mickelson 43


### 2. Fix *this* inside closure (inner method)

** Important: Closures cannot access the outer function's *this* variable by using the *this* keyword because the *this* variable is accessble only by the function itself, not by the inner functions.
```
var user = {
    tournament:"The Masters",
    data      :[
    {name:"T. Woods", age:37},
    {name:"P. Mickelson", age:43}
    ],
​
    clickHandler:function () {
    // the use of this.data here is fine, because "this" refers to the user object, and data is a property on the user object.​
​
    this.data.forEach (function (person) {
    // But here inside the anonymous function (that we pass to the forEach method), "this" no longer refers to the user object.​
    // This inner function cannot access the outer function's "this"​
   
    console.log ("What is This referring to? " + this); //[object Window]​
 
    console.log (person.name + " is playing at " + this.tournament);
    // T. Woods is playing at undefined​
    // P. Mickelson is playing at undefined​
    })
    }
​
    }
​
    user.clickHandler(); // What is "this" referring to? [object Window]
```
Problem: *this* inside the anonymous functon cannot access the outer function's *this*, so it is bound to the global window object, when *strict mode* is not being used.

**Solution: common problem for JS users. Set the *this* value to another variable before you enter the forEach method**

```
  // A common practice amongst JavaScript users is to use this code​
    var that = this;
```


Solution: var theUserObj = this, the user object is what you want the this to refer to
```
 var user = {
    tournament:"The Masters",
    data      :[
    {name:"T. Woods", age:37},
    {name:"P. Mickelson", age:43}
    ],
​
    clickHandler:function (event) {
    // To capture the value of "this" when it refers to the user object, we have to set it to another variable here:​
    // We set the value of "this" to theUserObj variable, so we can use it later​
    var theUserObj = this;
    this.data.forEach (function (person) {
    // Instead of using this.tournament, we now use theUserObj.tournament​
    console.log (person.name + " is playing at " + theUserObj.tournament);
    })
    }
​
    }
​
    user.clickHandler();
    // T. Woods is playing at The Masters​
    //  P. Mickelson is playing at The Masters
```



### 3. Fix *this* when method is assigned to a variable

```
// This data variable is a global variable​
    var data = [
    {name:"Samantha", age:12},
    {name:"Alexis", age:14}
    ];
​
    var user = {
    // this data variable is a property on the user object​
    data    :[
    {name:"T. Woods", age:37},
    {name:"P. Mickelson", age:43}
    ],
    showData:function (event) {
    var randomNum = ((Math.random () * 2 | 0) + 1) - 1; // random number between 0 and 1​
​
    // This line is adding a random person from the data array to the text field​
    console.log (this.data[randomNum].name + " " + this.data[randomNum].age);
    }
​
    }
​
    // Assign the user.showData to a variable​
    var showUserData = user.showData;
​
    // When we execute the showUserData function, the values printed to the console are from the global data array, not from the data array in the user object​
    //​
    showUserData (); // Samantha 12 (from the global data array)​
```
Problem: NOOOOOOO! the *this* value escapes our imagination and is bound to another object, if we assign a method that uses this to a variable. *this* is not maintained.

**Solution: specifically set the *this* value with the bind method**
```
// Bind the showData method to the user object​
    var showUserData = user.showData.bind (user);
​
    // Now we get the value from the user object, because the <em>this</em> keyword is bound to the user object​
    showUserData (); // P. Mickelson 43
```




### 4. Fix *this* when borrowing methods

Borrowing methods is a common practice in JS development. It's convenient to borrow from objects certain methods. 
```
 // We have two objects. One of them has a method called avg () that the other doesn't have​
    // So we will borrow the (avg()) method​
    var gameController = {
    scores  :[20, 34, 55, 46, 77],
    avgScore:null,
    players :[
    {name:"Tommy", playerID:987, age:23},
    {name:"Pau", playerID:87, age:33}
    ]
    }
​
    var appController = {
    scores  :[900, 845, 809, 950],
    avgScore:null,
    avg     :function () {
​
    var sumOfScores = this.scores.reduce (function (prev, cur, index, array) {
    return prev + cur;
    });
​
    this.avgScore = sumOfScores / this.scores.length;
    }
    }
​
    //If we run the code below,​
    // the gameController.avgScore property will be set to the average score from the appController object "scores" array​
   
    // Don't run this code, for it is just for illustration; we want the appController.avgScore to remain null​
    gameController.avgScore = appController.avg();
```
Problem: gameController wants to borrow the avg() function but since it's being invoked on the appController, *this* refers to the appController. EEK.

**Solution: use *apply()* to make sure that *this* inside he appController.avg() method refers to gameController.**

The “this” value inside the appController.avg () method will be set to the gameController object because we pass the gameController object as the first parameter to the apply () method. The first parameter in the apply method always sets the value of “this” explicitly.

Note: when using the apply () method, the *2nd argument has to be an array*—the arguments to pass to the appController.avg () method.​
```
    //Note: the second argument must be array!!!
    appController.avg.apply (gameController, gameController.scores);
​
    // The avgScore property was successfully set on the gameController object, even though we borrowed the avg () method from the appController object​
    console.log (gameController.avgScore); // 46.4​
​
    // appController.avgScore is still null; it was not updated, only gameController.avgScore was updated​
    console.log (appController.avgScore); // null
```


