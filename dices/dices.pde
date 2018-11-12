PImage zar1;
PImage zar12;
PImage zar2;
PImage zar22;
PImage zar3;
PImage zar32;
PImage zar4;
PImage zar42;
PImage zar5;
PImage zar52;
PImage zar6;
PImage zar62;

int num1 = int(random(1, 7));
int num2 = int(random(1, 7));

void setup(){
  size(600, 600);
  zar1 = loadImage("zar1.png");
  zar12 = loadImage("zar1.2.png");
  zar2 = loadImage("zar2.png");
  zar22 = loadImage("zar2.2.png");
  zar3 = loadImage("zar3.png");
  zar32 = loadImage("zar3.2.png");
  zar4 = loadImage("zar4.png");
  zar42 = loadImage("zar4.2.png");
  zar5 = loadImage("zar5.png");
  zar52 = loadImage("zar5.2.png");
  zar6 = loadImage("zar6.png");
  zar62 = loadImage("zar6.2.png");
}

void draw(){
  
  if(num1 == 1){
    image(zar1, 0, 0, width/2, height);
  }
  
  else if(num1 == 2){
    image(zar2, 0, 0, width/2, height);
  }
  
  else if(num1 == 3){
    image(zar3, 0, 0, width/2, height);
  }
  
  else if(num1 == 4){
    image(zar4, 0, 0, width/2, height);
  }
  
  else if(num1 == 5){
    image(zar5, 0, 0, width/2, height);
  }
  
  else if(num1 == 6){
    image(zar6, 0, 0, width/2, height);
  }
  
  if(num2 == 1){
    image(zar12, width/2, 0, width/2, height);
  }
  
  else if(num2 == 2){
    image(zar22, width/2, 0, width/2, height);
  }
  
  else if(num2 == 3){
    image(zar32, width/2, 0, width/2, height);
  }
  
  else if(num2 == 4){
    image(zar42, width/2, 0, width/2, height);
  }
  
  else if(num2 == 5){
    image(zar52, width/2, 0, width/2, height);
  }
  
  else if(num2 == 6){
    image(zar62, width/2, 0, width/2, height);
  }
  
  stroke(#000000);
  line(300, 0, 300, 600);
}

void keyReleased(){
  if(key == '1'){
    num1 = int(random(1, 7));
  }
  
  else if(key == '2'){
    num2 = int(random(1, 7));
  }
  
  else if(key == ' '){
    num1 = int(random(1, 7));
    num2 = int(random(1, 7));
  }
}
