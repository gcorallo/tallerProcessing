//Ejemplo de easing para rotación.
//tallerProcessing
//https://github.com/gcorallo/tallerProcessing

//inicialización de variables.
float angY;
float angX;
float easing;
void setup() {
  size(450, 450, P3D);

  //inicialización de variables.
  angY=0;
  angX=0;
  easing=0.1;

  //condiciones visuales iniciales.
  noStroke();
  fill(200, 200);
}



void draw() {
  background(0);
  
  //lights() inicializa la iluminación por defecto.
  lights();
  
  //translación
  translate(height/2, width/2, -300);
  
  //cálculo del ángulo.
  angY+=(mouseX/50-angY)*easing;
  angX+=(mouseY/50-angX)*easing;
  //rotación.
  rotateY(angY);
  rotateX(angX);
  
  //dibujo.
  box(100, 100, 400);
  box(100, 400, 100);
  box(400, 100, 100);
}

