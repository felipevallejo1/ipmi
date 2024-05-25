PImage chanchito1, chanchito2, chanchito3;
PImage chanchito4;
int posX, posY;
PFont fuenteChanchito;
int pantalla;
float d1;
int r1;
boolean reiniciar;
float escaladoTamaño = 10; // 
float escaladoValor = 0.1; // 


void setup() {
  size(640, 480);
  chanchito1 = loadImage("chanchito1.jpg");
  chanchito2 = loadImage("chanchito2.jpg");
  chanchito3 = loadImage("chanchito3.jpg");
  chanchito4 = loadImage("chanchito4.jpg");
  fuenteChanchito = loadFont("AgencyFB-Bold-48.vlw");
  textFont(fuenteChanchito);
  stroke(250);
  strokeWeight(14);
  textSize(45); 
  posX = 3;
  posY = 3;
  pantalla = 1;
  d1 = dist(mouseX, mouseY, 410, 425);
  r1 = 45 / 2; 
  reiniciar = false;
}

void draw() {
  println(frameCount);
  if(frameCount <=308){
    pantalla = 1;
    if(pantalla ==1){
      image(chanchito1, 0, 0, 640, 480);
      stroke(0);
      strokeWeight(4);
      fill(0, 250, 0);
      textAlign(CENTER);
      text("Había una vez, 3 chanchitos que \n vivian muy felices", posX-150, 240);
      posX = posX + 3;
      if(posX >=470){
        posX = 470;
      }
    } 
  }
  if(frameCount >=309){
    pantalla = 2;
  }
  if(pantalla == 2){
    image(chanchito2, 0, 0, 640, 480);
    stroke(0);
    strokeWeight(14);
    fill(255,250, 250);
    textSize(35);
    textAlign(CENTER);
    text("Hasta que un día \n un feroz lobo los atacó\n obligandolos a huir.", 320, posY -240);
    posY = posY + 3;  
    if(posY >=340){
      posY = 340;
    }
    if(frameCount >=670){
      pantalla = 3;
      
    }
  }
  if(pantalla == 3){
    image(chanchito3, 0, 0, 640, 480);
    textSize(35);
    textAlign(CENTER);
    fill(5, 0, 0);
    text("Para salvarse, los chanchitos \n acudieron a la casa de su hermano, \n ya que al ser de piedra,\n el lobo no podria derribarla soplando.", posX+400, 240);
    posX = posX - 5;
    if(posX <=-70){
      posX = -70;
    }
  }
  if(frameCount >=850) {
    pantalla = 4;
    reiniciar = true;
  }

   if (pantalla == 4) {
    image(chanchito4, 0, 0, 640, 480);
    
    escaladoTamaño += 0.5; 
    escaladoTamaño = min(escaladoTamaño, 35); 
    
    escaladoValor += 0.01; 
    escaladoValor = min(escaladoValor, 1.0); 
    
    pushMatrix();
    translate(width / 2, height / 2); 
    scale(escaladoValor);
    textSize(escaladoTamaño); 
    fill(5, 0, 0);
    text("Finalmente, el lobo se cansó y dejó a los cerditos \n en paz, que de ahí en más pudieron  \n volver a caminar con libertad.", 0, 0);
    popMatrix();
   }
  
     if(frameCount >=970){
    if (reiniciar== true) {
      rectMode(CENTER);
      rect(410, 425, 280, 45);
      fill(255);
   text("Reiniciar presentación", 410, 437);
     if (mousePressed && dist(mouseX, mouseY, 410, 425) < 45 / 2) {
       frameCount = 0;
       pantalla = 1;
        posX = 3;
   posY = 3;
       reiniciar = false;
      }
    
    }
     }
}
