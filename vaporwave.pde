void setup(){
  size(600, 600);
  
  background(#FF00C4);
  
  for(int y = 0; y <= 6000; y += 10){
    stroke(#00FFEC);
    line(0, y, y, height);
  }
  
  for(int y = 6000; y >= 0; y -= 10){
    stroke(#6D00FF);
    line(width, y, y, 0);
  }
}
