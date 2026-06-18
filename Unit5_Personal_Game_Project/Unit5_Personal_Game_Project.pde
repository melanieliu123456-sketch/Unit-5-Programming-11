//Melanie Liu
//2-1
//Jun 15, 2026
//Unit 5 personal project
//connect 4

PFont font;

import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//color variable
color red = #F25F5F;
color orange = #EAB36B;
color yellow = #F2DE69;
color green = #8AE08D;
color blue = #86D6E5;
color purple = #C4A8ED;
color color1 = red;
color color2 = blue;
color strokecolor = 0;

//mode
int mode;
final int intro    =  1;
final int game     = 2;
final int gameover = 3;

//board
int[][] board = new int[7][6];
float[] x, y;
float ballx, bally;
int n = 6*7;
int[] board = new int[42];
float indicatorx = width/2;
float indicatory = height;

//player variable
boolean player1 = true;


void setup() {
  textAlign(CENTER, CENTER);
  size(800, 800);
  background(255);

  font = createFont("Matcha Cih.otf", 128);
  textFont(font);

  x = new float[n];
  y = new float[n];

  mode = intro;
}

void draw() {
  if (mode == intro) {
    intro();
  } else if (mode == game) {
    game();
  } else if (mode == gameover) {
    gameover();
  }
}
