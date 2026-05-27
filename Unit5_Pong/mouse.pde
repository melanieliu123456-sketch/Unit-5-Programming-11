void mouseReleased() {
  if (mode == intro) {
    introclick();
  } else if (mode == game) {
    gameclick();
  } else if (mode == pause) {
    pauseclick();
  } else if (mode == gameover) {
    gameoverclick();
  }
}

void tactilerect (int x, int y, int w, int h) {//detect if mouse is on button
  if (mouseX > x && mouseX < x + w &&
    mouseY > y && mouseY < y + h) {
    strokeWeight(3);
    stroke(150);
  } else {
    strokeWeight(3);
    stroke(0);
  }
}
