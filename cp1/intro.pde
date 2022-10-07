void intro() {
  background(0, 255, 0);
  image(gif[f], 0, 0, width, height);
  if (frameCount%2==0) f=f+1;
  if (f==59)f=0;
  //if (i<10) {
  //  i=i;
  // }
   rect(200, 200, 200, 100);
}
void intorClicks() {
  if (touchingRect(250, 250, 200, 100, bkg)) {
    fill(white);
  } else {
    fill (brown);
  }
  
  rect(100, 100, 200, 100);
  fill(green);
  
}
