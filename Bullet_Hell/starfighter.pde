class Starfighter extends GameObject {

  //constructor
  Starfighter() {
    super(width/2, height/2, 0, 0, 40, #3F12C9, 3);
  }

  //behaviour functions
  void act() {
    super.act();
    if (wkey) vy = -5;
    if (skey) vy = +5;
    if (akey) vx = -5;
    if (dkey) vx = +5;

    if (!wkey && !skey) vy = vy * 0.9;
    if (!akey && !dkey) vx = vx * 0.9;

    //bullet fire
    if (spacekey) objects.add(new Bullet());
  }
}
