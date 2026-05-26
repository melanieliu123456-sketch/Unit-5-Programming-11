void gameover() {
  theme.pause();
  gameoversound.rewind();
  gameoversound.play();

  textSize(100);
  if (leftscore > rightscore) {
    write("Left Wins!", width/2, 300, #83CBCE, 150);
  } else if (leftscore == rightscore) {
    write("Tie game!", width/2, 300, #C3C9C3, 150);
  } else {
    write("Right Wins!", width/2, 300, #E8A98A, 150);
  }
}

void gameoverclick() {
  mode = intro;
  theme.rewind();
  theme.play();
}
