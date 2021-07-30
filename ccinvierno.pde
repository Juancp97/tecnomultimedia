// Pose Juan Cruz
PFont fuente;
PImage pantalla0;
PImage pantalla1;
PImage pantalla2;
PImage pantalla3;
PImage pantalla4;
PImage pantalla5;
PImage MandalorianImg;
PImage nave;
int estado;
int posy, posyt, posyt2;
int contador;


void setup () {
  size (800, 600);
  background(0);
  fuente = loadFont ("Play-48.vlw");
  pantalla0 = loadImage ("MandoPresentacion.jpg");
  pantalla1 = loadImage ("Kid.jpg");
  pantalla2 = loadImage ("MandalorianKid2.jpg");
  pantalla3 = loadImage ("MandalorianPoster.jpg");
  pantalla4 = loadImage ("Mandokid.jpg");
  pantalla5 = loadImage ("Mandokid2.jpg");
  MandalorianImg = loadImage ("The-Mandalorian.jpg");
  nave = loadImage ("nave.png");
  estado = 0;
  contador = 0;
  posy= -150;
  posyt = -150;
  posyt2= -250;
}

void draw() {
  // intro
  println(posy);
  println("contador :", contador);
  if (estado == 0) {
    image (MandalorianImg, -20, posy);
    posy ++;
    contador ++;
    if (contador > 680) {
      estado = 1;
    }
    //pantalla 1
  } else if (estado == 1) {
    image (pantalla0, 0, 0);
    float degradar = map (frameCount, 680, 750, 0, 210);
    fill(0);
    textFont(fuente, 50);
    text ("Protagonizado por :", 300, 100);
    textFont(fuente, 40);
    fill(0, degradar);
    text("El mandaloriano", 370, 150);
    textFont(fuente, 20);
    text( "Interpretado por", 440, 180);
    textFont(fuente, 30);
    text ( "Pedro Pascal", 430, 210);
    contador ++;
    if ( contador > 1000) {
      estado = 2;
    }
    //pantalla 2
  } else if (estado == 2) {
    image (pantalla1, 0, 0);

    textFont(fuente, 40);
    float degradar2= map (frameCount, 1000, 1150, 0, 210);
    fill( 0, degradar2);
    text (" Y The kid (El Niño)", 300, 100);
    contador ++;
    if (contador > 1200) {
      estado = 3;
    }
    //pantalla 3
  } else if ( estado == 3) {
    image( pantalla2, 0, 0);
    textFont(fuente, 50);
    float degradar3= map (frameCount, 1200, 1350, 0, 210);
    fill (0, degradar3);
    text ("Creado por:", 480, 520);
    textFont(fuente, 40);
    text ( "Jon Favreau", 490, 560);
    contador++;
    if (contador > 1480) {
      estado = 4;
    }
    //pantalla 4
  } else if ( estado == 4) {
    image (pantalla3, 0, 0);
    textFont(fuente, 50);
    text ("Guion : ", 200, posyt);
    textFont(fuente, 30);
    text ("Jon Favreau", 200, posyt +30);
    text ("Dave Filoni", 200, posyt +60);
    text ("Rick Famuyiwa", 200, posyt +90);
    text ("Christopher Yost", 200, posyt +120);  
    contador ++;
    posyt = posyt+1;
    if (contador > 2300) {
      estado = 5;
    }
    //pantalla 5
  } else if ( estado ==5) {
    image ( pantalla4, 0, 0);
    textFont(fuente, 50);
    text ("Direccion : ", 200, posyt2);
    textFont(fuente, 30);
    text ("Dave Filoni", 200, posyt2 +30);
    text ("Rick Famuyiwa", 200, posyt2+60);
    text ("Deborah Chow", 200, posyt2+90);
    text ("Bryce Dallas Howard", 200, posyt2+120);
    text ("Taika Waititit", 200, posyt2+150);
    text ("Robert Rodríguez", 200, posyt2+180);
    textFont(fuente, 50);
    text( "Musica :", 200, posyt2+240);
    textFont(fuente, 30);
    text( "Ludwig Göransson", 200, posyt2 +270);
    contador ++;
    posyt2 = posyt2+1;
    if (contador >3260) {
      estado = 6;
    }
    //pantalla 6
  } else if ( estado == 6) {
    image (pantalla5, 0, 0);
    textFont(fuente, 35);
    text( "Pulsa en la nave para volver a empezar", 50, 100);
    rect (650, 500, 80, 80);
    image (nave, 650, 500, 80, 80);
    contador++;
  }
}
// click en zona para volver a empezar
void mousePressed () {
  if (mouseX>650 && mouseX <650+80 && mouseY > 500 && mouseY < 500+80 && contador > 3270) {
    background(0);
    frameCount = 0;
    estado = 0;
    contador = 0;
    posy= -150;
    posyt = -150;
    posyt2= -250;
  }
}
