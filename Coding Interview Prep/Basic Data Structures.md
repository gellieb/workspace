#Data Structures

##Dynamic Array
+ aka: Vector, Resizable array, ArrayList

###What it is
+ Simplest dynamic array is a wrapper around a static array. When the original array runs out of space, a new larger array is allocated, and the contents of the original array are copied to the new array
+ Elements accessed like a static array
+ Normally, grows only from one end
    + Results in better performan for operations on that end.
    + However, growing from either side at the cost of additional memory
+ Useful just about everywhere an ordinary array is
+ Ability to grow and shrink in size makes them more versatile, but retain fast indexing and iterations.

###Pros
+ Very fast indexing and iteration
+ Memory coherency

###Cons
+ Adding element at end may take O(n) time (but usually not)
+ Adding elements in middle is slow 
    + Adding/deleting elements at the end is fast, but doing it in the middle means all the elements after the modificatoin must be copied and moved == SLOW.
+ Wastes space if array isn't full
+ **Worse case performance: linear**

##Linked List
+ aka: Singly linked list, Doubly linked list

###What it is
+ A linked list wraps each element in a node.
+ Singly linked list: each node contains a reference to the next node.
+ Doubly linked list: contains references to both the next and previous nodes.
+ **Advantage for doubly linked lists**
    + deletions become easier
    + list can be traversed in either direction ***BUT COST= more memory***

###Pros
+ Modifications made while iterating over the list are fast
+ Insertions/deletions at both beginning and end of list are fast

###Cons
+ Slower iterations than (dynamic) arrays (because of the number of references that need to be traversed)
+ Extra memory overhead for each element
+ Random access is slow

##Binary Tree
+ aka: Red-black tree

###What it is
+ A binary tree consists of nodes, each with two children. 
    + Left child is always less than the parent
    + Right child is always greater than the parent
+ Simple structure == operations carried out in **O(log n)** time
+ Almost all operations have logarithmic performance = strength and weakness
    + Not the fastest, but consistent performance
    + Average case and worst case performances are the same
+ Elements **must** be ordered (ie. alphabetically)

###Pros
+ Logarithmic performance for most operations (consistent performance)
+ Elements always remain sorted

###Cons
+ Logarithmic performance for most operations (not the fastest performance)
+ Slower iteration 
+ Elements must have ordering

##Heaps
###What it is
+ A heap is a partially sorted binary tree. 
+ Not completely in order, but has sorting principle:
    + Every node has a value less (or greater) than either of its children
+ "Complete tree": has no gaps between leaves.
    + Tree has every level filled in before adding a node to the next level. 
    + Given a level, nodes fill in from left to right, with no breaks
+ Min-heap: keys of parent nodes are always less than or equal to those of the children and the lowest key is the root node.
+ Max-heap: keys of parent nodes are always greater than or equal to those of the children and the highest key is the root node.
    
###Why use a heap?
+ A heap can be thought of as a priority queue.
    + The most important node will always be at the top. When removed, the replacement will be the most important.
+ **USEFUL** when: algorithms require certain things to be processed in a complete order but when you don't want to perform a full sort or need to know anything about the rest of the nodes
    + ie. Dijkstra's Algorithm, a well-known algorithm for finding the shortest distance between nodes in a graph, can be optimized by using a priority queue.
+ Heaps can sort data.
+ Efficiency: O(nlogn)-- not the fastest possible sorting algorithm

###How to implement a heap
_Operations_
+ **Upheap**: Add node to heap
    + Compare node's value to its parent node. 
    + If value is less than its parent node, switch the two nodes and continue the process. Otherwise, because the parent node is less than the child node, stop the process.
    + If parent node is less than the node being upheaped, you know the heap is correct. The parent is also greater than its own parent, all the way up to the root
+ **Downheap**: Remove node from heap (similar to upheaping process)
    + Compare 




##Hash Map
+ aka: hash table


### What it is
+ A hash map consists of a set of keys, each uniquely mapping to an element. The keys are transformed by an algorithm into an integer which is then used as an index into an array.
+ Actual elements are stored in array
    + Because of limited size of array, collisions may occur when two keys hash to the same value.
    + Collision resolution routines reduce performance
+ Best at storing large number of elements and fast look up
+ Operations (find, insert, and delete) = **constant time** even if data set is large
    + ***BUT*** constant time can be quite large
+ **High memory cost**
+ To reduce # of collisions, hash map **must** be **larger** than the number of elements in it (buckets!)

###Pros
+ Constant time: find, insert, delete

###Cons
+ Hashing functions may be slow (may have large constant time, depending on size of data set)
+ Performance degrades as table fills up (again, large constant time)
+ Large memory overhead

