 void game() {
  background(255);
  
  fill(0);
  textSize(30);
  text("score: " + score, width/2, 50);
  text("lives: " + lives, width/2, 90);
  
  //pause button
  line(570, 20, 570, 35);
  line(580, 20, 580, 35);
  
  //display target
  fill(255);
  circle(x, y, d);

  //moving
  x = x + vx;
  y = y + vy;

  //bouncing
  if (x < d/2 || x > width-d/2) {
    vx *= -1;
  }
  if (y < d/2 || y > height-d/2) {
    vy *= -1;
  }
}

void gameClicks() {
  if (dist(mouseX, mouseY, x, y) < 50) {
    score += 1;
    coin.rewind();
    coin.play();
  } else if (dist(mouseX, mouseY, 575, 27) < 20) {
    mode = pause;
  } else {
    lives -= 1;
    bump.rewind();
    bump.play();
    if (lives == 0) mode = gameover;
  }
}
