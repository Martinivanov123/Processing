class Bubble {

  float x;
  float y;
  float diameter;

  float red;
  float green;
  float blue;
  Bubble(float tempD) {
    x = width/2;
    y = height;
    diameter = tempD;
    fill(127);
  }

  void ascend() {
    y--;
    x += random(-2, 2);
  }

  void display() {
    stroke(0);
    ellipse(x, y, diameter, diameter);
  }

  void changeColor() {
    red = int(random(0, 256));
    green = int(random(0, 256));
    blue = int(random(0, 256));
    fill(red, green, blue);
  }

  void pop() {
    x = x - 500;
  }

  void top(){
    if(y < diameter/2){
      y = diameter/2;
    }
  }
}
