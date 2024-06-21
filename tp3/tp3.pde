PImage obra;
float mapeado;
int ultimaPosicion;

void setup() {
  size(800, 400);
  background(10);
  stroke(0, 255, 0);
  obra = loadImage("imagenAO.jpg"); 
}

void draw() {
  background(10);  
  image(obra, 0, 0); 

  for (int valor = 400; valor < 800; valor += 16) { 
    mapeado = map(valor, 400, 800, 0, 12);  

    if (valor <= ultimaPosicion) {
      strokeWeight(mapeado);
    } else {
      strokeWeight(1);
    }

    line(valor, 0, valor, 400); 

    
    if (ultimaPosicion > 0) {
      for (int y = 0; y < 400; y += 16) {
        line(400, y, 800, y); 
      }
    }
  }
}

void mouseDragged() {
  ultimaPosicion = mouseX;
}

void keyPressed() {
  if (key == 'r') {
    background(10);
    stroke(0, 255, 0);
    ultimaPosicion = 0;
  }
  if (key == ' ') {
    mapeado = map(0, 0, 600, 0, 255);
    stroke(0, random(170, 255), random(170, 255));
  }
}
