void gameover() {
  image(gif[f], 0, 0, width, height);
  f++;
  if (f == numberOfFrames) f = 0;
  if (lives == 0) {
    write("GAME OVER", width/2, height/2, 0, 100);
  }
  if (lives > 0) {
    write("YOU WIN!", width/2, height/2, 0, 100);
  }
}

void gameoverclick() {
  mode = intro;
  theme.play();
}
