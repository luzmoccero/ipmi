// Moccero Maria Luz
// Comision 2

PImage estado1, estado2, estado3;
String juego;
float tam;
float x, y;
float posXTexto1, posXTexto2;
int alpha, esquinaX1 = 320, esquinaY1 = 410, ancho = 140, alto = 40;

void setup() {
  
  size(640, 480);
  estado1 = loadImage("pacman.jpg");
  estado2 = loadImage("paccman2.jpg");
  estado3 = loadImage("pacman3.jpg");
  tam = 14;
  juego = "estado1";

  x = width / 3;
  y = height / 3;
  alpha = 0;
  
  posXTexto1 = -200; // Desde la izquierda
  posXTexto2 = width; // Desde la derecha
}

void draw() {
  
  background(0);
  
  if (frameCount / 50 >= 0 && frameCount / 50 <= 6) {
    if (!juego.equals("estado1")) {
      juego = "estado1";
      tam = 14;
    }
  } else if (frameCount / 50 > 6 && frameCount / 50 <= 12) {
    if (!juego.equals("estado2")) {
      juego = "estado2";
      tam = 14;
    }
  } else if (frameCount / 50 > 18) {
    if (!juego.equals("estado3")) {
      juego = "estado3";
      tam = 14;
    }
  }

  // Pantalla 1
  if (juego.equals("estado1")) {
    image(estado1, 0, 0);
    if (tam < 20) {
      tam += 0.06;
    }
    textSize(tam);
    fill(255);
    text("Fue creado por el diseñador Toru Iwatani, de la empresa japonesa Namco", 14, 460);  
  }
  // Pantalla 2
  if (juego.equals("estado2")) {
    image(estado2, 0, 0);
    if (tam < 17) {
      tam += 0.09;
    }
    textSize(tam);
    fill(255);
    if (posXTexto1 < 10) {
      posXTexto1 += 1; 
    }
    if (posXTexto2 > 500) {
      posXTexto2 -= 1; 
    }
    text("Debe\n esquivar \n a cuatro\n fantasmas\n", posXTexto1, 130);
     text(" El juego consiste \n en conducir a \n Pac-Man \n una bola amarilla \n que abre y cierra \n la boca,\n por un laberinto \n para ir comiendo \n bolitas\n y diferentes frutas", posXTexto2, 190);
  
  }
  // Pantalla 3
  if (juego.equals("estado3")) {
    image(estado3, 0, 0);
    if (tam < 30) {
      tam += 0.06;
    }
    textSize(tam - 5);
    fill(255);
    text("- Si el fantasma te toca, moris \n -Tenes 4 vidas \n -A medida que ganes subis de nivel \n -Contiene 255 niveles \n  ", 20, 60);
    
    // Botón de reinicio 
    textSize(tam);
    fill(255);
    rect(esquinaX1, esquinaY1, ancho, alto);
    fill(0);
    text("REINICIAR", 320, 440);
  }
}

void mousePressed() {
  if (juego.equals("estado3") && mouseX > esquinaX1 && mouseX < esquinaX1 + ancho && mouseY > esquinaY1 && mouseY < esquinaY1 + alto) {
    frameCount = 0;
  }
}
