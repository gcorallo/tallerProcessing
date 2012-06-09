//Ejemplo de varios cubos rotando.
//tallerProcessing
//https://github.com/gcorallo/tallerProcessing

int nCubos=100;
//declaración de los arrays de posicións.
int[] xPos=new int[nCubos];
int[] yPos=new int[nCubos];
int[] zPos=new int[nCubos];
float ang;
float inc;
void setup() {
  size(800, 450, P3D);

  //inicialización de los arrays de posición.
  for (int i=0;i<nCubos;i++) {
    xPos[i]=(int)random(-300, 300);
    yPos[i]=(int)random(-300, 300);
    zPos[i]=(int)random(-300, 300);
  }
  //inicialización de variables.
  ang=0;
  inc=PI/300;

  //condiciones visuales iniciales
  background(0);
  fill(200, 100);
  stroke(0, 100);
}


void draw() {
  background(0);
  
  //primero transladamos al centro de la pantalla en x e y.
  //y alejamos en Z.
  translate(width/2, height/2, -500);

  //después se realiza la rotación.
  //rotate(ang,1,0,0);//rotación según el eje X.   
  rotate(ang, 0, 1, 0); //rotación según el eje Y.
  //rotate(ang,0,0,1);//rotación según el eje Z. 
  
  for (int i=0;i<nCubos;i++) {
    pushMatrix();    
    translate(xPos[i], yPos[i], zPos[i]);
    box(50);
    popMatrix();
  }

  ang+=inc;
}

