void gameover() {
  background(255);
  fill(255, 50, 50);
  textSize(75);
  text("GAMEOVER", 300, 300);
  theme.pause();
  gameoversound.play();
}

void gameoverClicks() {
  mode = intro;
  gameoversound.pause();
  gameoversound.rewind();
  theme.rewind();
}
