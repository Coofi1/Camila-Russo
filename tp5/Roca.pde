class Roca {

  float x, y; 
  PImage roca;

  Roca() {
    
    x = 630;
    y = 230;

    roca = loadImage ("roca.png");
  }

  void dibujar() {
    
    //Se dibuja la roca, al restar se mueve
    image(roca, x-=10, y);
    //Cuando la roca se va de la pantalla, vuelve a aparecer a la derecha
    if (x < - roca.width)
      reiniciarRoca();
  }

  //Función para calcular la Hit Box 
  Hitbox calcularHitbox() {
    return new Hitbox(x, y, roca.width, roca.height);
  }

  void reiniciarRoca() {
    x = width;
    y = random(150, 300);
  }
}
