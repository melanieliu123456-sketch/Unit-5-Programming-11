//Melanie Liu
//2-1
//May 15, 2026
//Unit 5 Pong check point

//mode framework
int mode;
final int intro    = 1;
final int game     = 2;
final int pause    = 3;
final int gameover = 4;

//entity variables
float leftx, lefty, leftd, rightx, righty, rightd;
float ballx, bally, balld; //ball
float vx, vy;

//scoring
int leftscore, rightscore, timer;

//keyboard variables
boolean wkey, skey, upkey, downkey;

void setup() {
  size(800, 600);

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

  mode = game;

  vx = 0;
  vy = 0;
  ballx += vx;
  bally += vy;

  wkey = skey = upkey = downkey = false;
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
