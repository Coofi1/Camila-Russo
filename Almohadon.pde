class Almohadon {
  PImage almohadon;
  float posx;
  float posy;
  float tamw;
  float tamh;
  float vel;
  boolean lb;
  boolean rb;
  
  int resi = width/14; 
  int resi1 = height/12;

  Almohadon(float x, float y) {
    almohadon = loadImage("almohadon.png");
    almohadon.resize(resi, resi1);
    posx = x;
    posy = y; 
    tamw = almohadon.width;
    tamh = almohadon.height;
    vel = width/800*4;
    lb = false;
    rb = false;
  }

  void dibujar() {
    image(almohadon, posx, posy);
  }

  void mover() {
    if (rb) {
      posx += vel;
    }
    if (lb) {
      posx -= vel;
    }
  }
}
