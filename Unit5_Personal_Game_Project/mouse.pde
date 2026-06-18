void mouseReleased() {
  if (mode == intro) {
    introClick();
  } else if (mode == game) {
    gameClick();
  } else if (mode == gameover) {
    gameoverClick();
  }
}

void mouseMoved() {
  if (mouseX > width * 0.15 && mouseX < width*0.85){
    indicatorx = mouseX;
  }
}
/*
void place() {
  if (player1 = true) {
    fill(color1);
  } else {
    fill(color2);
  }
}
*/

void tactile (int x, int y, int d) {
  if (dist(x, y, mouseX, mouseY) < d/2) {
    stroke(#FFFFFF);
  } else {
    stroke(strokecolor);
  }
}

void tactilerect (int x, int y, int w, int h) {//detect if mouse is on button
  if (mouseX > x && mouseX < x + w &&
    mouseY > y && mouseY < y + h) {
    stroke(#FFFFFF);
  } else {
    stroke(strokecolor);
  }
}
