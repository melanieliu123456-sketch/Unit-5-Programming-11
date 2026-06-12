void intro() {
  image(gif[f], 0, 0, width, height);
  f++;
  if (f == numberOfFrames) f = 0; 
  write("Breakout", width/2, height/2, 0, 100);
  score = 0;
  lives = 3;
}

void introclick() {
  mode = game;
}
