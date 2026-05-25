void intro() {
  theme.play();
  background(255);
  textSize(280);
  fill(#C3C9C3);
  text("PONG", width/2, height/3);

  leftscore = 0;
  rightscore = 0;
}

void introclick() {
  mode = game;
}
