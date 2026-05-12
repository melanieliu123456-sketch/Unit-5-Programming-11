void mouseReleased() {
  if (mode == intro) {
    IntroClicks();
  } else if (mode == game) {
    gameClicks();
  } else if (mode == pause) {
    pauseClicks();
  } else if (mode == gameover) {
    gameoverClicks();
  }
}
