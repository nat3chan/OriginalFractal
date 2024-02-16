public void setup() {
  size(400,400);
  background(0);
}

public void draw() {
  noFill();
  stroke(75,10,40);
  fractal(200,200,200);
}

public void fractal(int x, int y, int size) {
  quad(x+size%10, y, x-size, y, x, y+size%5, x, y-size/2);
  if (size > 4) {
    fractal(x+60, y, size/2);
    fractal(x-60, y, size/2);
    fractal(x, y+40, size/10);
    fractal(x, y-40, size/10);
    fractal(x+25, y, size/8);
    fractal(x-25, y, size/8);
    fractal(x+30, y, size/4);
    fractal(x-30, y, size/4);
    fractal(x, y+20, size/4);
    fractal(x, y-20, size/4);
  }
}
