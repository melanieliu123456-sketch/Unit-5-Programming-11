void gameover() {
  background(#F0D7DB);
  fill(0);
  textSize(75);
  text("GAME OVER", 300, 230);

  if (score > highscore) {
    highscore = score;
  }

  textSize(40);
  text("High Score: " + highscore, 300, 330);
  textSize(25);
  text("Click anywhere to restart", 300, 420);
}

void gameoverClicks() {
  resetGame();
  mode = intro;
  gameoversound.pause();
  gameoversound.rewind();
}
