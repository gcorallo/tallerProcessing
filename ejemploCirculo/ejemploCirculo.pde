//Ejemplo de construcción de un círculo.
//tallerProcessing
//https://github.com/gcorallo/tallerProcessing

//declaración de variables.
int radio;
int centroX;
int centroY;
float xPos;
float yPos;
int pasos;
void setup() {
  size(400, 400);
  //inicialización de variables.
  centroX=width/2;
  centroY=height/2;
  radio=100;
  pasos=20;
}

void draw() {
  background(0);
  for (int i=0; i<pasos; i++) {
    //cálculo del ángulo: i multiplicado por el paso en grados.
    float ang=radians(i*360/pasos);  
    //cálculo de posiciones.
    xPos=centroX+cos(ang)*radio;
    yPos=centroY+sin(ang)*radio;
    ellipse(xPos, yPos, 10, 10);
  }
}

