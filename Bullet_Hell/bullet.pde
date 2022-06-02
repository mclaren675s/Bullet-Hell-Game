class Bullet extends GameObject {
  
  Bullet() {
    super(player1.x+18, player1.y, 0, -10, 5, #CE3E3E, 1);
  }
  
  void act() {
    super.act();
    if (x < 0 || x > width || y < 0 || y > height) lives = 0;  
  }  
}
