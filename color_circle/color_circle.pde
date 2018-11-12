void setup(){
  size(600, 600);
  background(0, 0, 0);
}

float x;
float y;

void draw(){
  x = lerp(x, mouseX, 0.05);
  y = lerp(y, mouseY, 0.05);
  
  if(mousePressed){
    fill(random(0, 255), random(0, 255), mouseY - mouseX);
  }
  
  else{
   if(mouseX < 300){
      if(mouseY < 300){
        fill(mouseX, mouseY, mouseY + mouseX);
      }
      
      if(mouseY > 300){
        fill(mouseY, mouseX, mouseX + mouseY);
      }
    }
    
    if(mouseX > 300){
      if(mouseY < 300){
        fill(mouseX, mouseY, mouseY - mouseX);
      }
      
      if(mouseY > 300){
        fill(400 - mouseY, 600 - mouseX, mouseX - mouseY);
      }
    } 
  }
  
  if(keyPressed && key == 32){
    noStroke();
  }
  
  else{
    stroke(0);
  }
  
  ellipse(x, y, 80, 80);
}
