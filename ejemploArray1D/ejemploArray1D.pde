//Declaración e inicialización del Array.
int[] valores= {
  10, 20, 30, 50, 100
};
//Declaración variables.
float diam;
int separacion;
int inicioX;
float escalaY;
float escalaDiam;
boolean modo;

void setup() {
  size(800, 450);  
  smooth();
  //Inicializcióm variables.
  diam=0;
  inicioX=150;
  separacion=width/(valores.length+1);
  escalaY=3; //escala para rectángulos
  escalaDiam=1.3; //escala para elipses
  modo=true; //true: elipses, false: rectángulos.
}
void draw() {
  background(0);
  stroke(255, 100);
  if (modo==true) { 
    line(0, height/2, width, height/2);
  }
  for (int i=0;i<valores.length;i++) {
    stroke(255, 100);
    line(inicioX+i*separacion, 0, inicioX+i*separacion, height);

    if (modo==true) {
      diam=valores[i]*escalaDiam;
      noStroke();
      ellipse(inicioX+i*separacion, height/2, diam, diam);
    }
    else {
      rect(inicioX+i*separacion, height, 50, -valores[i]*escalaY);
    }
  }
}


void keyPressed() {
  if (key=='m') {
    modo = !modo;
  }
}

