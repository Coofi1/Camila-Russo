//librería MINIM
import ddf.minim.*;
Minim minim; 
AudioPlayer musica;

//objetos AVENTURA
Pantallas p;
Botones b;
Aventura aventura;

//objetos MINIJUEGO
Minijuego j; 



void setup() {
  size(1280, 1024);
  //surface.setResizable(true);
  p = new Pantallas(0, 0);
  b = new Botones();
  aventura = new Aventura();
  j = new Minijuego();
  minim = new Minim(this);
  musica = minim.loadFile("data/XYLOJUNG.wav", 2048);
}

void draw() {
  aventura.cicloEstados();
}

void keyPressed() {
  if (keyCode == LEFT) {
    j.a.lb = true;
  }
  if (keyCode == RIGHT) {
    j.a.rb = true;
  }
}

void keyReleased() {
  if (keyCode == LEFT)
  {
    j.a.lb = false;
  }
  if (keyCode == RIGHT)
  {
    j.a.rb = false;
  }
}
