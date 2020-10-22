//TP5: Videojuego con Objetos

//Relación Aventura Gráfica: Se reemplaza la pantalla del viaje a la montaña en moto de los protagonistas. 
//El videojuego está en el trayecto hacia el destino. 


//Declaración de Clase y Objeto 
Juego juego; 

void setup() {
  size(800, 527);

  juego = new Juego();
}

//Métodos 

void draw() {
  juego.dibujar();
}

void keyPressed() {
  juego.teclas();
}

//Método para evitar un pequeño "lag" al mover la moto
void keyReleased() {
  juego.released();
}


//Encontrar coordenadas exactas facilmente 
void mouseClicked() {
  println (mouseX +"," + mouseY);
}
