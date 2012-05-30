//Ejemplo de grids(grillas).
//tallerProcessing
//https://github.com/gcorallo/tallerProcessing
int modo;
int filas, columnas;
int dx, dy;
void setup() {
  size(800, 450);  
  smooth();

  modo=1;//1:cruces,2:lineas,3:elipses.(elegir con el teclado:1,2 o 3)
  filas=10;
  columnas=20;
  dx=width/columnas;
  dy=height/filas;
  background(0);
  stroke(255, 200);
  noFill();
}


void draw() {
  background(0);
  for (int i=0;i<filas;i++) {
    for (int j=0;j<columnas;j++) {
      if (modo==1) {
        line(dx*j-5+dx/2, dy*i+dy/2, dx*j+5+dx/2, dy*i+dy/2);
        line(dx*j+dx/2, dy*i-5+dy/2, dx*j+dx/2, dy*i+5+dy/2);
      }
      else if (modo==2) {
        if (i==0) {
          line(dx*j, 0, dx*j, height);
        }
        if (j==0) {
          line(0, dy*i, width, dy*i);
        }
      }
      else if (modo==3) {
        ellipse(dx*j+dx/2, dy*i+dy/2, 5, 5);
      }
    }
  }
}


void keyPressed() {
  if (key=='1') {
    modo=1;//cruces
  }
  else if (key=='2') {
    modo=2;//lineas
  }
  else if (key=='3') {
    modo=3;//elipses
  }
}

