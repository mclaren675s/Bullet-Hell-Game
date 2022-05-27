class Star {
  float x, y, vx, vy, size;
  int lives;
  
  
  Star() {
    x = random(0, width);
    y = 0;
    vx = 0;
    vy = 3;
    size = random (1,5);
    lives = 1;
  }
  
  void act() {
    x += vx;
    y += vy;
    if (y > height) {
      lives = 0;
    }
  

}
  
  void show() {
    rect(x,y,size,size);
    
    
    
  }
  
 
  
  
  
}
