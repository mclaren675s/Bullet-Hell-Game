//Alex Chapman

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
color red = #FF0A12;
color orange = #FF7300;
color yellow = #f4e409;
color green = #90FE00;
color lightBlue = #F962A0;
color darkBlue = #0015FF ;
color purple = #8400FF;
color pink = #FF00A1;


ArrayList<GameObject> objects;

Starfighter player1;

boolean wkey, akey, skey, dkey, spacekey;

void setup() {
  frameRate(60);
  size(800,800);
 
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
