class Node
{
  int x,y,neighbours[];
  String cityName;
 
 Node(){}
  Node(int x,int y, int[] neighbours,String cityName){
  this.x=x;
  this.y=y;
  this.neighbours=neighbours;
  this.cityName=cityName;
  }
  
  void drawNode(){
    //fill(255, 255, 0);
    circle(this.x,this.y, 30);
    stroke(255,0,0);
    text(this.cityName,this.x-10,this.y-20);
  }
  
  void drawEdges(){
    for (int i=0; i<neighbours.length; i++) {
      stroke(255, 0, 0);
      strokeWeight(2);
      line(this.x, this.y, Node_coords[neighbours[i]][0], Node_coords[neighbours[i]][1]);
    }
  }
  
  void weights(){
     fill(255,0,255);
     text("151",240,85);
     text("71",140,89);
     text("75",100,180);
     text("118",90,320);
     text("140",200,220);
     text("111",150,430);
     text("70",225,490);
     text("75",220,600);
     text("120",300,680);
     text("146",410,500);
     text("80",410,280);
     text("99",500,200);
     text("211",700,300);
     text("138",510,510);
     text("97",510,380);
     text("101",680,455);
     text("90",710,600);
     text("85",860,455);
     text("98",1090,455);
     text("142",1050,300);
     text("92",1060,130);
     text("87",920, 61);
     text("86",1170,590);
  }
  
  }
