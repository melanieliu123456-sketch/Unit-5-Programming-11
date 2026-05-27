void gameover() {
  theme.pause();

  textSize(100);
  if (oneplayer == false) {
    if (leftscore > rightscore) {
      write("Left Wins!", width/2, 300, #83CBCE, 150);
    } else {
      write("Right Wins!", width/2, 300, #E8A98A, 150);
    }
  } else
    if (leftscore > rightscore) {
      write("You Win!", width/2, 300, #83CBCE, 150);
    } else {
      write("You Lost", width/2, 300, #E8A98A, 150);
    }
}

void gameoverclick() {
  mode = intro;
  gameoverWin.pause();
  gameoverWin.rewind();
  theme.rewind();
  theme.play();
}
