//Ejemplo de construcción de un espiral.
//tallerProcessing
//https://github.com/gcorallo/tallerProcessing

//declaración de variables.
float radioX;
float radioY;
float incX;
float incY;
int centroX;
int centroY;
float xPos;
float yPos;
int pasos;
int vueltas;
void setup() {
  size(400, 400);
  
  //inicialización de variables
  centroX=width/2;
  centroY=height/2;
  radioX=0;
  radioY=0;
  pasos=200;
  vueltas=4;
  incX=1;
  incY=1;
}

void draw() {
  background(0);
  //re-inicialización de los radios.
  radioX=0;
  radioY=0;
  for (int i=0; i<pasos; i++) {
    //cálculo del ángulo
    float ang=radians(i*360*vueltas/pasos);  
    //cálculo de posiciones y dibujo
    xPos=centroX+cos(ang)*radioX;
    yPos=centroY+sin(ang)*radioY;
    ellipse(xPos, yPos, 10, 10);
    
    //incremento del radio
    radioX+=incX;
    radioY+=incY;
  }
}

