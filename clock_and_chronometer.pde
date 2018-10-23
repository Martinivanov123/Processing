void setup(){
  size(600, 600);
}

boolean start = false;
int time = 60;
int passes = 1;

int minutes;
int seconds;
int milliseconds;

void draw(){
  background(#5300F0);
  textSize(40);
  
  milliseconds = 0;
  seconds = 0;
  minutes = 0;
  
  if(hour() < 10){
    text("0" + hour() + ":" + minute() + ":" + second(), 200, 100);
    if(minute() < 10){
      text("0" + hour() + ":" + "0" + minute() + ":" + second(), 200, 100);
      if(second() < 10){
        text("0" + hour() + ":" + "0" + minute() + ":" + "0" + second(), 200, 100);
      }
    }
    if(second() < 10){
      text(hour() + ":" + minute() + ":" + "0" + second(), 200, 100);
    }
  }
  else{
    if(minute() < 10){
      text(hour() + ":" + "0" + minute() + ":" + second(), 200, 100);
      if(second() < 10){
        text(hour() + ":" + "0" + minute() + ":" + "0" + second(), 200, 100);
      }
    }
    
    else{
      if(second() < 10){
        text(hour() + ":" + minute() + ":" + "0" + second(), 200, 100);
      }
      
      else{
        text(hour() + ":" + minute() + ":" + second(), 200, 100);
      }
    }
  }
  
  if(start){
    minutes = (millis()/1000)/time;
    seconds = millis()/1000;
    milliseconds = millis()%1000;
    text(minutes + ":" + seconds + ":" + milliseconds, 200, 300);
    if(seconds % (time * passes) == 0){
      milliseconds = 0;
      passes++;
    }
  }
  
}

void keyPressed(){
  if(key == 's'){
    start = true;
  }
}
