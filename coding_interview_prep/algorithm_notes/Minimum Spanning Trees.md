#Minimum Spanning Trees
A common problem in communications networks and circuit design is that of connecting together a set of nodes (communication sites or circuit components) by a network of minimal total length (length is the sum of the lengths of connecting wires).

+ Assume network is **unidirected**
+ Goal: minimize the length of connecting network.
+ Resulting connection graph: connected, unidirected, acyclic == **FREE TREE**
+ Computational problem: *minimum spanning tree* problem (MST)
    + MST = spanning tree of minimum weight
    + may not unique, but if all edge weights are distinct, then MST will be distinct
    
ex. The figure below shows three spanning trees for the same graph. The shaded rectangles indicate the edges in the spanning tree. Only the middle and right ones are MST. (Note: not only do the edges sum to the same value, but the same set of edge weights appear in the two MSTs. Coincidence?)
![](../imgs/MST_graphs.png)

###Steiner Minimum Trees
In general, the problem of determining the lowest cost interconnection tree between a given set of nodes, assuming that you are allowed additional nodes -- **Steiner points** is called the *Steiner minimum tree* (SMT)

![](../imgs/MST_and_SMT_comparison.png)

##Prim's algorithm
+ greedy algorithm that is generic approach for computing a minimum spanning tree.
