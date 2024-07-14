// Moccero Maria Luz
// Comision 2
//link:  https://www.loom.com/share/5edfe481abf6468b9b602a3e812673b2?sid=ea588961-8b59-46d9-abf8-98f1a193d88c


PImage img;
int cant = 60; 
int tamcirc = 18;
int tam;
color negro = color(0); // color que cambia al principio los circulitos
boolean estoyEnLaMitadDerecha; 
float x, y; 

void setup() {
  size(800, 400);
  resetProgram(); 
  circledibujin(495, 170, 20);

  x = 400;
  y = 0;
}

void draw() {
  stroke(100);
  strokeWeight(15);
  println(mouseX + "/" + mouseY);
  
  estoyEnLaMitadDerecha = estoyEnLaMitadDerecha(mouseX); 

  if (estoyEnLaMitadDerecha) {
    fill(50);
  } else {
    fill(0);
  }
  rect(x, y, 400, 400);
  
  // Dibujo de líneas
  for (int i = 400; i <= width; i += cant) {
    line(i +36, 0, i +36, height); // Líneas verticales
    line(400, i - 350, width, i - 350); // Líneas horizontales
  }
  
  stroke(240);
  strokeWeight(4);
  
  for (int i = 436; i <= width; i += cant) {
    for (int j = -10; j <= height; j += cant) {
      float posX = i - width / 2; 
      float posY = j; 
      float d = dist(mouseX, mouseY, posX + width / 2, posY);

      if (posX >= 0 && d < tamcirc * 5) {
        fill(negro); 
      } else {
        fill(240);
      }
      ellipse(posX + width / 2, posY, tamcirc, tamcirc); 
    }
  }
  
  noStroke();
  circledibujin(495, 170, 20);

}


boolean estoyEnLaMitadDerecha(float mouseX) {
  return mouseX > width / 2;
  
}


void mouseClicked() {
  negro = color(random(255), random(255), random(255)); 
  redraw(); 
}

void keyPressed() {
  if (key == 'r' || key == 'R') {
    resetProgram(); 
  }
}

void circledibujin(float centerX, float centerY, float radius) {
  pushStyle();
  fill(240);
  circle(centerX, centerY, radius);
  circle(centerX + 60, centerY, radius); 
  circle(centerX + 60, centerY + 60, radius); 
  circle(centerX + 120, centerY + 60, radius); 
  popStyle();
}


void resetProgram() {
  mouseX = 0;
  mouseY = height / 2;
  img = loadImage("illusion.jpg");
  tam = width / cant; 
  image(img, 0, 0, 400, 400); 
  negro = color(0); 
}
