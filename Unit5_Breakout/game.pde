void game() {
  background(255);
  circle(ballx, bally, balld);
  circle(userx, height, userd);

  ballx += vx;
  bally += vy;

  //bouncing
  if (ballx <= balld/2) {
    ballx = balld/2;
    vx *= -1;
    bump.rewind();
    bump.play();
  }else if(ballx >= width - balld/2) {
    ballx = width - balld/2;
    vx *= -1;
    bump.rewind();
    bump.play();
  }else if(bally <= balld/2) {
    bally = balld/2;
    vy *= -1;
    bump.rewind();
    bump.play();
  }else if (bally >= height - balld/2) {
    bally = height - balld/2;
    vy *= -1;  
    bump.rewind();
    bump.play();
  }


  if (dist(ballx, bally, userx, height) <= balld/2 + userd/2) {
    bump.rewind();
    bump.play();
    vx = (ballx - userx)/5;
    vy = (bally - height)/5;
  }

  if (rkey == true) userx += 8;
  if (lkey == true) userx -= 8;
}

void gameclick() {
  mode = pause;
}
