class Fondo {

  //Importo la imagen del Fondo
  float x; 
  PImage calle;

  Fondo(){

    calle = loadImage ("fondo.png");
  }

  void dibujar() {
    
    //Dos veces el fondo para que se pueda repetir constantemente y de la ilusión de "movimiento" 
    image(calle, x, 0);
    
    //Velocidad del fondo
    image(calle, (x-=10) + calle.width, 0);
    //"Movimiento"
    if (x < - calle.width) {
      x += calle.width;
    }
  }
}
