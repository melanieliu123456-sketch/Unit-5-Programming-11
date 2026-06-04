void keyPressed() {
  if (keyCode == LEFT|| key == 'A' || key == 'a') lkey = true;
  if (keyCode == RIGHT || key == 'D' || key =='d') rkey = true;
}

void keyReleased() {
  if (keyCode == LEFT|| key == 'A' || key == 'a') lkey = false;
  if (keyCode == RIGHT || key == 'D' || key == 'd') rkey = false;
}
