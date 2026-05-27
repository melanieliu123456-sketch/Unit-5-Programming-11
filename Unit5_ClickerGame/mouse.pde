void mouseReleased() {
  if (mode == intro) {
    IntroClicks();
  } else if (mode == game) {
    gameClicks();
  } else if (mode == pause) {
    pauseClicks();
  } else if (mode == gameover) {
    gameoverClicks();
  } else if (mode == options) {
    OptionsClicks();
  }
}

void tactile (int x, int y, int r) {
  if (dist(x, y, mouseX, mouseY) < r) {
    strokeWeight(2);
    stroke(255);
  } else {
    strokeWeight(2);
    stroke(0);
  }
}

void tactilerect (int x, int y, int w, int h) {//detect if mouse is on button
  if (mouseX > x && mouseX < x + w &&
    mouseY > y && mouseY < y + h) {
    strokeWeight(2);
    stroke(255);
  } else {
    strokeWeight(2);
    stroke(0);
  }
}
