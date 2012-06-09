//Ejemplo de gradientes de color en 1 y 2dimensiones.
//tallerProcessing
//https://github.com/gcorallo/tallerProcessing

void setup() {
  size(800, 450);
  background(0); 
  loadPixels();
  //en 2 dimensiones

    for (int i=0;i<width;i++) {
    for (int j=0;j<height;j++) {
      //llevamos los valores de i y j a un rango útil.
      float ii=map(i, 0, width, 0, 255); 
      float jj=map(j, 0, height, 0, 255); 
      pixels[j*width+i]=color(ii, jj, 50);
    }
  } 

  /*
  color c=color(255,0,0);
   //en 1 dimensión 
   for (int i=0;i<pixels.length;i++) {
   //llevamos los valores de i a un rango útil.
   float rojo=map(i, 0, pixels.length, 255, 0);
   // pixels[i]=c;
   pixels[i]=color(rojo, 0, 150);
   }  
   */
  updatePixels();
}


void draw() {
}

