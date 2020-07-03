int Node_coords[][]={
  {174, 54}, 
  {142, 146}, 
  {111, 243}, 
  {120, 386}, 
  {255, 447}, 
  {248, 551}, 
  {240, 657}, 
  {402, 654}, 
  {403, 336}, 
  {408, 199}, 
  {657, 240}, 
  {616, 441}, 
  {636, 634}, 
  {809, 512}, 
  {1004, 383}, 
  {1091, 201}, 
  {1016, 75}, 
  {865, 66}, 
  {1134, 522}, 
  {1184, 651}
};

int neighbours[][]={
  {1, 9}, 
  {0, 2}, 
  {1, 3, 9}, 
  {2, 4}, 
  {3, 5}, 
  {4, 6}, 
  {5, 7}, 
  {6, 8, 11}, 
  {7, 9, 11}, 
  {0, 2, 8, 10}, 
  {9, 13}, 
  {7, 8, 13}, 
  {13}, 
  {10, 11, 12, 14}, 
  {13, 15, 18}, 
  {14, 16}, 
  {15, 17}, 
  {16}, 
  {14, 19}, 
  {18}
}; 
int x=0;
ArrayList<Node> slowPath;
String city[]={"Oradea", "Zerind", "Arad", "Timisora", "Lugoj", "Mehadia", "Dobreta", "Craiova", "Rimnicu Vilcea", "Sibiu", "Fagaras", "Piteshi", "Giurgiu", "Bucharest", "Urziceni", "Vaslui", "Lasi", "Neamt", "Hirsova", "Eforie"};
ArrayList<Node> nodeList;
Node n;
AstarAlgo aa;
ArrayList<String> result;
ArrayList<Node> path_tracers;
ArrayList<Node> srcdestlist;

int runBtnX;
int runBtnY;
int resetBtnX;
int resetBtnY;
void setup() {
  srcdestlist=new ArrayList<Node>(2);
  size(1280, 720);
  n=new Node();
  nodeList= new ArrayList<Node>();
  path_tracers=new ArrayList<Node>();
  for (int i=0; i<Node_coords.length; i++) {
    nodeList.add(new Node(Node_coords[i][0], Node_coords[i][1], neighbours[i], city[i]));
  }

  background(0);
  runBtnX = width/2-200;
  runBtnY = 10;
  resetBtnX = width/2;
  resetBtnY = 10;
  fill(255, 255, 0);
  rect(runBtnX, runBtnY, 50, 50, 7);
  rect(resetBtnX, resetBtnY, 50, 50, 7);
  //fill(0, 255, 0);
  fill(150,0,0);
  text("RUN", runBtnX+20, runBtnY+30);
  text("RESET", resetBtnX+15, resetBtnY+30);
  for (Node n : nodeList) {
    n.drawEdges();
  }

  for (Node n : nodeList) {
    fill(255, 255, 0);
    n.drawNode();
  }
  
  n.weights();
  aa=new AstarAlgo();
  slowPath = new ArrayList<Node>();
}

void draw() {
  //background(0);

  if (slowPath!=null) {
    
    for(int i=0;i<slowPath.size();i++)
    {
        fill(0, 0, 255);
      slowPath.get(i).drawNode();
    }
    
  }
}

void mousePressed() {
  //if reset button is clicked
  if (mouseX>resetBtnX && mouseX<resetBtnX+100 && mouseY>resetBtnY && mouseY<resetBtnY+50) {
    //redraw whole graph
    clear();
    fill(255,255,0);
    stroke(255,255,255);
    rect(runBtnX, runBtnY, 50, 50, 7);
    fill(150,0,0);
    text("RUN", runBtnX+20, runBtnY+30);
    
    fill(255, 255, 0);
    rect(resetBtnX, resetBtnY, 50, 50, 7);
    fill(150,0,0);
    text("RESET", resetBtnX+15, resetBtnY+30);
    //fill(0);
    //stroke(0);
    //text("",210,54);
    for (Node n : nodeList) {
    n.drawEdges();
  }
    for (Node n : nodeList) {
      fill(255, 255, 0);
      n.drawNode();
    }
    n.weights();
    //empty path_tracers and slowpath and srcdestlist arraylist
    path_tracers.clear();
    slowPath.clear();
    srcdestlist.clear();
    //result.clear();
    println("Reset is pressed");
  }
  
  //if run button is clicked
  if (mouseX>runBtnX && mouseX<runBtnX+100 && mouseY>runBtnY && mouseY<runBtnY+50) {
    //call aa.pathfinder function by passing srcdestlist[0] as source and srcdestlist[1] as dest
    println("Run Pressed");
    
    //int h=aa.heuristic.get(0);
    fill(255,255,255);
    rect(runBtnX, runBtnY, 50, 50, 7);
    fill(150,0,0);
    text("RUN", runBtnX+20, runBtnY+30);
    
    result=aa.pathFinder(srcdestlist.get(0).cityName, srcdestlist.get(1).cityName);
    ////////////////////////////////////////////////////////
    fill(255,0,0);
    text(aa.heuristic.get(0),210,54);
    text(aa.heuristic.get(1),100,146);
    text(aa.heuristic.get(2),70,243);
    text(aa.heuristic.get(3),75,386);
    text(aa.heuristic.get(4),210,455);
    text(aa.heuristic.get(5),200,551);
    text(aa.heuristic.get(6),200,657);
    text(aa.heuristic.get(7),440,654);
    text(aa.heuristic.get(8),440,336);
    text(aa.heuristic.get(9),440,180);
    text(aa.heuristic.get(10),690,240);
    text(aa.heuristic.get(11),650,441);
    text(aa.heuristic.get(12),666,634);
    text(aa.heuristic.get(13),809,550);
    text(aa.heuristic.get(14),1040, 383);
    text(aa.heuristic.get(15),1124, 201);
    text(aa.heuristic.get(16),1050, 75);
    text(aa.heuristic.get(17),815, 66);
    text(aa.heuristic.get(18),1160, 522);
    text(aa.heuristic.get(19),1220, 651);
    ///////////////////////////////////////////////////////
    for (String i : result) {
      for (int j=0; j<20; j++) {
        if (city[j].equals(i)) {
          path_tracers.add(nodeList.get(j));
          break;
        }
      }
    }
    println(path_tracers);
    //call getslowPath function
    getSlowPath();
  }
  
  //if any node is clicked
  if (srcdestlist.size() < 2) {
    for (Node n : nodeList) {
      if (dist(n.x, n.y, mouseX, mouseY)<=30) {
        srcdestlist.add(n);
        push();
        if(srcdestlist.size()==1){
           fill(0, 255, 0);
           circle(n.x, n.y, 30);
        }
        else{
          stroke(0,0,255);
         fill(255,0, 0);
         circle(n.x, n.y, 30);
        }
        
        pop();
      }
    }
  }
}

void getSlowPath() {
  new Thread()
  {
    public void run() {
      try {
        Thread.sleep(1000);
        for (Node i : path_tracers) {
          Thread.sleep(2000);
          println("i.x  :"+i.x);
          slowPath.add(i);
          //println(i.cityName);
        }
      }
      catch(Exception e) {
      }
    }
  }
  .start();
}
