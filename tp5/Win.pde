class Win {

  PImage win; 

  Win() {

    win = loadImage ("win.png");
  }

  void dibujar() {
    image(win, 0, 0);
  }
}
