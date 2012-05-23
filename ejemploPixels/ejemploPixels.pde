void setup() {
  size(800, 450);
  background(0); 
  loadPixels();
  /*
  for(int i=0;i<width;i++){
   for(int j=0;j<height;j++){
   pixels[j*width+i]=color(i,j,50);
   }
   
   } 
   */
  for (int i=0;i<pixels.length;i++) {
    float rojo=map(i, 0, pixels.length, 0, 255);

    pixels[i]=color(rojo, 0, 150);
  }  


  updatePixels();
}


void draw() {
}

