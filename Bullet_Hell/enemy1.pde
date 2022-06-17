class Enemy1 extends GameObject {
  
  Enemy1() {
    super(random(width), -40, 0, 5, 40, enemy1, 1);
    }
  
   void act() {
     super.act();
     
     //shoot
     objects.add(new EnemyBullet(x, y, 0, 10));
     
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
