void gameover() {
  background(255);
  if (lives == 0) {
    textSize(100);
    text("GAME OVER", width, height-200);
  }
}

void gameoverclick() {
  mode = intro; 
}
