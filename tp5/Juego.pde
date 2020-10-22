class Juego {

  String estado; 
  Fondo fondo; 
  Personaje personaje;
  Roca roca; 
  Vida vida; 
  GameOver gameover;
  Win win;
  Barra barra;


  Juego() {

    //Posición inicial de la moto
    personaje = new Personaje(800, 527); 
    fondo = new Fondo();
    roca = new Roca();
    vida = new Vida();
    gameover = new GameOver();
    win = new Win();
    barra = new Barra(); 
    estado = "jugando";
  }

  void dibujar() {

    if ( estado.equals("jugando")) { 

      fondo.dibujar();
      roca.dibujar();
      personaje.dibujar();
      vida.dibujar();
      barra.dibujar(); 
      //Se fija si chocan 
      if (personaje.colision(roca)) {
        vida.cuentaVidas -= 1;

        if (vida.cuentaVidas == 0) 
          estado = "GameOver";
      }
      
      if (barra.verificaWin()){
        estado = "Win"; 
      }
    } else if (estado.equals("GameOver")) {
      gameover.dibujar();
    }

    if (estado.equals("Win")) {
      win.dibujar();
    }
  }

  void teclas() {

    personaje.moveUp();
    personaje.moveDown();
  }

  void released() {

    personaje.released();
  }
}
