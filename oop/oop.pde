Bubble b;
Bubble b1;

void setup(){
  size(640, 360);
  b = new Bubble(64);
  b1 = new Bubble(16);
}

void draw(){
  background(210);
  b.ascend();
  b.display();
  b.top();
  
  b1.ascend();
  b1.display();
  b1.top();
}

void keyPressed(){
  if(key == 'c'){
    b.changeColor();
    b1.changeColor();
  }
  
  else if(key == 'p'){
    b.pop();
  }
}
