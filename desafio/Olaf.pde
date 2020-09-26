// Declaración de la Clase

class Olaf{
  
  // Campos (variables)
  float x, y; 
  float t;
  
  //Color 
  color c = #FFBA08; 
  
  // Constructor 
  
  Olaf( float x_, float y_, float t_ ) {
    
    // Inicializar las propiedades 
    x = x_;
    y = y_;
    t = t_; 
  }  
  
  //Métodos 
  
  void dibujar() {
    
    
    strokeWeight( t*0.055 );
    stroke( #774936 );
    //brazo izquierdo
    line( x-(t*0.2), y, x-t, y-(t*0.5) );
    //brazo derecho
    line( x+(t*0.2), y, x+t, y-(t*0.5) );
    
    //baile line( x-(t*0.2), y, x-t, y+(t*0.5) );
    
    fill( #F3F3F3 ); 
    noStroke();
    //ellipse de arriba
    ellipse( x, y-t*0.8, t*0.7, t*0.7 );
    //ellipse del medio
    ellipse( x, y, t, t );
    //ellipse de abajo
    ellipse( x, y+t, t*1.3, t*1.3 );
    
    
    //Nariz 
    fill( c );
    triangle( x, y-(t*0.7), x-(t*0.05), y-(t*0.8), x+(t*0.3), y-(t*0.8) );
  
  }
  
  
void cNariz() { 
  
    colorMode(HSB, 100);
    c = color( random(100), 50, 100 ); 
      
  }
}


class Cielo{
  
  color colour = color(117, 185, 216); 
  

void dibujar() {
  
  background(colour);  
  
} 
  
  

void colour() { 
  
  colorMode(HSB, 100);
  colour = color( random(100), 10, 100 );
  
  }
} 
