//2-1
//May 11, 2026
//Unit 5 Clicker Game check point 

int mode;
final int intro = 0; 
final int game = 1;
final int pause = 2;
final int gameover = 3;

//target variable
float x, y, d;
float vx, vy;

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
