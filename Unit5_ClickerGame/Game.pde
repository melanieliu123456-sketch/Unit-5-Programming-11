void game() {
  background(#D8EAF2);

  fill(0);
  textSize(30);
  text("Score: " + score, 170, 550);
  text("Lives: " + lives, 430, 550);

  //pause button
  fill(255);
  rect(20, 20, 55, 55);
  stroke(0);
  strokeWeight(5);
  line(40, 32, 40, 62);
  line(55, 32, 55, 62);

  //display target
  targetPreview(x, y, d, targetLook);

  //moving
  x = x + vx;
  y = y + vy;

  //bouncing by outside edge
  if (x < d/2) {
    x = d/2;
    vx *= -1;
  }
  if (x > width - d/2) {
    x = width - d/2;
    vx *= -1;
  }
  if (y < d/2) {
    y = d/2;
    vy *= -1;
  }
  if (y > height - d/2) {
    y = height - d/2;
    vy *= -1;
  }
}

void gameClicks() {
  if (mouseX > 20 && mouseX < 75 && mouseY > 20 && mouseY < 75) {
    mode = pause;
  } else if (dist(mouseX, mouseY, x, y) < d/2) {
    score += 1;
    vx *= 1.1;
    vy *= 1.1;
    coin.rewind();
    coin.play();
  } else {
    lives -= 1;
    bump.rewind();
    bump.play();
    if (lives <= 0) {
      mode = gameover;
      gameoversound.rewind();
      gameoversound.play();
    }
  }
}
