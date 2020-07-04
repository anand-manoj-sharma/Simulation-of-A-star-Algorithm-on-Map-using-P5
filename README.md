<h1><b>Simulation-of-A-star-Algorithm-on-Map-using-P5</b></h1>
Searching Shortest Path on a Certain map using the concept of A-star algorithm with the help of Processing

<b> What is A* Search Algorithm?</b>
A* Search algorithm is one of the best and popular technique used in path-finding and graph traversals.

<b> Why A* Search Algorithm?</b>
Informally speaking, A* Search algorithms, unlike other traversal techniques, it has “brains”. What it means is that it is really a smart algorithm which separates it from the other conventional algorithms.
And it is also worth mentioning that many games and web-based maps use this algorithm to find the shortest path very efficiently (approximation).

This algorithm is different from other path finding algorithm because it also includes the heuristic value associated with each node with the distance between one point to other.

<b> What is Heuristic value?</b>
This value gives the the distance between all the Nodes from the destination node which helps in finding the effient path from given source and destination.
So all in all A-star algorithm includes two values the heuristic and the distance from one node to other.

Heuristic value is the distance between all the Nodes from the destination node, it can be calculated in 3 ways:-
1) Manhattan Distance.
2) Diagonal Distance.
3) Euclidean Distance.

I have used Euclidean distance concept in this project.
hv = sqrt ( pow(current_cell.x – goal.x,2) + pow(current_cell.y – goal.y,2)).
where hv=heuristic value.

# I have used Java and Processing in Java to complete this project.
