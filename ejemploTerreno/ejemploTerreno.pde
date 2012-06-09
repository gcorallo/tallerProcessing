//Ejemplo de dibujo de un terreno con puntos.
//tallerProcessing
//https://github.com/gcorallo/tallerProcessing

int filas;
int columnas;
float iSum;
float jSum;
float iInc;
float jInc;
void setup(){
  size(450,450,P3D);
  filas=80;
  columnas=60;
  iInc=0.2;
  jInc=0.2;
  
  stroke(255);
}

void draw(){
  background(0);
  
  translate(40,200,-200);
  rotate(PI/3,1,0,0);
  jSum=0;
  for(int i=0;i<filas;i++){
    iSum=0;
    for(int j=0;j<columnas;j++){
      //cálculo de altura para cada posición.
      float altura=sin(iSum)*sin(jSum)*20;
          
      //detereminación de colores (depende de i y j)    
      int rojo=(int)map(i,0,filas,0,255);
      int verde=(int)map(j,0,columnas,0,255);
      int azul=50;
      stroke(rojo,verde,azul);
      //dibujo cada punto.
      point(i*5,j*5,altura);
      iSum+=iInc;
    }
    jSum+=jInc;
    
  
  }
  
}
