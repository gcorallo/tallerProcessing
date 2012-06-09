//Ejemplo de dibujo en un sistema cartesiano.
//tallerProcessing
//https://github.com/gcorallo/tallerProcessing

void setup(){
  size(800,450);

  stroke(255,100);
}


void draw(){
  background(0);
  //translación y escalado.
  translate(width/2,height/2);
  scale(1,-1);
  //situación de sistema cartesiano.
  
  //dibujo los ejes.
  line(0,-height/2,0,height/2);
  line(-width/2,0,width/2,0);
  
  //dibujo.
  rect(100,50,10,10);
  rect(120,60,10,10);
  rect(140,70,10,10);
}
