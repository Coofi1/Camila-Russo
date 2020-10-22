class Hitbox {

  float x, y, ancho, alto; 
  
  //Constructor
  Hitbox (float x_, float y_, float ancho_, float alto_) {
    x = x_; 
    y = y_; 
    ancho = ancho_; 
    alto = alto_;
  }
  
  //Pregunta si la hitbox choca con la otra hitbox
  boolean choca(Hitbox roca) {
    return x < roca.x + roca.ancho && x + ancho > roca.x && y < roca.y + roca.alto && alto + y > roca.y; 
  }
}
