void intro() {
  background(255);
  write("PONG", width/2, height/3, #C3C9C3, 280);
  textSize(30);
  text("GET 3 POINTS TO WIN", width/2, height/2+50);
  //reset everything
  leftscore = 0;
  rightscore = 0;

  leftx = 0;
  lefty = height/2;
  leftd = 200;

  rightx = width;
  righty = height/2;
  rightd = 200;
  
  //oneplayer button
  stroke(0);
  tactilerect(80, 400, 250, 100);
  fill(255);
  rect(80, 400, 250, 100);
  fill(#83CBCE);
  textSize(50);
  text("1 Player", 200, 450);
  
  //twoplayer button
  tactilerect(480, 400, 250, 100);
  fill(255);
  rect(480, 400, 250, 100);
  fill(#83CBCE);
  textSize(50);
  text("2 Player", 600, 450);
}

void introclick() {
  if(mouseX > 80 && mouseX < 330 && mouseY > 400 && mouseY < 500) {
    oneplayer = true;
    mode = game;
  } else if (mouseX > 480 && mouseX < 730 && mouseY > 400 && mouseY < 500) {
    oneplayer = false;
    mode = game;
  }
}
