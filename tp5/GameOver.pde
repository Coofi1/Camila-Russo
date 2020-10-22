class GameOver {

  PImage gameover; 

  GameOver() {

    gameover = loadImage ("gameover.png");
  }

  void dibujar() {
    image(gameover, 0, 0);
  }
}
