class Star extends GameObject {


  Star() {
    x = random(0, width);
    y = 0;
    vx = 0;
    vy = 3;
    size = random (1, 5);
    lives = 1;
    c = #ffea00;
  }

  void act() {
    super.act();
    if (y > height) {
      lives = 0;
    }
  }

  void show() {
    fill(c);
    rect(x, y, size, size);
  }
}
