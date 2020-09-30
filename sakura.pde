class Sakura{
  
  //Variables
  float x, y;
  float tam; 
  float vel;
  PImage img; 
  
  //Constructor
  Sakura (float x_, float y_){
    x = x_; 
    y = y_; 
    tam = random(40, 80); 
    vel = random(1, 2);
    
    //Carga de la img
    img = loadImage ("sakura.png");
    
  }
  
  
  //Métodos
  
  void dibujar(){
    image (img, x, y, int(tam), int(tam*0.9));  
  }
  
  void actualizar(){ 
    x += 0.5; 
    y += vel;
    if (y > height + tam/2){
        reciclar();
    }
    
  }
  
  void reciclar(){
    x = random (width);
    y = random (100, 200); 
    tam = random (30, 80); 
    vel = random (1, 3);
  }
  
}
