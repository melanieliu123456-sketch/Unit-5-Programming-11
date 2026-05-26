void intro() {
  background(255);
  write("PONG", width/2, height/2, #C3C9C3, 280);

  leftscore = 0;
  rightscore = 0;
}

void introclick() {
  mode = game;
}
