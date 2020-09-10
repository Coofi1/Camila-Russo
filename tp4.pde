//Música
import processing.sound.*;
SoundFile musica; 

//Arreglos de textos e imágenes 

String[] dialogos = new String[10];  

PImage[] ima = new PImage[16];

color red; 
int c; 

PFont font; 


void setup() {

  size (800, 600); 
  
  font = loadFont( "Stardew-Valley-28.vlw" ); 
  
//Música
  musica = new SoundFile (this, "musica.mp3");
  reiniciar();  
  
  
//Diálogos: carga manual de los textos sin for, porque son distintos

  dialogos[0] = "Sebastian: ¡Hola Jaz!" + "\n" + "Ya me estaba por ir, me gustaria mostrarte"  + "\n" + "algo. ¿Vienes? :)"; 
  dialogos[1] = "Sebastian: Esa es la ciudad de Delania." + "\n" +  "Suelo venir aqui cuando quiero relajarme." + "\n" +  "Es como mi lugar especial."; 
  dialogos[2] = "Sebastian: ¿Jaz...? No suelo traer a chicas" + "\n" + "a este lugar. De hecho, eres la unica." + "\n" +  "Entiendes lo que intento decirte, ¿verdad? ";

  dialogos[3] = " Rechazar despectivamente "; 
  dialogos[4] = " Rechazar amablemente ";
  dialogos[5] = " Besar "; 

  dialogos[6] = "Jaz: Puff, no puedo creer que hayas" + "\n" +  "pensando en que existia un nosotros." + "\n" +  "Deberia irme.";
  dialogos[7] = "Ok, lo siento por molestarte.";
  
  dialogos[8] = "Jaz: Si... comprendo, pero creo que no" + "\n" +  "sentimos lo mismo Sebas, perdon." + "\n" + "Pero podemos seguir siendo amigos :(";  
  dialogos[9] = "Mh... necesito estar solo" + "\n" + "para pensar. Lo siento, Jaz.";  


  red = ( #651a00 ); 

 
//Carga de imágenes con ciclo For, se cambia los nombres de la data

  for( int i = 0; i < 16; i++ ){
    
    if ( i < 10)
      ima[i] = loadImage ( "ima0" + i + ".jpg" );
      
    else
      ima[i] = loadImage ( "ima" + i + ".jpg" );
  }
  
}

 
void draw() {

  textFont ( font );
  fill ( red ); 
 
// Dibujo de las pantallas
 
  image( ima[c], 0, 0, 800, 600 );
  
//Switch para agrupar varios ifs 
  
  switch(c){
    
   case 1: text(dialogos[0], 310, 450 );
           break; 
   
   case 5: text(dialogos[1], 45, 475 );
           break;  
   
   case 6: text(dialogos[2], 40, 478 );
           break; 
   
   case 7: text(dialogos[3], 38, 476 );
           text(dialogos[4], 38, 515 ); 
           text(dialogos[5], 38, 550 );
           break;
   
   case 8: text(dialogos[6], 50, 485);
           break;
   
   case 9: text(dialogos[7], 50, 485); 
           break;
   
   case 10: text(dialogos[8], 50, 475);
           break;
               
   case 11: text(dialogos[9], 50, 485);
           break;
           
  } 
  
}


void keyPressed() { 
  
// Cambiar de pantalla con la barra espaciadora

  if ( c != 7 && c != 9 && c != 11 && c != 13 && c != 14 && c != 15 && key == ' ' )
      c ++;
      
  else if ( c == 9 || c == 11 || c== 13 && key == ' ' ) 
      c = 14; 
      
  else if ( c == 14 || c == 15 && key == ' ' )
      reiniciar(); 
           
// Pantalla de creditos 

  if ( c == 14 && key == 'g' )
      c = 15; 
         
}


void mousePressed() {
  
// Interactividad con mouse
  
  if ( c == 7 ){
  
    if ( mouseX > 25 && mouseX < 430 && mouseY > 450 && mouseY < 485 )
      c = 8; 
      
    if( mouseX > 30 && mouseX < 435 && mouseY > 488 && mouseY < 521 )
      c = 10; 
      
    if( mouseX > 25 && mouseX < 430 && mouseY > 527 && mouseY < 553 )
      c = 13; 
  }
  
}

// Función para que comience la música al reiniciar el juego 

void reiniciar(){
  
  c = 0;
  
  musica.stop();
  musica.loop();
}


 
