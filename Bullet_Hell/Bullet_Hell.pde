//Alex Chapman
// video part 8 11:06

//GLOBAL VARIABLES
int mode;
final int INTRO = 0;
final int GAME  = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;
final int UTILITIES = 4;

// COLOR PALLETTE
color white = #FFFFFF;
color black = #000000;
color spacebg = #1B2436;
color mainship = #5a189a;
color maingun = #e0aaff;
color enemy1 = #4895ef;
color bulletcolor = #fb5607;

ArrayList<GameObject> objects;

Starfighter player1;

boolean wkey, akey, skey, dkey, spacekey;

void setup() { //============================================================
  frameRate(60);
  size(800, 800);
  rectMode(CENTER);

  wkey = skey = akey = dkey = spacekey = false;

  mode = GAME;

  textAlign(CENTER, CENTER);

  objects = new ArrayList<GameObject>();
  player1 = new Starfighter();
  objects.add(player1);
} //===================================================================================
void draw() {
  if      (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else if (mode == UTILITIES) {
    utilities();
  } else {
    println("Error: Mode = " + mode);
  }
}//===================================================================================
