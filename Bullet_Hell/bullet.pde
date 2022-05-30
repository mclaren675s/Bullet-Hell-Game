class Bullet extends GameObject {
  
  Bullet() {
    x = player1.x;
    y = player1.y;
    vx = 0;
    vy = -10;
    size = 5;
    lives = 1;
    c = #FFF000;
  }
  
  
  
}
