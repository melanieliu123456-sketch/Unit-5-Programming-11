//2-1
//May 11, 2026
//Unit 5 Clicker Game check point 

import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

int mode;
final int intro = 0; 
final int game = 1;
final int pause = 2;
final int gameover = 3;

//target variable
float x, y, d;
float vx, vy;
int score, lives;

//sound variable
Minim minim;
AudioPlayer theme, coin, bump, gameoversound;


void setup() {
  size(600, 600);
  textAlign(CENTER, CENTER);
  mode = intro;
  stroke(0);
  strokeWeight(5);
  //target initialization
  x = width/2;
  y = height/2; 
  d = 100;
  vx = random(-5, 5);
  vy = random(-5, 5);
  
  score = 0;
  lives = 3;
  
  //minim
  minim = new Minim(this);
  theme = minim.loadFile("MUSIC.mp3");
  coin = minim.loadFile("coin.mp3");
  gameoversound = minim.loadFile("gameover.mp3");
  bump = minim.loadFile("bump.mp3");
}

void draw() {
  if (mode == intro){
    intro();
  }else if (mode == game){
    game();
  }else if (mode == pause){
    pause();
  }else if (mode == gameover){
    gameover();
  }else {
    println("Error: Mode = " + mode);
  }
}
