class Line {

  float x1, y1, x2, y2;
  int alpha;
  int opacity;
  int lineStroke;

  Line(float x1, float y1, float x2, float y2) {
    this.x1 =x1;
    this.y1 = y1;
    this.x2 = x2;
    this.y2 = y2;
    alpha = int(random(255));
    opacity = 1;
    //lineStroke = int(random(5, 11));
    lineStroke = int(random(2,5));
  }

  void run() {
    update();
    display();
  }

  void display() {
    strokeWeight(lineStroke);
    stroke(255, alpha);
    line(x1, y1, x2, y2); 
    println(alpha);
  }

  void update() {
    alpha-=opacity;
  }
  
  boolean isDead(){
   if(alpha < 0){
     return true;
   }else{
     return false;
   }
  }
}