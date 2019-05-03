
import java.util.Iterator;

ArrayList<Star> systems;
int timer;

float xoff = 0.0;
float yoff = 0.0;

boolean start;

void setup() {
  size(1000, 1000);
  systems = new ArrayList<Star>();
  timer = millis();
  start = false;
}

void draw() {
  background(0);

  if (start) {

    float x = random(width);
    xoff = xoff + .01;
    yoff+= 0.1;
    float n = noise(xoff) * width;
    float ny = noise(yoff) * height;

    //if(millis() > timer + 800){
    //  timer = millis();
    systems.add(new Star(ny, n, 5));
    //}


    Iterator<Star> it = systems.iterator();

    while (it.hasNext()) {
      Star ls = it.next();

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