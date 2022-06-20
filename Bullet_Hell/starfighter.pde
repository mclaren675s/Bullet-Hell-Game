class Starfighter extends GameObject {

  int cooldown, threshold;

  Starfighter() {
    super(width/2, height/2, 0, 0, 40, mainship, 3);
    threshold = 60;
    cooldown = threshold;
  }

  //behaviour functions
  void act() {
    super.act();

    //managing guns
    cooldown++; // ++ means everyframe
    if (spacekey && cooldown >= threshold) {
      objects.add(new Bullet());
      cooldown = 0;
    }

    //movement
    if (wkey) vy = -5;
    if (skey) vy = +5;
    if (akey) vx = -5;
    if (dkey) vx = +5;
    if (!wkey && !skey) vy = vy * 0.9;
    if (!akey && !dkey) vx = vx * 0.9;

    //collisons
    int i = 0;
    while (i < objects.size()) {
      GameObject obj = objects.get(i);
      if (obj instanceof EnemyBullet) {
        if (collidingWith(obj)) {
          lives--; //minus 1 life
          obj.lives = 0;
        }
      }
      i++;
    }
  }
}
