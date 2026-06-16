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
  for (int i = 0; i < n; i++) {
    alive[i] = true;
  }
  userx = width/2;
  userd = 100;
  ballx = width/2;
  bally = height/2;
  balld = 20;

  vx = 0;
  vy = 10;
}

void gameoverclick() {
  mode = intro;
  theme.play();
}
