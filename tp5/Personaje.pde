class Personaje {

  //Variable dir para recordar la dirección  
  PImage moto;
  float x, y, dir; 

  Personaje(float x_, float y_) {

    moto = loadImage ("moto.png");
    x = 20; 
    y = y_/2 - moto.height;
  }

  void dibujar() {

    image(moto, x, y);
    //Constrain para limitar al cordón
    y = constrain(y + 5*dir, 60, 245 );
  }

  //Moverse arriba
  void moveUp() {
    if ( keyCode == UP)
      dir = -1;
  }

  //Moverse abajo 
  void moveDown() {
    if ( keyCode == DOWN ) 
      dir = +1;
  }

  void released() {
    dir = 0;
  }

  //Calcula si existe una colisión 
  boolean colision(Roca roca) {
    //Calcular las coordenadas de la Colisión
    Hitbox hitboxMoto = new Hitbox(x, y+85, moto.width, moto.height-85);
    //Si la hitbox de la moto choca con la hitbox de la roca
    if (hitboxMoto.choca (roca.calcularHitbox())) {
      //Para comprobar si funciona
      System.out.println("si funciona :D!");
      roca.reiniciarRoca();
      //Se envía el resultado a juego
      return true;
    }
    //Si no cochan retorna falso
    else return false; 
  }
}
