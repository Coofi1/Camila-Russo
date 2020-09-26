Olaf o;
Cielo oCielo; 

void setup() {  
  
  size( 400, 400 );
  
  // Llama al Constructor
  o = new Olaf ( width/2, height/2, 100);
  oCielo = new Cielo (); 
  
}

void draw() {
  
  //Método para dibujar el Cielo
  oCielo.dibujar();
  
  
  strokeWeight( 2 );
  colorMode(RGB, 255); 
  
    //Línea negra
    line( 0, height*0.75, width, height*0.75 );
    
    fill( 255 );
    noStroke();
    //Piso
    rect( 0, height*0.75, width, height*0.75 );
  
  //Método para dibujar a Olaf (acción)
  o.dibujar();

}


void keyPressed() {
  //Llama al método
  oCielo.colour(); 
  
}

  
void mousePressed() { 
  
  //Llama al método 
  o.cNariz(); 
  
}
