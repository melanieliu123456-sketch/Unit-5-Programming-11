void intro() {
  background(255);
  fill(0);
  textSize(75);
  text("Clicker Game", 300, 250);
  fill(255);
  rect(175, 350, 250, 100);
  fill(0);
  textSize(50);
  text("Start", 300, 400);
}

void introClicks() {
  if (mode == intro) {
    if (mouseX > 175 && mouseX < 425 && mouseY > 350 && mouseY < 450) {
      mode = game;
    }
  }
}
