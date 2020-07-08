//Declaración de variables
String estado; 
String inv1, text, text2, op1, op2, op3, r1, r2, sR1, sR2, sR3; 
color red; 

PFont font; 

PImage inicio, inv, inv2, moto, llegada, delado, delado2, frente, puntos, puntos2, smoke, beso, fin, ops, creditos; 


void setup() {
  size( 800, 600 );
  
  estado = "inicio"; 

  font = loadFont( "Stardew-Valley-28.vlw" ); 

  //Textos

  inv1 = "Sebastian: ¡Hola Jaz!" + "\n" + "Ya me estaba por ir, me gustaria mostrarte"  + "\n" + "algo. ¿Vienes? :)"; 
  text = "Sebastian: Esa es la ciudad de Delania." + "\n" +  "Suelo venir aqui cuando quiero relajarme." + "\n" +  "Es como mi lugar especial."; 
  text2 = "Sebastian: ¿Jaz...? No suelo traer a chicas" + "\n" + "a este lugar. De hecho, eres la unica." + "\n" +  "Entiendes lo que intento decirte, ¿verdad? ";

  op1 = " Rechazar despectivamente "; 
  op2 = " Rechazar amablemente ";
  op3 = " Besar ♡ "; 

  r1 = "Jaz: Puff, no puedo creer que hayas" + "\n" +  "pensando en que existia un nosotros." + "\n" +  "Deberia irme.";
  r2 = "Jaz: Si... comprendo, pero creo que no" + "\n" +  "sentimos lo mismo Sebas, perdon." + "\n" + "Pero podemos seguir siendo amigos :("; 

  sR1 = "Ok, lo siento por molestarte."; 
  sR2 = "Sebastian: Oh, entiendo." + "\n" + "Esta bien." + "\n" + "Lo siento...";
  sR3 = "Mh... necesito estar solo" + "\n" + "para pensar. Lo siento, Jaz.";  

  red = ( #651a00 ); 

 
  //Carga de imágenes
  
  inicio = loadImage ("inicio.jpg");  
  inv = loadImage( "inv.jpg" );
  inv2 = loadImage( "inv2.jpg" );
  moto = loadImage( "moto.jpg" );
  llegada = loadImage( "llegada.jpg" );
  delado = loadImage( "delado.jpg" );
  delado2 = loadImage( "delado2.jpg" );
  frente = loadImage( "frente.jpg" );
  puntos = loadImage( "puntos.jpg" );
  puntos2 = loadImage( "puntos2.jpg" );
  smoke = loadImage( "smoke.jpg" );
  beso = loadImage( "beso.jpg" );
  fin = loadImage( "fin.jpg" );
  ops = loadImage( "ops.jpg" ); 
  creditos = loadImage( "creditos.jpg" );
  
}


void draw() {

  //Textos

  textFont ( font );
  fill ( red ); 

  //Pantallas
  //image( nombreImg, posX, posY, ancho, alto );
  
  if ( estado.equals("inicio") ){
    image( inicio, 0, 0, 800, 600 ); 

  
  }else if ( estado.equals("inv") ){
    image( inv, 0, 0, 800, 600 );
    text( inv1, 310, 450 );

   
  }else if ( estado.equals("inv2") ){
    image( inv2, 0, 0, 800, 600 );


  }else if ( estado.equals("moto") ){
    image( moto, 0, 0, 800, 600 ); 

    
  }else if ( estado.equals("llegada") ){
    image( llegada, 0, 0, 800, 600 ); 
    text( text, 45, 480 );

 
  }else if ( estado.equals("delado") ){
    image( delado, 0, 0, 800, 600 ); 
    text( r1, 50, 485); 
  
  }else if ( estado.equals("delado2") ){
    image( delado2, 0, 0, 800, 600 ); 
    text( sR3, 50, 485); 

  
  }else if ( estado.equals("frente") ){
    image( frente, 0, 0, 800, 600 );
    text( text2, 42, 480 );

  
  }else if ( estado.equals("puntos") ){
    image( puntos, 0, 0, 800, 600 );
  

  }else if ( estado.equals("puntos2") ){
    image( puntos2, 0, 0, 800, 600 );
    text( r2, 50, 475);
  
  }else if ( estado.equals("smoke") ){
    image( smoke, 0, 0, 800, 600 );
    text ( sR1, 50, 485 ); 

  
  }else if ( estado.equals("beso") ){
    image( beso, 0, 0, 800, 600 ); 

  
  }else if ( estado.equals("fin") ){
    image( fin, 0, 0, 800, 600 ); 

    
  }else if ( estado.equals("ops") ){
    image( ops, 0, 0, 800, 600 );
    text ( op1, 40, 476 ); 
    text ( op2, 40, 515 ); 
    text ( op3, 40, 550 );  

    
  }else if ( estado.equals("creditos") ){
    image( creditos, 0, 0, 800, 600 ); 
    
 }
 

}

//Interacciones

void keyPressed(){
  
  if( key == ' ' && estado.equals("inicio") ){ 
    estado = "inv";
    return;
  }
  
  if( key == ' ' && estado.equals("inv") ){ 
    estado = "inv2";
    return;
  }
  
  if( key == ' ' && estado.equals("inv2") ){ 
    estado = "moto";
    return;
  }
  
  if( key == ' ' && estado.equals("moto") ){ 
    estado = "llegada";
    return;
  }
  
  if( key == ' ' && estado.equals("llegada") ){ 
    estado = "puntos";
    return;
  }
  
  if( key == ' ' && estado.equals("puntos") ){ 
    estado = "frente";
    return;
  }
  
  if( key == ' ' && estado.equals("frente") ){ 
    estado = "ops";
    return;
  }
  
  if( key == ' ' && estado.equals("delado") ){ 
    estado = "smoke";
    return;
  }
  
  if( key == ' ' && estado.equals("puntos2") ){ 
    estado = "delado2";
    return;
  }
  
  if( key == ' ' && estado.equals("delado2") || estado.equals("beso") || estado.equals("smoke") ){ 
    estado = "fin";
    return;
  }
  
  if( key == ' ' && estado.equals("fin") ){ 
    estado = "inicio";
    return;
  }
  
  if( key == 'g' && estado.equals("fin") ){ 
    estado = "creditos";
    return;
  }

  if( key == ' ' && estado.equals("creditos") ){ 
    estado = "inicio";
    return;
  }
  
}
  

void mousePressed(){

if ( estado.equals("ops") ){
  
 if( mouseX > 25 && mouseX < 430 && mouseY > 450 && mouseY < 485 ){ 
  estado = "delado";
    }
  
  if( mouseX > 30 && mouseX < 435 && mouseY > 488 && mouseY < 521 ){ 
  estado = "puntos2";
    }
  
  if( mouseX > 25 && mouseX < 430 && mouseY > 527 && mouseY < 553 ){ 
  estado = "beso";
    }
  
  }

}



