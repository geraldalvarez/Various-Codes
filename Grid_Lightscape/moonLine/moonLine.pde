import java.util.Iterator;

ArrayList<Line> systems; 
int numLines = 20;

void setup() {
  size(1000, 1000);
  systems = new ArrayList<Line>();
}

void draw() {
  background(0);

  float x = random(width);

  if (systems.size() < numLines)
    if (int(random(0, 2)) == 0)
      systems.add(new Line(x, 0, x, height));
    else
      systems.add(new Line(0, x, width, x));

  Iterator<Line> it = systems.iterator();

  while (it.hasNext()) {
    Line ls = it.next();

    if (ls.isDead()) {
      it.remove();
    } else {
      ls.run();
    }
  }
}