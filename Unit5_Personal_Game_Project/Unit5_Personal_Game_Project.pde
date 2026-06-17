//Melanie Liu
//2-1
//Jun 15, 2026
//Unit 5 personal project
//connect 4

//space
float[] x, y;
float ballx, bally;
int n = 6*7;

void setup() {
  size(800, 800);
  background(255);
  
  x = new float[n];
  y = new float[n];
  ballx = width*0.2;
  bally = height*0.2;
}

void draw() {
  strokeWeight(5);
  fill(100);
  rect(width*0.15, height*0.15, width*0.7, height*0.6, 10, 10, 0, 0);
  for (int i = 0; i < n; i++) {
    fill(255);
    x[i] = ballx;
    y[i] = bally;
    circle(x[i], y[i], width/12);
    ballx += width*0.1;
    if (ballx > width*0.85) {
      ballx = width*0.2;
      bally = bally + height*0.1;
    }
  }

}
