#JS: Closures

## What is a closure?

+ A closure is an inner function that has access to the outer (enclosing) function's variables--scope chain. 
+ The closure has **three scope chains**: access to
    + its own scope 
    + the outer function's variables
    + global variables

A closure has access to:

1. outer function's variables
2. outer function's parameters
3. **However cannot call the outer function's *arguments* object**, but can call the outer function's parameters directly

**ex: basic example of closures in JS**
```
function showName (firstName, lastName) { 
​var nameIntro = "Your name is ";
    // this inner function has access to the outer function's variables, including the parameter​
​function makeFullName () {         
​return nameIntro + firstName + " " + lastName;     
}
​
​return makeFullName (); 
} 
​
showName ("Michael", "Jackson"); // Your name is Michael Jackson ```

**ex2: classic jQuery example of closures**

```
$(function() {
​
​var selections = []; 
$(".niners").click(function() { // this closure has access to the selections variable​
selections.push (this.prop("name")); // update the selections variable in the outer function's scope​
});
​
});
```

##Closures' Rules and Side Effects

###1. Closures have access to the outer function’s variable even after the outer function returns:

Very important: Inner functions still have access to the outer function's variable *even after* the outer function has returned. When functions in JS execute, they use the same scope chain that was in effect when they were created. So, even after the outer function has returned, the inner function still has access to the outer function's variables. **Therefore, you can call the inner function later in your program.**

```
function celebrityName (firstName) {
    var nameIntro = "This celebrity is ";
    // this inner function has access to the outer function's variables, including the parameter​
   function lastName (theLastName) {
        return nameIntro + firstName + " " + theLastName;
    }
    return lastName;
}
​
​var mjName = celebrityName ("Michael"); // At this juncture, the celebrityName outer function has returned.​
​
​// The closure (lastName) is called here after the outer function has returned above​
​// Yet, the closure still has access to the outer function's variables and parameter​
mjName ("Jackson"); // This celebrity is Michael Jackson ```
###2. Closures store references to the outer function’s variables
They don't store the actual value. Closures get more interesting when the value of the outer function’s variable changes before the closure is called. And this powerful feature can be harnessed in creative ways, such as this private variables example first demonstrated by Douglas Crockford: 
```
// This example is explained in detail below (just after this code box).​
​function celebrityIDCreator (theCelebrities) {
    var i;
    var uniqueID = 100;
    for (i = 0; i < theCelebrities.length; i++) {
      theCelebrities[i]["id"] = function ()  {
        return uniqueID + i;
      }
    }
    
    return theCelebrities;
}
​
​var actionCelebs = [{name:"Stallone", id:0}, {name:"Cruise", id:0}, {name:"Willis", id:0}];
​
​var createIdForActionCelebs = celebrityIDCreator (actionCelebs);
​
​var stalloneID = createIdForActionCelebs [0];  console.log(stalloneID.id()); // 103
```
