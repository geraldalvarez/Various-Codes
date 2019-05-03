class Moon {

  float x;
  float y;
  float w, h;
  float alpha;
  int diameter;
  int strokeLine;

  Moon(float x, float y, float w, float h) {
    this.x =x;
    this.y= y;
    this.w = w;
    this.h = h;
    alpha = 255;
    diameter = 1;
    strokeLine = int(random(1,4));
  }
  
  void run(){
    update();
   display();
  }

  void display() {
    strokeWeight(strokeLine);
    stroke(255, alpha);
    //fill(0, alpha);
    noFill();
    ellipseMode(CENTER);
    ellipse(x, y, diameter, diameter);
  }

  void update() {
    alpha-=.25;
    diameter++;
  }
  
  boolean isDead(){
       if(alpha < 0){
     return true;
   }else{
     return false;
   }
  }
}