int d = 30;

void setup(){
  size(800, 600);
}

void draw(){
  for(int y = 0; y <= height; y += (d + 10)){ 
     for(int x = 0; x <= width; x += (d + 10)){
       fill(random(255), random(255), random(255));
       ellipse(x, y, d, d);
   }
 }
 
 if(mousePressed && mouseButton == LEFT){
   d++;
 }
 
 else if(mousePressed && mouseButton == RIGHT){
   d--;
 }
 
 if(d < 1){
   d = 1;
 }
}
