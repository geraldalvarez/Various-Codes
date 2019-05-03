import java.util.Iterator;

ArrayList<Moon> systems; 
int timer;

boolean start;

void setup() {
  size(1000, 1000);
  systems = new ArrayList<Moon>();
  timer = millis();
  start = false;
}

void draw() {
  background(0);
  if (start) {

    float x = random(width);

    if (millis() > timer + 800) {
      timer = millis();
      systems.add(new Moon(width/2, height/2, 0, 0));
    }


    Iterator<Moon> it = systems.iterator();

    while (it.hasNext()) {
      Moon ls = it.next();

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