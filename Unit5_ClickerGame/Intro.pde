void intro() {
  background(#D8EAF2);
  fill(0);
  textSize(65);
  text("Clicker Game", 300, 190);

  fill(255);
  rect(175, 290, 250, 80);
  fill(0);
  textSize(45);
  text("Start", 300, 330);

  fill(255);
  rect(175, 400, 250, 80);
  fill(0);
  textSize(45);
  text("Options", 300, 440);
}

void IntroClicks() {
  if (mouseX > 175 && mouseX < 425 && mouseY > 290 && mouseY < 370) {
    resetGame();
    mode = game;
    buttonSound();
  }

  if (mouseX > 175 && mouseX < 425 && mouseY > 400 && mouseY < 480) {
    mode = options;
    buttonSound();
  }
}
