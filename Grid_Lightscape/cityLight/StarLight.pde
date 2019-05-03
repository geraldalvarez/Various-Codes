class Star {
  float x, y;
  float dia;
  float alpha;
  boolean maxed;

  Star(float x, float y, float dia) {
     
    this.x = x;
    this.y = y;
    alpha = 5;
    maxed = false;
    
    this.dia = int(map(y, 0, height, 0, 18));

  }

  void run() {
    update();
    display();
  }

  void display() {
    noStroke();
    fill(255, alpha);
    ellipseMode(CENTER);
    ellipse(x, y, dia, dia);
  }

  void update() {
    if(!maxed){
      alpha+=.50;
      if(alpha >=255) maxed = true;
    }else{
      alpha-=.50;
    }
    
   
  }

  boolean isDead() {
    if (alpha < 0) {
      return true;
    } else {
      return false;
    }
  }
}