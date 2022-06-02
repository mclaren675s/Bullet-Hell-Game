void game() {
  
  objects.add(0, new Star());
  background(0);

  //Arraylist Loop
  int i = 0;
  while (i < objects.size()) {
    GameObject obj = objects.get(i);
    obj.act();
    obj.show();
    if (obj.lives == 0) {
      objects.remove(i);
    } else {
      i++;
    }
  }


  fill(white);
  textSize(25);
  text(frameRate, 50, 10);
  text(objects.size(), 50, 30);
}


void gameClicks() {



}
