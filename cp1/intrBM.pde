void mouse() {
  background(0, 255, 0);
}
void mouseClicks() {

  if (mouseX>100&&mouseX<300&&mouseY>100&&mouseY<200) {
    bkg=brown;
  }
  if (dist(400, 150, mouseX, mouseY)<100) {
    bkg=green;
    ;
  }
}
boolean touchingRect(int x, int y, int w, int h, color f) {
  //if (TouchingRect(100, 100, 200, 100)) {
  if (mouseX>x&&mouseX<x+w&&mouseY>y&&mouseY<y+h) {
    return true;
  } else {
    return false;
  }
}
//}


boolean touchingCircle(int x, int y, int r) {
  if (dist(x, y, mouseX, mouseY)<r) {
    return true;
  } else {
    return false;
  }
}
