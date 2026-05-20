void game() {
  background(0);

  //paddles
  circle(leftx, lefty, leftd);
  circle(rightx, righty, rightd);
  while (lefty >= 0 && lefty <=height) {
    if (wkey == true) lefty -= 5;
    if (skey == true) lefty += 5;
  }

  while (righty >= 0 && righty <=height) {
    if (upkey == true) righty -= 5;
    if (downkey == true) righty += 5;
  }
  //ball
  circle(ballx, bally, balld);
}

void gameclick() {
}
