void game() {
  if (pauseyn == false) {
    background(#D8EAF2);
    fill(255);
    circle(ballx, bally, balld);
    circle(userx, height, userd);
    ballx += vx;
    bally += vy;

    write("Score: " + score, 140, 30, 255, 30);
    write("Lives " + lives, width - 140, 30, 255, 30);

    if (lives == 0) {
      mode = gameover;
      theme.pause();
      gameoverLose.rewind();
      gameoverLose.play();
    }

    if (score == n) {
      mode = gameover;
      theme.pause();
      gameoverWin.rewind();
      gameoverWin.play();
    }
    //bouncing
    if (ballx <= balld/2) {
      ballx = balld/2;
      vx *= -1;
      bump.rewind();
      bump.play();
    } else if (ballx >= width - balld/2) {
      ballx = width - balld/2;
      vx *= -1;
      bump.rewind();
      bump.play();
    } else if (bally <= balld/2) {
      bally = balld/2;
      vy *= -1;
      bump.rewind();
      bump.play();
    } else if (bally >= height - balld+100) {
      lives -= 1;
      ballx = width/2;
      bally = height/2;
      vx = 0;
      vy = 4;
    }

    if (dist(ballx, bally, userx, height) <= balld/2 + userd/2) {
      bump.rewind();
      bump.play();
      vx = (ballx - userx)/5;
      vy = (bally - height)/5;
    }
    if (userx < 0 ) userx = 0;
    if (userx > width) userx = width;
    if (rkey == true) userx += 8;
    if (lkey == true) userx -= 8;

    //set up array of bricks
    int i = 0;
    while (i < n) {
      if (alive[i] == true) {
        manageBrick(i);
      }
      i++;
    }
  }
}

void gameclick() {
  mode = pause;
}

void manageBrick(int i) {
  if (y[i] <= 187.5) {
    fill(#EFA7A7);
  } else if (y[i] <= 362.5) {
    fill(#FFD966);
  } else {
    fill(#95C2D8);
  }
  circle(x[i], y[i], brickd);
  if (dist(ballx, bally, x[i], y[i]) <= balld/2 + brickd/2) {
    coin.rewind();
    coin.play();
    score++;
    vx = (ballx - x[i])/5;
    vy = (bally - y[i])/5;
    alive[i] = false;
  }
}
