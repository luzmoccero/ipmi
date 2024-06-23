// Moccero Maria Luz
// Comision 2
//link:

PImage img;
int cant = 50; 
int tamcirc = 18;
int tam;
color negro = color(0); // color que cambia al principio los circulitos

void setup() {
  size(800, 400);
  resetProgram(); 
}

void draw() {
  stroke(100);
  strokeWeight(15);
  
  for (int i = 400; i <= width; i += cant) {
    line(i, 0, i, height); // Líneas verticales
    line(400, i - 400, width, i - 400);  // Líneas horizontales
  }

  stroke(240);
  strokeWeight(4);
  
  for (int i = 400; i <= width; i += cant) {
    
    for (int j = 0; j <= height; j += cant) {
      float posX = i - width / 2; 
      float posY = j; 

      float d = dist(mouseX, mouseY, posX + width / 2, posY);

      if (posX >= 0 && d < tamcirc * 5) {
        fill(negro); 
        
      }
      else {
        fill(240);
      }
      ellipse(posX + width / 2, posY, tamcirc, tamcirc); 
    }
  }
}

void mouseMoved() {
  redraw(); 
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

void resetProgram() {
  
  background(0);
  img = loadImage("illusion.jpg");
  tam = width / cant; 
  image(img, 0, 0, 400, 400); 
  negro = color(0); 
}
