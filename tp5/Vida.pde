class Vida {
  
  public int cuentaVidas; 
  float x, y; 
  PImage vida, vidaF; 

  Vida() {
    
    x = 330;
    y = 40;
    cuentaVidas = 3; 

    vida = loadImage ("1vida.png");
    vidaF = loadImage ("vidaF.png");
  }

  void dibujar() {
    for (int i = 0; i < 3; i++){
      if(i < cuentaVidas)
        image(vida, x+i*40, y); 
      
      else 
        image(vidaF, x+i*40, y); 
    }
  }
}
