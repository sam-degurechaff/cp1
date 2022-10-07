int randomNum=(int) random(0, 10);
int randomword=(int)random(0, 3);
int randomcolor=(int)random(0, 3);

color black=#000000;
color white=#ffffff;
color brown=#bc6c25;
color lbrown=#dd1a5e;
color cream=#fefae0;
color dgreen=#283618;
color green =#606c38;
color bkg =cream;
color red=#ff0000;

color blue=#0000ff;
PImage[] gif;
int numberofframes;
int f;
int i;

String[] words={"red", "green", "blue"};
color []colors={red, green, blue};

int mode;
final int INTRO=0;
final int GAME=1;
final int PAUSE=2;
final int GAMEOVER=3;

void setup() {
  size(500, 500);
  textSize(100);
  textAlign(CENTER, CENTER);
  mode=INTRO;
  
  numberofframes=59;
  gif=new PImage[numberofframes];

  int i=0;
  while (i<numberofframes) {
    gif[i]=loadImage("frame_"+i+"_delay-0.03s.gif");
    i=i+1;
  }
  mode=INTRO;
}

void draw() {
  fill(colors[randomcolor]);
  text(words[randomword], width/2, height/2);
  if (mode==INTRO) {
    intro();
  } else if (mode==GAME) {
    game();
  } else if (mode==PAUSE) {
    pause();
  } else  if (mode==GAMEOVER) {
    gameover();
  }
  
  //if (touchingRect(250, 250, 200, 100,bkg)) {
  //  fill(white);
  //} else {
  //  fill (brown);
  //}
  //rect(100, 100, 200, 100);
  //fill(green);
  //if ( touchingCircle(400, 150, 100)) {
  //  fill(white);
  //} else {
  //  fill(green);
  //}
  //circle(400, 150, 100);
}
