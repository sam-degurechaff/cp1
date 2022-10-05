int randomNum=(int) random(0, 10);
int randomword=(int)random(0, 3);
int randomcolor=(int)random(0, 3);

color red=#ff0000;
color green= #00ff00;
color blue=#0000ff;

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
}
