//Ejemplo de construcción interactiva de polígonos regulares.
//tallerProcessing
//https://github.com/gcorallo/tallerProcessing

int nroVert;
float radio=100;
float centroX;
float centroY;
void setup() {
  size(450, 450);
  centroX=width/2;
  centroY=width/2;
    
   smooth();   
}

void draw() {
  background(0);
  //número de vértices depende la posición en Y del mouse
  nroVert=(int)map(mouseY,0,height,3,10);
  fill(255);
  noStroke();
  
  float angBase=360/nroVert;
  beginShape();
  for (int i=0;i<nroVert;i++) {
    float ang=radians(i*angBase);    
    float xPos=centroX+cos(ang)*radio;
    float yPos=centroY+sin(ang)*radio;
    vertex(xPos, yPos);
  }
  endShape(CLOSE);
  stroke(255,0,0);
  noFill();
  //dibujo de un círculo de referencia.
  ellipse(centroX,centroY,2*radio,2*radio); 
}

