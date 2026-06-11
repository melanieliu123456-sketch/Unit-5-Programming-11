void intro() {
  background(#D8EAF2);
  write("Breakout", width/2, height/2, 255, 100);
  score = 0;
  lives = 3;
}

void introclick() {
  mode = game;
}
