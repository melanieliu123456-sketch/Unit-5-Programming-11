void targetPreview(float x, float y, float d, int look) {
  pushMatrix();
  translate(x, y);

  if (look == 0) {
    stroke(0);
    strokeWeight(4);
    fill(255);
    circle(0, 0, d);
    fill(#EFA7A7);
    circle(0, 0, d * 0.55);
    fill(#FFD966);
    circle(0, 0, d * 0.25);
  } else if (look == 1) {
    stroke(0);
    strokeWeight(4);
    fill(#95C2D8);
    circle(0, 0, d);
    fill(255);
    circle(0, 0, d * 0.25);
  } else {
    stroke(0);
    strokeWeight(4);
    fill(#FFD966);
    circle(0, 0, d);
    fill(255);
    circle(-d*0.15, -d*0.1, d*0.25);
    circle(d*0.15, -d*0.1, d*0.25);
    fill(0);
    circle(-d*0.15, -d*0.1, d*0.08);
    circle(d*0.15, -d*0.1, d*0.08);
    noFill();
    arc(0, d*0.05, d*0.35, d*0.25, 0, PI);
  }

  popMatrix();
}
