void gameover() {
  background(#D8EAF2);
  if (lives == 0) {
    write("GAME OVER", width/2, height/2, 255, 100);
  }
  if (lives > 0) {
    write("YOU WIN!", width/2, height/2, 255, 100);
  }
}

void gameoverclick() {
  mode = intro; 
}
