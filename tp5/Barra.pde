class Barra {

  PImage barra, circulo;
  float x; 

  Barra() {
    
    x = 240; 
    barra = loadImage ("barra2.png");
    circulo = loadImage ("circulo.png"); 
  }

  void dibujar() {
    image(barra, 220, 435);
    //Velocidad del avance del recorrido
    image(circulo, x+=0.2, 449);
  }
  
  boolean verificaWin(){
    return x > 510; 
  }
}
