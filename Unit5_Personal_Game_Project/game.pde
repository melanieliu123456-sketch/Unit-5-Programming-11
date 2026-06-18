void game() {
  background(255);
  stroke(strokecolor);

  ballx = width*0.2;
  bally = height*0.35;

  fill(100);
  rect(width*0.15, height*0.3, width*0.7, height*0.6, 10, 10, 0, 0);
  
  if(player1 == true) fill(color1); else fill(color2);
  circle(indicatorx, indicatory, width/12);
  rect(width*0.15, height*0.9, width*0.7, height*0.05);
  
  for (int i = 0; i < n; i++) {
    fill(255);
    x[i] = ballx;
    y[i] = bally;
    circle(x[i], y[i], width/12);
    ballx += width*0.1;
    if (ballx > width*0.8) {
      ballx = width*0.2;
      bally = bally + height*0.1;
    }
  }
  /*
  checkWin(1);
  checkWin(2);
  */
}

void gameClick() {
  player1 = !player1;
  /*place();
  */
}
/*
void checkWin(int player) {
  for (int row = 0; row < 6; row++) {
    for (int col = 0; col < 7; col++) {

      int index = row * 7 + col;

      if (board[x][y] == player) {

        if (col <= 3 &&
          board[index+1] == player &&
          board[index+2] == player &&
          board[index+3] == player) return true;

        if (row <= 2 &&
          board[index+7] == player &&
          board[index+14] == player &&
          board[index+21] == player) return true;

        if (col <= 3 && row <= 2 &&
          board[index+8] == player &&
          board[index+16] == player &&
          board[index+24] == player) return true;

        if (col <= 3 && row >= 3 &&
          board[index-6] == player &&
          board[index-12] == player &&
          board[index-18] == player) return true;
      }
    }
  }

  return false;
}
*/
