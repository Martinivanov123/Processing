void setup(){
  size(600, 600);
}

float secArrowL = 200;

void draw(){
  background(#0A70FA);
  noFill();
  strokeWeight(3);
  stroke(#0AFADC);
  ellipse(width/2, height/2, width - 10, height - 10);
  
  float alphaSec = radians(second() * 6 ) - PI/2;
  float xSec = secArrowL * cos(alphaSec) + width/2;
  float ySec = secArrowL * sin(alphaSec) + height/2;
  
  line(width/2, height/2, xSec, ySec);
  
  float alphaMin = radians(minute() * 6) - PI/2;
  float xMin = 185 * cos(alphaMin) + width/2;
  float yMin = 185 * sin(alphaMin) + height/2;
  
  strokeWeight(5);
  line(width/2, height/2, xMin, yMin);
  
  float alphaHour = radians(hour() * 30) - PI/2;
  float xHour = 140 * cos(alphaHour) + width/2;
  float yHour = 140 * sin(alphaHour) + height/2;
  
  strokeWeight(7);
  line(width/2, height/2, xHour, yHour);
  
}
