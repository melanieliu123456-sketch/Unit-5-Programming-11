void options() {
  background(#D8EAF2);
  fill(0);
  textSize(60);
  text("OPTIONS", 300, 80);

  textSize(22);
  text("Choose target look", 300, 130);
  
  tactilerect(80, 160, 120, 100);
  fill(255);
  rect(80, 160, 120, 100);
  targetPreview(140, 210, 60, 0);
  
  tactilerect(240, 160, 120, 100);
  fill(255);
  rect(240, 160, 120, 100);
  targetPreview(300, 210, 60, 1);
  
  tactilerect(400, 160, 120, 100);
  fill(255);
  rect(400, 160, 120, 100);
  targetPreview(460, 210, 60, 2);

  stroke(0);
  strokeWeight(4);
  line(150, 340, 450, 340);
  fill(255);
  circle(sliderX, 340, 30);

  fill(0);
  textSize(20);
  text("Target Size", 300, 385);

  targetPreview(300, 470, d, targetLook);
  tactilerect(440, 520, 100, 50);
  fill(255);
  rect(440, 520, 100, 50);
  fill(0);
  textSize(30);
  text("OK", 490, 545);
}

void OptionsClicks() {
  if (mouseX > 80 && mouseX < 200 && mouseY > 160 && mouseY < 260) {
    targetLook = 0;
    button.rewind();
    button.play();
  } else if (mouseX > 240 && mouseX < 360 && mouseY > 160 && mouseY < 260) {
    targetLook = 1;
    button.rewind();
    button.play();
  } else if (mouseX > 400 && mouseX < 520 && mouseY > 160 && mouseY < 260) {
    targetLook = 2;
    button.rewind();
    button.play();
  } else if (mouseX > 440 && mouseX < 540 && mouseY > 520 && mouseY < 570) {
    mode = intro;
    button.rewind();
    button.play();
  }
}

void mouseDragged() {
  if (mode == options) {
    if (mouseY > 320 && mouseY < 360 && mouseX > 150 && mouseX < 450) {
      sliderX = mouseX;
      d = map(sliderX, 150, 450, 50, 150);
    }
  }
}
