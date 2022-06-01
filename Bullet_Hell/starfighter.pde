class Starfighter extends GameObject {

  //constructor
  Starfighter() {
    x = width/2;
    y = height/2;
    vx = vy = 0;
    lives = 3;
    c = #FFFFFF;
  }

  //behaviour functions
  void act() {
    super.act();
    if (wkey) vy = -5;
    if (skey) vy = +5;
    if (akey) vx = -5;
    if (dkey) vx = +5;
    
    if(!wkey && !skey) vy = vy * 0.86;
    if(!akey && !dkey) vx = vx * 0.86;
    
    if(spacekey) objects.add(new Bullet());
}

  void show() {
    fill(c);
    rect(x, y, 40, 40);
  }
}
