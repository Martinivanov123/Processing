class Particle{
  float x;
  float y;
  float r;
  
  Particle(){
    x = random(width);
    y = random(height);
    r = random(4,18);
  }
  
  Particle(float tempX, float tempY, float tempR){
    x = tempX;
    y = tempY;
    r = tempR;
  }
  
  void display(){
    stroke(255);
    strokeWeight(4);
    noFill();
    ellipse(x, y, 2*r, 2*r);
  }
  
  boolean overlapping(Particle object){
    float d = dist(x, y, object.x, object.y);
    if(d <= r + object.r){
      return true;
    }
    return false;
  }
}
