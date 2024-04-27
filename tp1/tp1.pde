PImage P;
void setup(){
  
  size(800, 400);
  P = loadImage("fotoauto.jpg");
  background(#7E7E7E);
}



void draw(){
  fill(#363636);
  rect(400, 260, 400, 400);
  fill(106, 106, 106);
  rect(0, 300, 300, 200);
  image(P, 0, 0);
  P.resize(400, 400);
  
  //rueda izquierda
  fill(#AAAAAA);
  ellipse(500, 250, 50, 50);
  fill(#212121);
  
  //rueda derecha
  ellipse(500, 250, 40, 40);
   fill(#AAAAAA);
  ellipse(720, 250, 50, 50);
  fill(#212121);
  ellipse(720, 250, 40, 40);
  
  //base del auto
  fill(0);
  rect(470, 150, 280, 75);
  
  //zona de las ventanas
      strokeWeight(1);
      triangle(550, 150, 660, 120, 748, 150);
      fill(#AAAAAA);
      triangle(550, 150, 660, 120, 748, 150);
      fill(#212121);
      
      strokeWeight(3);
      line(660, 120, 660, 150);
      
  //Luz atrás
       fill(360, 0, 0);
       rect(720, 160, 30, 20);
       fill (#E0E0E0);
       
       ellipse(485, 180, 30, 20);

  
  
 
}
