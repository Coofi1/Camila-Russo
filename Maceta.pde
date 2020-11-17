class Maceta {
  PImage imagen;
  float posx;
  float posy;
  float tam;
  float vel;
  int contador = 0;
  float tamH;
  float tamW;
  float acel = 1;

  //Resize Imágenes
  //int resi = width/24; 
  //int resi1 = height/12; 

  Maceta(float x, float y, PImage img) {
    posx = x;
    posy = y;
    imagen = img;
    tamH = imagen.height;
    tamW = imagen.width;
    vel = width/266.66*2;

    //imagen.resize(resi, resi1);
  }

  void dibujar() {
    image(imagen, posx, posy);
  }

  void caer() {
    posy += vel;
  }

  void salvada() {
   posy = j.estanteY;
   posx = random(width/8, (width/8) * 6);
   j.puntaje += 1;
   vel += 0.1;
  }
}
