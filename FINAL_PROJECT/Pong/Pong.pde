color black = 0;
color blue = #0000ff;
color cyan = #00ffff;

int ballX = 100;
int ballY = 100;
int diameter = 10;

int hilkaX = 0;
int hilkaY = 50;
int hilkaX1 = 790;
int hilkaY1 = 50;

int skorostX = 5;
int skorostY = 5;

int skorostHilkaY = 10;

int resultPlayer1 = 0;
int resultPlayer2 = 0;

boolean playing = true;
boolean continuePlaying = false;
boolean newGame = false;
void setup() {
  size(800, 600);
}

void draw() {
  background(black);
  if (playing) {
    ballX += skorostX;
    ballY += skorostY;

    if (ballY > height - diameter) {
      skorostY = -skorostY;
    }

    if (ballX > width - diameter && ballX < width) {
      if (ballY + diameter > hilkaY1) {
        if (ballY < hilkaY1 + 200) {
          skorostX = -skorostX;
        }
      }
    }

    if (ballY < 0) {
      skorostY = -skorostY;
    }

    if (ballX > 0 && ballX < 10) {
      if (ballY + 10 > hilkaY) {
        if (ballY < hilkaY + 200) {
          skorostX = -skorostX;
        }
      }
    }

    if (hilkaY < 0) {
      hilkaY = 0;
    }

    if (hilkaY1 < 0) {
      hilkaY1 = 0;
    }

    if (hilkaY > height - 200) {
      hilkaY = height - 200;
    }

    if (hilkaY1 > height - 200) {
      hilkaY1 = height - 200;
    }

    if (keyPressed) {
      if (key == 'w') {
        hilkaY -= skorostHilkaY;
      } else if (key == 's') {
        hilkaY += skorostHilkaY;
      }

      if (keyCode == UP) {
        hilkaY1 -= skorostHilkaY;
      } else if (keyCode == DOWN) {
        hilkaY1 += skorostHilkaY;
      }
    }

    if (ballX < -diameter) {
      resultPlayer2 ++;
      playing = false;
    }

    if (ballX > width + diameter) {
      resultPlayer1 ++;
      playing = false;
    }
  }
  
  if(continuePlaying && !playing){
    ballX = int(random(width/2 - 50, width/2 + 50));
    ballY = int(random(height/2 - 50, height/2 + 50));
    skorostX = int(random(1, 10));
    skorostX = int(random(1, 10));
    playing = true;
    continuePlaying = false;
  }
  
  if(newGame && !playing){
    ballX = int(random(width/2 - 50, width/2 + 50));
    ballY = int(random(height/2 - 50, height/2 + 50));
    playing = true;
    resultPlayer1 = 0;
    resultPlayer2 = 0;
    newGame = false;
  }
  
  fill(cyan);
  ellipse(ballX, ballY, 10, 10);

  fill(blue);
  rect(hilkaX, hilkaY, 10, 200);
  rect(hilkaX1, hilkaY1, 10, 200);
  
  textSize(20);
  text(resultPlayer1 + ":" + resultPlayer2, width/2, height/2);
}


void keyReleased() {
  if (key == 'r' && !playing) {
    continuePlaying = true;
  }
  
  if(key == 'n' && !playing){
    newGame = true;
  }
}
