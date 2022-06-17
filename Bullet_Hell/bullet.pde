class Bullet extends GameObject {
  
  Bullet() {
    super(player1.x+18, player1.y, 0, -10, 5, maingun, 1);
  }
  
  void act() {
    super.act();
    if (offScreen()) lives = 0;  
  }  
}
