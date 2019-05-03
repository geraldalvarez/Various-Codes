//Building abuilding;

//Building bbuilding;

//void setup(){
//  size(1000,1000);
//  abuilding = new Building(100, height - 400 - 10, 100, 400);
//   bbuilding = new Building(300, 100, 80, 300);
//}

//void draw(){
//  background(0);
//  abuilding.display();
//  bbuilding.display();
//}



import java.util.Iterator;

ArrayList<Building> systems; 
int timer;

boolean start;

void setup() {
  size(1300, 1000);
  systems = new ArrayList<Building>();
  timer = millis();
  start = false;
}

void draw() {
  background(0);
  if (start) {
    float x = random(width);

    if (millis() > timer + 800) {
      timer = millis();
      float h = 400+ (random(1) * 400);
      float w = 100 + (random(1) * 100);
      systems.add(new Building(random(width), height - h - 5, w, h));
    }


    Iterator<Building> it = systems.iterator();

    while (it.hasNext()) {
      Building ls = it.next();

      if (ls.isDead()) {
        it.remove();
      } else {
        ls.run();
      }
    }
  }
}

void keyPressed() {

  if (key == 32)
    start=!start;
}