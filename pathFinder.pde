import java.util.*;
class AstarAlgo {

  Node1 source, dest;
  ArrayList<Integer> heuristic;
  ArrayList<String> pathFinder(String s, String d)
  {
    ArrayList<Node1> list=new ArrayList<Node1>();

     heuristic=new ArrayList<Integer>();
    ArrayList<track> store=new ArrayList<track>();
    store.add(new track("Oradea",174, 54));
    store.add(new track("Zerind",142, 146));
    store.add(new track("Arad",111, 243));
    store.add(new track("Timisora",120, 386));
    store.add(new track("Lugoj",255, 447));
    store.add(new track("Mehadia",248, 551));
    store.add(new track("Dobreta",240, 657));
    store.add(new track("Craiova",402, 654));
    store.add(new track("Rimnicu Vilcea",403, 336));
    store.add(new track("Sibiu",408, 199));
    store.add(new track("Fagaras",657, 240));
    store.add(new track("Piteshi",616, 441));
    store.add(new track("Giurgiu",636, 634));
    store.add(new track("Bucharest",809, 512));
    store.add(new track("Urziceni",1004, 383));
    store.add(new track("Vaslui",1091, 201));
    store.add(new track("Lasi",1016, 75));
    store.add(new track("Neamt",865, 66));
    store.add(new track("Hirsova",1134, 522));
    store.add(new track("Eforie",1184, 651));
    
    int x=0,y=0;
    println("dest="+d);
    for(track i:store){      
      if((i.name).equals(d)){
       
         x=i.x_axis;
         y=i.y_axis;
         break;
      }
    }
    
    for(track i:store){
      int cal=(int)Math.pow(x-i.x_axis,2)+(int)Math.pow(y-i.y_axis,2);
      cal=(int)Math.sqrt(cal);
      heuristic.add(cal);
    }
    println("Heuristic Values:-"+heuristic);
    /////////////////////////////////////////////////////////////////
    //Node1 n1 = new Node1("Oradea",360);
    //Node1 n2 = new Node1("Zerind", 374);
    //Node1 n3 = new Node1("Arad", 366);
    //Node1 n4 = new Node1("Timisora", 329);
    //Node1 n5 = new Node1("Lugoj", 244);
    //Node1 n6 = new Node1("Mehadia", 241);
    //Node1 n7 = new Node1("Dobreta", 242);
    //Node1 n8 = new Node1("Craiova", 160);
    //Node1 n9 = new Node1("Rimnicu Vilcea", 193);
    //Node1 n10 = new Node1("Sibiu", 253);
    //Node1 n11 = new Node1("Fagaras", 178);
    //Node1 n12 = new Node1("Piteshi", 98);
    //Node1 n13 = new Node1("Giurgiu", 77);
    //Node1 n14 = new Node1("Bucharest", 0);
    //Node1 n15 = new Node1("Urziceni", 80);
    //Node1 n16 = new Node1("Vaslui", 199);
    //Node1 n17 = new Node1("Lasi", 226);
    //Node1 n18 = new Node1("Neamt", 234);
    //Node1 n19 = new Node1("Hirsova", 151);
    //Node1 n20 = new Node1("Eforie", 161);
    
    Node1 n1 = new Node1("Oradea",heuristic.get(0));
    Node1 n2 = new Node1("Zerind", heuristic.get(1));
    Node1 n3 = new Node1("Arad", heuristic.get(2));
    Node1 n4 = new Node1("Timisora", heuristic.get(3));
    Node1 n5 = new Node1("Lugoj", heuristic.get(4));
    Node1 n6 = new Node1("Mehadia", heuristic.get(5));
    Node1 n7 = new Node1("Dobreta", heuristic.get(6));
    Node1 n8 = new Node1("Craiova", heuristic.get(7));
    Node1 n9 = new Node1("Rimnicu Vilcea", heuristic.get(8));
    Node1 n10 = new Node1("Sibiu", heuristic.get(9));
    Node1 n11 = new Node1("Fagaras", heuristic.get(10));
    Node1 n12 = new Node1("Piteshi", heuristic.get(11));
    Node1 n13 = new Node1("Giurgiu", heuristic.get(12));
    Node1 n14 = new Node1("Bucharest",heuristic.get(13));
    Node1 n15 = new Node1("Urziceni",heuristic.get(14));
    Node1 n16 = new Node1("Vaslui", heuristic.get(15));
    Node1 n17 = new Node1("Lasi", heuristic.get(16));
    Node1 n18 = new Node1("Neamt",heuristic.get(17));
    Node1 n19 = new Node1("Hirsova", heuristic.get(18));
    Node1 n20 = new Node1("Eforie", heuristic.get(19));

    //initialize the edges

    //Oradea
    n1.adjacencies = new Edge[]{
      new Edge(n2, 71), 
      new Edge(n10, 151)
    };
    list.add(n1);
    //Zerind
    n2.adjacencies = new Edge[]{
      new Edge(n3, 75), 
      new Edge(n1, 71)
    };
    list.add(n2);

    //Arad
    n3.adjacencies = new Edge[]{
      new Edge(n2, 75), 
      new Edge(n4, 118), 
      new Edge(n10, 140)
    };
    list.add(n3);

    //Timisora
    n4.adjacencies = new Edge[]{
      new Edge(n3, 118), 
      new Edge(n5, 111)
    };
    list.add(n4);

    //Lugoj
    n5.adjacencies = new Edge[]{
      new Edge(n4, 111), 
      new Edge(n6, 70)
    };
    list.add(n5);

    //Mehadia
    n6.adjacencies = new Edge[]{
      new Edge(n5, 70), 
      new Edge(n7, 75)

    };
    list.add(n6);

    //Dobreta
    n7.adjacencies = new Edge[]{
      new Edge(n6, 75), 
      new Edge(n8, 120)

    };
    list.add(n7);

    //Craiova
    n8.adjacencies = new Edge[]{
      new Edge(n7, 120), 
      new Edge(n9, 146), 
      new Edge(n12, 138)
    };
    list.add(n8);

    //Rimnicu Vilcea
    n9.adjacencies = new Edge[]{
      new Edge(n8, 146), 
      new Edge(n10, 80), 
      new Edge(n12, 97)
    };
    list.add(n9);

    //Sibiu
    n10.adjacencies = new Edge[]{
      new Edge(n9, 80), 
      new Edge(n11, 99), 
      new Edge(n1, 151), 
      new Edge(n3, 140)
    };
    list.add(n10);

    //Fagaras
    n11.adjacencies = new Edge[]{
      new Edge(n10, 99), 
      new Edge(n14, 211)
    };
    list.add(n11);

    //Piteshi
    n12.adjacencies = new Edge[]{
      new Edge(n9, 97), 
      new Edge(n8, 138), 
      new Edge(n14, 101)
    };
    list.add(n12);

    //Giurgiu
    n13.adjacencies = new Edge[]{
      new Edge(n14, 90), 

    };
    list.add(n13);

    //Bucharest
    n14.adjacencies = new Edge[]{
      new Edge(n13, 90), 
      new Edge(n15, 85), 
      new Edge(n12, 101), 
      new Edge(n11, 211)
    };
    list.add(n14);

    //Urziceni
    n15.adjacencies = new Edge[]{
      new Edge(n14, 85), 
      new Edge(n16, 142), 
      new Edge(n19, 98)

    };
    list.add(n15);

    //Vaslui
    n16.adjacencies = new Edge[]{
      new Edge(n15, 142), 
      new Edge(n17, 92)

    };
    list.add(n16);

    //Lasi
    n17.adjacencies = new Edge[]{
      new Edge(n16, 92), 
      new Edge(n18, 87)

    };
    list.add(n17);

    //Neamt
    n18.adjacencies = new Edge[]{
      new Edge(n17, 87)                
    };
    list.add(n18);

    //Hirsova
    n19.adjacencies = new Edge[]{
      new Edge(n15, 98), 
      new Edge(n20, 86)

    };
    list.add(n19);

    //Eforie
    n20.adjacencies = new Edge[]{
      new Edge(n19, 86)   
    };
    list.add(n20);



    ////////////////////////////////////////////////////////////////
    for (Node1 ser : list) {
      if ((ser.value).equals(s)) {
        source=ser;
        println(source.value);
      }

      if ((ser.value).equals(d)) {
        dest=ser;
        println(dest.value);
      }
    }

    ////////////////////////////////////////////////////////////////

    AstarSearch(source, dest);

    ArrayList<Node1> path = printPath(dest);

    println("Path: " + path);
    ArrayList<String> res=new ArrayList<String>();
    for (Node1 i : path) {
      res.add(i.value);
    }
    //println(res);
    return res;
  }




