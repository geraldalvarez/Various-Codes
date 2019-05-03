class Line {

  float x1, y1, x2, y2;
  float alpha;
  int opacity;

  Line(float x1, float y1, float x2, float y2) {
    this.x1 =x1;
    this.y1 = y1;
    this.x2 = x2;
    this.y2 = y2;
    alpha = int(random(255));
    opacity = 1;
  }

  void display() {
    strokeWeight(2);
    stroke(255, alpha);
    line(x1, y1, x2, y2); 
  }

  void update() {
    //alpha += opacity;
    //if (alpha == 255 || alpha == 0)
    //  opacity *= -1;
  }
  
  void setAlpha(){
   this.alpha-=1; 
  }
}