//Melanie Liu
//2-1
//May 15, 2026
//Unit 5 Pong check point

import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//mode framework
int mode;
final int intro    = 1;
final int game     = 2;
final int pause    = 3;
final int gameover = 4;
boolean pauseyn = false;
boolean oneplayer = true;

//entity variables
float leftx, lefty, leftd, rightx, righty, rightd;
float ballx, bally, balld; //ball
float vx, vy;

//scoring
int leftscore, rightscore, timer, pausetime;

//keyboard variables
boolean wkey, skey, upkey, downkey;

//sound variable
Minim minim;
AudioPlayer theme, coin, bump, gameoverWin, gameoverLose;

void setup() {
  size(800, 600);
  textAlign(CENTER, CENTER);

  pausetime = 50;
  leftx = 0;
  lefty = height/2;
  leftd = 200;

  rightx = width;
  righty = height/2;
  rightd = 200;

  //initialize ball
  ballx = width/2;
  bally = height/2;
  balld = 100;

  mode = intro;
  vx = -5;
  vy = 0;
  timer = pausetime;
  ballx += vx;
  bally += vy;

  wkey = skey = upkey = downkey = false;

  minim = new Minim(this);
  theme = minim.loadFile("MUSIC.mp3");
  coin = minim.loadFile("coin.mp3");
  gameoverWin = minim.loadFile("gameover.mp3");
  gameoverLose = minim.loadFile("gameover 2.mp3");
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
