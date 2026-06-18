void intro() {
  background(255);
  strokeWeight(5);

  write("Connect", width/2, height/5, 255, 100);
  write("Four", width/2, height/5+120, 255, 100);

  write("Player 1 color", width/4, height/2+50, color1, 32);

  write("Player 2 color", width/4*3, height/2+50, color2, 32);

  tactile(100, height/2+120, 60);
  fill(red);
  circle(100, height/2+120, 60);

  tactile(200, height/2+120, 60);
  fill(orange);
  circle(200, height/2+120, 60);

  tactile(300, height/2+120, 60);
  fill(yellow);
  circle(300, height/2+120, 60);

  tactile(500, height/2+120, 60);
  fill(green);
  circle(500, height/2+120, 60);

  tactile(600, height/2+120, 60);
  fill(blue);
  circle(600, height/2+120, 60);

  tactile(700, height/2+120, 60);
  fill(purple);
  circle(700, height/2+120, 60);

  tactilerect(250, 650, 300, 60);
  fill(230);
  rect(250, 650, 300, 60, 15);
  write("Ready to Play", width/2, 680, 255, 32);
}

void introClick() {
  if (dist(mouseX, mouseY, 100, height/2+120) < 30) color1 = red;
  if (dist(mouseX, mouseY, 200, height/2+120) < 30) color1 = orange;
  if (dist(mouseX, mouseY, 300, height/2+120) < 30) color1 = yellow;

  if (dist(mouseX, mouseY, 500, height/2+120) < 30) color2 = green;
  if (dist(mouseX, mouseY, 600, height/2+120) < 30) color2 = blue;
  if (dist(mouseX, mouseY, 700, height/2+120) < 30) color2 = purple;

  if (mouseX > 250 && mouseX < 550 &&
      mouseY > 650 && mouseY < 710) {
    mode = game;
  }
}

void write(String word, int x, int y, int Color, int size) {
  textSize(size);
  fill(0);
  text(word, x+3, y-3);
  text(word, x+3, y+3);
  text(word, x-3, y-3);
  text(word, x-3, y+3);
  text(word, x+3, y);
  text(word, x-3, y);
  text(word, x, y+3);
  text(word, x, y-3);
  fill(Color);
  text(word, x, y);
}
