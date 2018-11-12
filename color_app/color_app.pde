void setup(){
  size(500, 400);
}

void draw(){
  int mousex = mouseX;
  int mousey = mouseY;
  
  if(mousex < 250 && mousey < 200){
    background(mousex, mousey, mousex + mousey);
  }
  
  else{
    background(mousex, mousey, mousex - mousey);
  }
  
  if(mousex < 250 && mousey > 200){
    background(mousex, mousey, mousex + mousey);
  }
  
  else{
    background(mousex, mousey, mousex - mousey);
  }
  
  fill(random(0, 255), random(0, 255), random(0, 255));
  ellipse(mousex, mousey, random(50, 200) - mousex, random(50, 200) - mousey);
}
