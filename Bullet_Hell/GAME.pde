void game() {
  stars.add(new Star());

  background(0);

  int i = 0;
  while (i < stars.size()) {
    
    Star s = stars.get(i);
    s.act();
    s.show();
    if (s.lives == 0) {

      stars.remove(i);
    } else {
      i++;
  }
  }

  textSize(25);
  text(frameRate, 50, 10);
  text(stars.size(), 50, 30);
}







void gameClicks() {
  
}
