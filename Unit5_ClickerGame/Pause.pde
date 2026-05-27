void pause() {
  background(#D8EAF2);

  targetPreview(x, y, d, targetLook);
  
  tactilerect(20, 20, 55, 55);
  fill(0);
  textSize(70);
  text("PAUSE", 300, 260);

  textSize(30);
  text("Score: " + score, 170, 550);
  text("Lives: " + lives, 430, 550);

  fill(255);
  rect(20, 20, 55, 55);
  fill(0);
  textSize(40);
  text(">", 47, 48);
}

void pauseClicks() {
  if (mouseX > 20 && mouseX < 75 && mouseY > 20 && mouseY < 75) {
    button.rewind();
    button.play();
    mode = game;
  }
}
