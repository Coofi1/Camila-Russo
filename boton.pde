// Función de botón 

boolean boton(int x, int x1, int y, int y1){  
  
  if ( mouseX > x && mouseX < x1 && mouseY > y && mouseY < y1 )
    return true;
    else return false; 
  }
