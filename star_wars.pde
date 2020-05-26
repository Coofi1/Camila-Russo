//Variables: 

//1) DECLARACIÓN

//imagen de fondo
PImage fondo; 

//v.título
String star; 
String wars;  
PFont fuente; 
float tamTexto; 

//v.créditos

PFont fuente2; 
float tamTexto2; 

String ep1;
String titulo;
String direc;
String script; 
String producer;
String cine;
String montaje;
String music;
String casting; 
String design; 
String art; 
String set; 
String costume; 
String mkp; 


String characters;
String chQui;
String chObi;
String chPadme;
String chVader;
String chShmi;
String chYoda;
String chSheev;
String chSio;
String chCap;
String chJar;
String chC3po;
String chR2;
String chFinis;
String chMaul;
String chMace; 


//v.color
color amarillo;
color blanco; 


void setup(){
  
  size(500, 500);  
  
  //2) ASIGNACIÓN 

  //fondo
  fondo = loadImage("background.jpg");
  
  //tipografía
  fuente = loadFont ("StarJediHollow-128.vlw"); 
  fuente2 = loadFont ("StarJedi-20.vlw");
  
  //v. texto 
  star = "Star"; 
  wars = "Wars"; 
  tamTexto = 240;

  //v. créditos
  tamTexto2 = 10; 

ep1 = "Episode 1";

titulo = "The Phantom Menace"; 

direc = "director: george lucas";

script = "scriptwritter: george lucas";

producer = "producer: rick mccallum";

cine = "DF: david tattersall";

montaje = "edition: paul smith, ben burtt";

music = "music: john williams";

casting = "casting: robin gurland"; 

design = "production design: gavin bocquet"; 

art = "art director: petter russell"; 

set = "set decoration: peter walpole"; 

costume = "costume design: trisha biggar"; 

mkp = "makeup director: sallie adams"; 


//v. personajes

characters = "characters";

chQui = "qui gon: jinn neeson"; 

chObi = "obi-wan: kenobi mcgregor";

chPadme = "padme amidala: natalie portman ";

chVader= "darth vader: jake lloyd";

chShmi = "shmi skywalker: pernilla august";

chYoda = "yoda: frank oz";

chSheev = "sheev palpatine: ian mcdiarmid";

chSio = "sio bibble: oliver davies";

chCap = "captain q. panaka: hugh quarshie";

chJar = "jar jar binks: ahmed best";

chC3po = "c-3po: anthony daniels";

chR2 = "r2-d2: kenny baker";

chFinis = "finis valorum: terence stamp";

chMaul= "darth maul: ray park";

chMace = "mace windu: samuel l.jackson";



//v. color
amarillo = color(255, 236, 28); 
blanco = color(245, 245, 245); 
  
}

void draw(){
  
  //fondo
  
  background(15, 15, 15);
  image(fondo, 0, 0, width, height);
  
  fill(255);
  ellipse(random(500), random(500), random(5), random(5));
  
  fill(255);
  ellipse(random(500), random(500), 5, 5);

  fill(255);
  ellipse(random(500), random(500), 3, 3);

  fill(255);
  ellipse(random(500), random(500), 7, 7);

  fill(255);
  ellipse(random(500), random(500), 8, 8);
  

  
  //3) UTILIZACIÓN
  
  //texto  
  textFont (fuente); 
  
  textAlign (CENTER, TOP);
  fill(amarillo);
  textSize(tamTexto);
  text(star, width/2, height/2 - tamTexto);
  
  textAlign (CENTER, BOTTOM);
  fill(amarillo);
  textSize(tamTexto);
  text(wars, width/2, height/2 + tamTexto); 
  
  //creditos
  textSize(tamTexto2); 

  //textAlign (CENTER, CENTER); 
  textFont (fuente2); 
  
  fill(amarillo);

  text(ep1, width/2, 740 - tamTexto2);

  text(titulo, width/2, 780 - tamTexto2);
  
  fill(blanco); 

  text(direc, width/2, 840 - tamTexto2);

  text(script, width/2, 880 - tamTexto2);

  text(producer, width/2, 920- tamTexto2);
  
  text(cine, width/2, 960 - tamTexto2);

  text(montaje, width/2, 1000 - tamTexto2);

  text(music, width/2, 1040 - tamTexto2);

  text(casting, width/2, 1080 - tamTexto2); 

  text(design, width/2, 1120 - tamTexto2); 

  text(art, width/2, 1160 - tamTexto2); 

  text(set, width/2, 1200 - tamTexto2); 

  text(costume, width/2, 1240 - tamTexto2); 

  text(mkp, width/2, 1280 - tamTexto2); 

  //personajes

  fill(amarillo); 

  text(characters, width/2, 1460 - tamTexto2);

  fill(blanco); 

  text(chQui, width/2, 1500 - tamTexto2);
  
  text(chObi, width/2, 1540 - tamTexto2);

  text(chPadme, width/2, 1580 - tamTexto2);

  text(chVader, width/2, 1620 - tamTexto2);
  
  text(chShmi, width/2, 1660 - tamTexto2);

  text(chYoda, width/2, 1700 - tamTexto2);

  text(chSheev, width/2, 1740 - tamTexto2);

  text(chSio, width/2, 1780 - tamTexto2);
  
  text(chCap, width/2, 1820 - tamTexto2);

  text(chJar, width/2, 1860 - tamTexto2);

  text(chC3po, width/2, 1900 - tamTexto2);
  
  text(chR2, width/2, 1940 - tamTexto2);

  text(chFinis, width/2, 1980 - tamTexto2);

  text(chMaul, width/2, 2020 - tamTexto2);

  text(chMace, width/2, 2060 - tamTexto2);
  
  
  //4) ACTUALIZACIÓN
  
  tamTexto = tamTexto / 1.01;

  tamTexto2 = tamTexto2 + 0.9; 

  println (tamTexto); 
  println (tamTexto2);
  
}
