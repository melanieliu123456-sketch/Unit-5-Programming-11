void gameover() {
  textSize(100);
  if (leftscore > rightscore) {
      fill(#83CBCE);
    text("Left Wins!", width/2, 300);
  } else if(leftscore == rightscore) {
    text("Tie game!", width/2, 300);
  } else {
      fill(#E8A98A);
    text("Right Wins!", width/2, 300);
  }
}

void gameoverclick() {
  mode = intro;
}
