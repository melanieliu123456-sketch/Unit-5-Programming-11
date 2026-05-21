void game() {
  background(255);
  //center line
  strokeWeight(5);
  stroke(0);
  line(width/2, 0, width/2, height);

  //scoreboard
  textSize(50);
  fill(0);
  text(leftscore, width/4, 100);
  text(rightscore, 3*width/4, 100);

  //paddles
  fill(#83CBCE);
  circle(leftx, lefty, leftd);
  fill(#E8A98A);
  circle(rightx, righty, rightd);

  if (lefty >= 0 && lefty <=height) {
    if (wkey == true) lefty -= 5;
    if (skey == true) lefty += 5;
    if (lefty < 0) lefty = 1;
    if (lefty > height) lefty = height-1;
  }

  if (righty > 0 && righty <=height) {
    if (upkey == true) righty -= 5;
    if (downkey == true) righty += 5;
    if (righty < 0) righty = 1;
    if (righty > height) righty = height-1;
  }

  if (dist(leftx, lefty, ballx, bally) <= balld/2 + leftd/2) {
    vx = (ballx - leftx)/10;
    vy = (bally - lefty)/10;
  }

  //ball
  fill(#C3C9C3);
  circle(ballx, bally, balld);
}

void gameclick() {
}
