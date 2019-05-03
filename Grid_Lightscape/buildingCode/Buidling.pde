class Building {

  Line aline, bline, cline;
  Line[] horLines1;
  Line[] horLines2;
  Line botline;

  float alpha;
  
  Building(float x, float y, float w, float h) {
   
    aline = new Line(x, y, x, y+h);
    cline = new Line(x + w, y, x + w, y+h);

    float randomW = w * random(0.3);
    float xpos = x + randomW;
    float randomH = h * random(0.15);
    float ypos = y - randomH;
    float newH = h + randomH;

    bline = new Line(xpos, ypos, xpos, ypos + newH);

    horLines1 = new Line[10];
    horLines2 = new Line[10];

    float ystep1 = h / 10;
    float ystep2 = newH/10;

    for (int i = 0; i < horLines1.length; i++) {
      horLines1[i] = new Line(x, y + (ystep1 * i), xpos, ypos + (ystep2 * i));
      horLines2[i] = new Line(xpos, ypos + (ystep2 * i), x + w, y + (ystep1 * i));
    }

    botline = new Line(x, y + h, x + w, y +h);

    alpha = 255;
  }

  void run() {
    update();
    display();
  }

  void display() {
    aline.display();
    cline.display();
    bline.display();

    for (int i = 0; i < horLines1.length; i++) {
      horLines1[i].display(); 
      horLines2[i].display();
    }

    botline.display();
  }

  void update() {
    aline.setAlpha();
    cline.setAlpha();
    bline.setAlpha();
    for (int i = 0; i < horLines1.length; i++) {
      horLines1[i].setAlpha();
      horLines2[i].setAlpha();
    }

    botline.setAlpha();
  }

  boolean isDead() {
    if (alpha <= 0) {
      return true;
    } else {
      return false;
    }
  }
}