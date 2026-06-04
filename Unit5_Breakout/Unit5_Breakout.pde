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
final int intro    = 1;
final int game     = 2;
final int pause    = 3;
final int gameover = 4;

//target variable
int score, lives;

//ketboard variables
boolean lkey, rkey;

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
