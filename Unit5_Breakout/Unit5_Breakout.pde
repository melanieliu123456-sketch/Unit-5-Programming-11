//Melanie Liu
//2-1
//Jun 1, 2026
//Unit 5 Breakout check point

import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//mode
int mode;
final int intro    =  1;
final int game     = 2;
final int pause    = 3;
final int gameover = 4;

//target variable
int score, lives;

//keyboard variables
boolean lkey, rkey;

//brick variables
float[] x;
float[] y;
boolean[] alive;
int brickd, n;
float tempx, tempy;

//entity variables
float ballx, bally, balld;
float userx, userd;
float vx, vy;

//sound variable
Minim minim;
AudioPlayer theme, coin, bump, gameoverWin, gameoverLose;

PFont font;

void setup() {
  size(800, 800);
  textAlign(CENTER, CENTER);
  font = createFont("Matcha Cih.otf", 128);
  textFont(font);
  
  score = 0;
  lives = 3;
  brickd = 50;
  n = 40;
  x = new float[n];
  y = new float[n];
  alive = new boolean[n];
  tempx = 87.5;
  tempy = 87.5;
  int i = 0;
  while (i < n) {
    x[i] = tempx;
    y[i] = tempy;
    alive[i] = true;
    tempx += 87.5;
    if (tempx > width-50) {
      tempx = 87.5;
      tempy +=87.5;
    }
    i++;
  }

  //initialize ball
  userx = width/2;
  userd = 100;
  ballx = width/2;
  bally = height/2;
  balld = 20;

  mode = intro;
  vx = 0;
  vy = 10;

  lkey = rkey = false;

  //set up sound
  minim = new Minim(this);
  theme = minim.loadFile("MUSIC.mp3");
  coin = minim.loadFile("coin.mp3");
  gameoverWin = minim.loadFile("Win.mp3");
  gameoverLose = minim.loadFile("Lose.mp3");
  bump = minim.loadFile("bump.mp3");
  theme.loop();
}

void draw() {
  if (mode == intro) {
    intro();
  } else if (mode == game) {
    game();
  } else if (mode == pause) {
    pause();
  } else if (mode == gameover) {
    gameover();
  }
}
