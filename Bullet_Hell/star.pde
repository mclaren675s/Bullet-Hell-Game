class Star extends GameObject {

  //constructor
  Star() {
    super(random(width), 0, 0, 0, random(1,5), #ffffff, 1);
    vy = size;
  }

  void act() {
    super.act();
    if (y > height) lives = 0;
  }
}
