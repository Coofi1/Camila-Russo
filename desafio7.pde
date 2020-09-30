PImage fondo;
Sakura[] sakura = new Sakura[16]; 

void setup(){ 
  size (400, 400);
  
  fondo = loadImage ("fondo.png"); 
  
  //Objetos con constructor
  for (int i = 0; i < sakura.length; i++){
  sakura[i] = new Sakura ( random (width), random(200) );
  }
}

void draw(){
  
  background (#C9E2F3);
  image(fondo, 0 , 0); 
  
  for (int i = 0; i < sakura.length; i++){
    
  sakura[i].dibujar();
  sakura[i].actualizar(); 
  
  }
} 
