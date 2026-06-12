void pause() {
  pauseyn = true;
  fill(0);
  write("PAUSE", width/2, height/2, 0, 180);
}

void pauseclick() {
  mode = game;
  pauseyn = false;
}

void write(String word, int x, int y, int Color, int size) {
  textSize(size);
  fill(255);
  text(word, x+3, y-3);
  text(word, x+3, y+3);
  text(word, x-3, y-3);
  text(word, x-3, y+3);
  text(word, x+3, y);
  text(word, x-3, y);
  text(word, x, y+3);
  text(word, x, y-3);
  fill(Color);
  text(word, x, y);
}
