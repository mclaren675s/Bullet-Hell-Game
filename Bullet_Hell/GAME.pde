void game() {
  fill(spacebg, 150);
  rect(width/2, height/2, width, height);
  addObjects();
  gameEngine();
  debug();
  HUD();
}

void addObjects() {
  objects.add(0, new Star());

  if (frameCount % 30 == 0) objects.add(new Enemy1());
}

void gameEngine() {
  int i = 0;
  while (i < objects.size()) {
    GameObject obj = objects.get(i);
    obj.act();
    obj.show();
    if (obj.lives <= 0) {
      objects.remove(i);
    } else {
      i++;
    }
  }
}

void debug() {
  fill(white);
  //textFont(null);
  textSize(20);
  text(frameRate, 50, 10);
  text(objects.size(), 50, 30);
}

void HUD() {
  textSize(80);
  textFont(arcade);
  text(player1.lives, 150, 700);
}

void gameClicks() {
}
