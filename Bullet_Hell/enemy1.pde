class Enemy1 extends GameObject {
  int cooldown, threshold;

  Enemy1() {
    super(random(width), -40, 0, 5, 40, enemy1, 1);
    threshold = 60;
    cooldown = threshold;
  }

  void act() {
    super.act();
     //shooting
    cooldown++; // ++ means everyframe
    if (cooldown >= threshold) {
      objects.add(new EnemyBullet(x, y, 0, 10)); //shoot
      cooldown = 0;
    }




    //collisons
    int i = 0;
    while (i < objects.size()) {
      GameObject obj = objects.get(i);
      if (obj instanceof Bullet) {
        if (collidingWith(obj)) {
          lives--; //minus 1 life
          obj.lives = 0;
        }
      }
      i++;
    }

    //remove if off screen
    if (offScreen()) lives = 0;
  }
}
