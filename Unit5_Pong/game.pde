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
  timer -= 1;
  
  if (leftscore == 3 || rightscore == 3) {
    mode = gameover;
  }

  //paddles
  fill(#83CBCE);
  circle(leftx, lefty, leftd);
  fill(#E8A98A);
  circle(rightx, righty, rightd);


  //move paddles
  if (wkey == true) lefty -= 5;
  if (skey == true) lefty += 5;
  if (lefty < 0) lefty = 0;
  if (lefty > height) lefty = height;
  if (upkey == true) righty -= 5;
  if (downkey == true) righty += 5;
  if (righty < 0) righty = 0;
  if (righty > height) righty = height;

  //move ball
  if (timer < 0) {
    ballx = ballx + vx;
    bally = bally + vy;
  }
  //scoring
  if (ballx < 0) {//if right score
    rightscore++;
    ballx = width/2;
    bally = height/2;
    timer = pausetime;
    vx = random(-5, 5);
    vy = random(-5, 5);
  }
  if (ballx > width) {//if left score
    leftscore++;
    ballx = width/2;
    bally = height/2;
    timer = pausetime;
    vx = random(-5, 5);
    vy = random(-5, 5);
  }

  //bouncing
  if (bally <= balld/2 || bally >= height - balld/2) {
    vy = vy * -1;
  }
  if (dist(ballx, bally, rightx, righty) <= balld/2 + rightd/2) {
    vx = (ballx - rightx)/10;
    vy = (bally - righty)/10;
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