  public ArrayList<Node1> printPath(Node1 target) {
    ArrayList<Node1> path = new ArrayList<Node1>();

    for (Node1 node = target; node!=null; node = node.parent) {
      path.add(node);
    }

    Collections.reverse(path);

    return path;
  }



  public void AstarSearch(Node1 source, Node1 goal) {

    Set<Node1> explored = new HashSet<Node1>();

    PriorityQueue<Node1> queue = new PriorityQueue<Node1>(20, new Comparator<Node1>() {
      //override compare method
      public int compare(Node1 i, Node1 j) {
        if (i.f_scores > j.f_scores) {
          return 1;
        } else if (i.f_scores < j.f_scores) {
          return -1;
        } else {
          return 0;
        }
      }
    }
    );

    //cost from start
    source.g_scores = 0;

    queue.add(source);

    boolean found = false;

    while ((!queue.isEmpty())&&(!found)) {

      //the node in having the lowest f_score value
      Node1 current = queue.poll();

      explored.add(current);

      //goal found
      if (current.value.equals(goal.value)) {
        found = true;
      }

      //check every child of current node
      for (Edge e : current.adjacencies) {
        Node1 child = e.target;
        double cost = e.cost;
        double temp_g_scores = current.g_scores + cost;
        double temp_f_scores = temp_g_scores + child.h_scores;


        /*if child node has been evaluated and
         the newer f_score is higher, skip*/

        if ((explored.contains(child)) &&
          (temp_f_scores >= child.f_scores)) {
          continue;
        }

        /*else if child node is not in queue or
         newer f_score is lower*/

        else if ((!queue.contains(child)) ||
          (temp_f_scores < child.f_scores)) {

          child.parent = current;
          child.g_scores = temp_g_scores;
          child.f_scores = temp_f_scores;

          if (queue.contains(child)) {
            queue.remove(child);
          }

          queue.add(child);
        }
      }
    }
  }
}




class Node1 {

  public final String value;
  public double g_scores;
  public final double h_scores;
  public double f_scores = 0;
  public Edge[] adjacencies;
  public Node1 parent;

  public Node1(String val, double hVal) {
    value = val;
    h_scores = hVal;
  }

  public String toString() {
    return value;
  }
}

class Edge {
  public final double cost;
  public final Node1 target;

  public Edge(Node1 targetNode, double costVal) {
    target = targetNode;
    cost = costVal;
  }
}

class track
{
  int x_axis,y_axis;
  String name;
  
  track(String name,int x_axis,int y_axis){
      
    this.name=name;
    this.x_axis=x_axis;
    this.y_axis=y_axis;
  }
}
