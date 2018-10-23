float xr = 0;
float yr = 0;
float wr = 30;
float hr = 100;

float hrup = 100;
float hrdown = 100;

float xspeed = 7;

float birdx = 100;
float birdy = 300;
float birdw = 80;
float birdh = 80;
float birdSpeed = 5;
PImage bird;

float red = 255;
float green = 255;
float blue = 0;

float score = 0;

boolean gameOver = false;

void setup(){
  size(600, 600);
  bird = loadImage("bird.png");
  xr = width;
}

void draw(){
  background(red, green, blue);
  
  image(bird, birdx, birdy, birdw, birdh);
  
  fill(#ffffff);
  rect(xr, yr, wr, hr);
  rect(xr, height - hrdown, wr, hrdown);
  
  boolean collisionUp = (birdx + birdw) > xr && birdy < hr && (xr + wr) > birdx;
  boolean collisionDown = (birdx + birdw) > xr && birdy > height - hrdown && (xr + wr) > birdx;
  
  if(collisionUp || collisionDown){
    gameOver = true;
  }
  
  if(gameOver){
    background(0);
    
    textSize(64);
    fill(#ff0000);
    text("Game over", 150, height/2);
    
    textSize(16);
    fill(#B20000);
    text("Press 'r', if you want to try again!", 200, 350);
    
    if(keyPressed && key == 'r'){
      gameOver = false;
      birdx = 100;
      birdy = 300;
      xr = width;    
    }
  }
  
  if(keyPressed && key == ' '){
    birdy -= birdSpeed;
  }
  
  if(!keyPressed){
    birdy += birdSpeed;
  }
  
  if(xr < -wr){
    xr = width;
    hr = random(100, 260);
    
    red = random(0, 255);
    green = random(0, 255);
    blue = random(0, 255);
    
    hrup = random(100, 260);
    hrdown = random(220, 280);
  }
  
  else{
    xr -= xspeed;
  }
}
