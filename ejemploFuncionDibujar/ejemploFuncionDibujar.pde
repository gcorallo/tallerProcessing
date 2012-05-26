boolean activo;
void setup() {
  size(800, 450);
  background(0);
  smooth();
  noStroke();
  
  activo=false;
}



void draw() {
  
  if(activo){//equivalente a usar if(activo==true){
  dibujarFlor(mouseX, mouseY);
  }
  
}


void dibujarFlor(int x, int y) {
   
  for (int i=0;i<10;i++) {
    float dc=random(-20,20);
    fill(200+dc,100,150-dc,200);
    float dx=random(-10, 10);
    float dy=random(-10, 10);
    ellipse(x+dx,y+dy,10,10);
  }
  fill(255,220);
  ellipse(x, y, 10, 10);
  
}

void mousePressed() {
  activo=true;
}
void mouseReleased() {
  activo=false;
}

