#Data Structures: Complexity Reference

##Lists
+ Lists are basic interface.
+ Random access allowed (ie. peek at, find, insert, delete)
+ Iteration speed: (generally) O(n)

|   Data Structures | Peek at first / middle / last | Insert first / middle / last | Remove first / middle / last | Iteration |
|:-------------:|:--------------:|:--------------:|:--------------:|:---------:|
| Dynamic Array | O(1)           | O(n) / O(n) /O(1)*    | O(n) / O(n) /  O(1)| Fastest   |
| Singly Linked List | O(1) / O(n) / O(1) | O(1)           |  O(1) / O(n) / O(1)| Fast      |
| Doubly Linked List | O(1) / O(n) / O(1) | O(1)           |  O(1)          | Fast      |
| Binary Tree   | O(log n)       | -              | -              | Moderate  |
| Hash Map      | -              | -              | -              | Slow      |
 *notes:* * amortized cost, ** does not include search time

##Sorted Lists
+ A sorted list is a list with its items indexed in order. Duh.

|   Data Structures | Peek at first / middle / last | Insert | Remove first / middle / last | Find |
|:-------------:|:--------------:|:--------------:|:--------------:|:---------:|
| Dynamic Array (unsorted) | O(1)           | O(1)*    | O(n) | O(n)   |
| Dynamic Array (sorted) | O(1)           | O(n)   | O(n) | O(log n)   |
| Singly Linked List (sorted) | O(1) / O(n) / O(1) | O(n)           |  O(1) / O(n) / O(n)| O(n)      |
| Doubly Linked List (sorted) | O(1) / O(n) / O(1) | O(n)           |  O(1) / O(n) / O(n) | O(n)      |
| Binary Tree   | O(log n)       | O(log n) | O(log n) | O(log n)  |
*notes:* * amortized cost

## Stacks
+ In a stack, an element can be inserted at end (pushed) or removed from the end (popped)
+ Last element added, first to be removed (LIFO)
+ Most implementations allow the last element to be looked at without modifying the stack

| Data structures | Peek at first | Insert | Remove | 
|:---------------:| :------------:|:------:|:------:|
| Dynamic Array | O(1) | O(1)* | O(1)|
| Singly Linked List | O(1) | O(1) | O(n) |
| Doubly Linked List | O(1) | O(1) | O(1) |
*notes:* * amortized cost

## Queues
+ In a queue, elements can be **added to end** and **removed from front**.
+ First out: element that was in the queue the longest

| Data structures | Peek at first | Insert | Remove | 
|:---------------:| :------------:|:------:|:------:|
| Dynamic Array | O(1) | O(1)* | O(1)|
| Singly Linked List | O(1) | O(1) | O(1) |
| Doubly Linked List | O(1) | O(1) | O(1) |
*notes:* * amortized cost

##Double Ended Queues
+ Elements can be added and removed at both the front and back

| Data structures | Peek at first / last | Insert first / last | Remove first / last | 
|:---------------:| :------------:|:------:|:------:|
| Dynamic Array | O(1) | O(1)* | O(1)|
| Singly Linked List | O(1) | O(1) | O(1) / O(n)|
| Doubly Linked List | O(1) | O(1) | O(1) |
*notes:* * amortized cost

##Maps
+ A map identifies each element by unique key, not index
+ For sorted dynamic array or binary tree, keys must be ordered

| Data structures | Insert / Remove | Find | 
|:---------------:| :------------:|:------:|
| Dynamic Array (sorted) | O(n) | O(log n) |
| Binary Tree | O(log n) | O(log n) |
| Hash Map | O(1) | O(1) |

Source: [entropy interactive](http://entropyinteractive.com/2011/02/computer-science-data-structures/)
