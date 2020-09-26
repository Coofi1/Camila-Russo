Olaf o; 

void setup() {  
  
  size( 400, 400 );
  
  background( 117, 185, 216 );
  
  // Llama al Constructor
  o = new Olaf ( width/2, height/2, 100);
  
}

void draw() { 
  
  strokeWeight( 2 );
    
    //Línea negra
    line( 0, height*0.75, width, height*0.75 );
    
    fill( 255 );
    noStroke();
    //Piso
    rect( 0, height*0.75, width, height*0.75 );
  
  //Llama al método (acción)
  o.dibujar();

}
  
  
void mousePressed() { 
  
  //Llama al método 
  o.cNariz(); 
  
}
